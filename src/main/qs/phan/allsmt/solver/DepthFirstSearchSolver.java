package qs.phan.allsmt.solver;

import java.util.Stack;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Model;
import com.microsoft.z3.Z3Exception;

public class DepthFirstSearchSolver extends AllSMTSolver {

	protected int depth = 0; // depth of the DFS
	protected Stack<Integer> pta = null; // partial truth assignment
	protected boolean finish = false;
	
	protected static final int POSITIVE = 1;
	protected static final int NEGATIVE = 0;
	
	protected int last = POSITIVE; // this is a dummy value
	protected boolean backtrack = false;
	
	protected BoolExpr TRUE = null;
	protected BoolExpr FALSE = null;
		
	public DepthFirstSearchSolver(String filename,boolean hasRel) throws Z3Exception {
		super(filename, hasRel);
		pta = new Stack<Integer>();
		TRUE = ctx.MkTrue();
		FALSE = ctx.MkFalse();
	}
	
	protected void goNext() throws Z3Exception{
		BoolExpr asst = null;
		solver.Push();
		if(backtrack){ // go negative
			pta.push(NEGATIVE);
			backtrack = false;
			asst = ctx.MkEq(imp[depth], FALSE);		
		}
		else // go positive
		{
			pta.push(POSITIVE);
			asst = ctx.MkEq(imp[depth], TRUE);
		}
		depth++;
		solver.Assert(asst);
	}

	@Override
	public int count() throws Z3Exception{
		
		if(!isSAT()) return 0;
		
		if(printModel)
			System.out.println("( ");
		
		while(finish == false){
			goNext();
			if(isSAT()){
				if(depth == niv){ // all important variable are assigned
					N++;
					
					if(printModel){ 
						Model m = solver.Model();
						printModel(m);
					}
					
					backtrack();
				}
				// else: continue to search, do nothing
			}
			else {
				backtrack();
			}
		}
		
		if(printModel)
			System.out.println(") ");
		
		return N;
	}
	
	public int numberOfModels(){
		return N;
	}
	
	protected void backtrack() throws Z3Exception {
		// if the last node is positive, this means we still need to explore the negative
		// if the last node is negative, we can pop also the parent literal, since the branch is fully explored.
		last = NEGATIVE; // last node, NEGATIVE is just a dummy value			 
		while (depth > 0 && last == NEGATIVE){
			last = pta.pop();
			solver.Pop();
			depth--;
		}
		if (depth <= 0 && last == NEGATIVE)
			finish = true;
		backtrack = true;
	}
	
	protected void dumpStack(){
		Integer[] a = new Integer[niv];
		a = pta.toArray(a);
		System.out.print("( ");
		for(int i = 0; i < niv; i++)
			System.out.print("(" + imp[i].toString() + " " + (a[i] == POSITIVE? "true": "false") + ")");
		System.out.println(") ");
	}
	
	public static void main(String[] args){
		long tStart = System.currentTimeMillis();
		try {
			DepthFirstSearchSolver counter = new DepthFirstSearchSolver("test/src_bmc/vve.smt2",true);
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
