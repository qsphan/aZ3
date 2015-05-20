package qs.phan.allsmt.tool;

import qs.phan.allsmt.solver.AllSMTSolver;
import qs.phan.allsmt.solver.BlockingClauseSolver;
import qs.phan.allsmt.solver.DepthFirstSearchSolver;

public class RunAllZ3 {

	public static void main(String[] args) {

		Config conf = new Config();

		for (String a : args) {
			if ("--model".equals(a)) {
				conf.setPrintModel();
			} else if (a.contains(".smt2")) {
				conf.setFileName(a);
			} 
			/*
			else if ("--dfs".equals(a)) {
				conf.setSolver("DepthFirstSearch");
			} 
			//*/
			else if ("--bc".equals(a)) {
				conf.setSolver("BlockingClause");
			} else if ("--rv".equals(a)) {
				conf.includeRelevant();
			} else if ("--help".equals(a)) {
				showHelp();
				return;
			}
		}

		AllSMTSolver solver = null;

		if(conf.getFileName() == null){
			showHelp();
			return;
		}
			
		
		try {
			if (conf.getSolverType().equals("DepthFirstSearch")){
				System.out.println("DepthFirstSearch Solver");
				solver = new DepthFirstSearchSolver(conf.getFileName(),conf.hasRelevant());
			}
			else if (conf.getSolverType().equals("BlockingClause")){
				System.out.println("BlockingClause Solver");
				solver = new BlockingClauseSolver(conf.getFileName(),conf.hasRelevant());
			}

			if(conf.printModel())
				solver.setPrintModel();
			
			long tStart = System.currentTimeMillis();
			solver.count();
			solver.report();
			long tEnd = System.currentTimeMillis();
			System.out.println("Elapsed time is " + (tEnd - tStart) + " ms");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void showHelp(){
		System.out.println();
		System.out.println("aZ3: prototype tool for FMCAD submission\n");
		System.out.println("Usage: java -jar aZ3 [OPTION]... [FILE]...");
		System.out.println("FILE must have .smt2 extension.");
		System.out.println();
		System.out.println("--help		Show this help.");
		System.out.println("--bc		Use BlockingClause solver. Default solver is DepthFirstSearch.");
		System.out.println("--model		Print all models.");
		System.out.println("--rv		Include the relevant variables in the output.");
		System.out.println();
	}
}
