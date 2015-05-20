package qs.phan.allsmt.solver;

import java.util.HashMap;

import qs.phan.allsmt.parser.SMTLIB2Parser;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.Model;
import com.microsoft.z3.Solver;
import com.microsoft.z3.Status;
import com.microsoft.z3.Z3Exception;

public abstract class AllSMTSolver {

	protected int niv = 0; // the number of important variables
	protected int nrv = 0; // the number of relevant variables
	protected BoolExpr[] imp = null; // all important variables
	protected Expr[] rel = null; // all relevant variables
	protected Context ctx = null;
	protected Solver solver = null;
	protected int N = 0; // the number of model
	protected boolean hasRel = false;
	
	protected boolean printModel = false;

	public AllSMTSolver(String filename, boolean hr) throws Z3Exception {
		HashMap<String, String> cfg = new HashMap<String, String>();
		cfg.put("model", "true");

		
		ctx = new Context(cfg);
		
		hasRel = hr;
		BoolExpr formula = parseSMTLIB2File(filename);
		
		solver = ctx.MkSolver();
		solver.Assert(formula);
	}
	
	public void setPrintModel(){
		printModel = true;
	}
	
	protected BoolExpr parseSMTLIB2File(String filename) throws Z3Exception{
		SMTLIB2Parser parser = new SMTLIB2Parser(ctx, hasRel);
		BoolExpr formula = parser.parse(filename);
		// parser.printVariables();
		niv = parser.numberOfImportantVariables();
		nrv = parser.numberOfRelevantVariables();
		imp = parser.getImportantVariables();
		rel = parser.getRelevantVariables();
		return formula;
	}
	
	public abstract int count() throws Z3Exception;
	
	protected void printLiteral(Model m, Expr e) throws Z3Exception{
		Expr value = m.Evaluate(e, false);
		System.out.print(" (" + e.toString() + " ");
		System.out.print(value.toString() + " ) ");
	}
	
	public void printModel(Model m) throws Z3Exception{
		System.out.print(" ( ");
		if(hasRel && nrv > 0){
			for(Expr e: rel)
				printLiteral(m,e);
		}
		for(BoolExpr be: imp)
			printLiteral(m,be);
		System.out.println(" )\n");
	}
	
	public int numberOfModels(){
		return N;
	}
	
	protected boolean isSAT() throws Z3Exception{
		return solver.Check() == Status.SATISFIABLE;
	}
	
	public void report(){
		System.out.println("\nThere are " + N + " models");
		// System.out.println("Maximum leakage is " + Math.log(N) / Math.log(2) + " bits");
	}
	
}
