package qs.phan.allsmt.solver;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Model;
import com.microsoft.z3.Z3Exception;

public class BlockingClauseSolver extends AllSMTSolver
{
	
	public BlockingClauseSolver(String filename, boolean hasRel) throws Z3Exception{
		super(filename, hasRel);
	}

	@Override
	public int count() throws Z3Exception {

		System.gc();

		{
			if(printModel)
				System.out.println("( ");
				
			while (isSAT()) {
				N++;
				Model m = solver.getModel();
				
				// System.out.println(m.toString());

				// create a blocking clause
				BoolExpr block = null;
				
				
				for (int i = 0; i < niv; i++) {
					BoolExpr biti = (BoolExpr) m.evaluate(imp[i], false);
					
					BoolExpr neg = ctx.mkNot(ctx.mkEq(imp[i], biti));
					
					if(block == null)
						block = neg;
					else 
						block = ctx.mkOr(new BoolExpr[] { block, neg });
				}
				
				// add new blocking clause to the formula
				solver.add(block);
				
				if(printModel){
					printModel(m);
				}
			}
			
			if(printModel)
				System.out.println(") ");
			
		}
		return N;
	}
	
	public static void main(String[] args) {
		long tStart = System.currentTimeMillis();
		try {
			BlockingClauseSolver counter = new BlockingClauseSolver("test/QF_LIA/ex.smt2",true);
			counter.setPrintModel();
			counter.count();
			counter.report();
		} catch (Z3Exception e) {
			e.printStackTrace();
		}
		long tEnd = System.currentTimeMillis();
		System.out.println("Elapsed time is: " + (tEnd - tStart) / 1000.0 + " seconds");
	}
}
