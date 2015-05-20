package qs.phan.allsmt.parser;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Hashtable;

import com.microsoft.z3.BoolExpr;
import com.microsoft.z3.BoolSort;
import com.microsoft.z3.Context;
import com.microsoft.z3.Expr;
import com.microsoft.z3.IntSort;
import com.microsoft.z3.RealSort;
import com.microsoft.z3.Sort;
import com.microsoft.z3.Z3Exception;

public class SMTLIB2Parser {
	
	protected Context ctx = null;
	
	protected int niv = 0; // the number of important variables
	protected BoolExpr[] imp = null; // all important variables
	
	boolean hasRel = false; // has relevant variables ?
	
	protected int nrv = 0; // the number of relevant variables
	protected Expr[] rel = null;     // all relevant variables
	
	private Hashtable<String, String> decls = null; // declarations, key is the symbol
	
	protected static BoolSort BOOLSORT;
	protected static IntSort INTSORT;
	protected static RealSort REALSORT;
	
	public SMTLIB2Parser(Context c, Boolean hr)throws Z3Exception{
		ctx = c;
		hasRel = hr;
		if(hasRel){
			decls = new Hashtable<String, String>();
			BOOLSORT = ctx.BoolSort();
			INTSORT = ctx.IntSort();
			REALSORT = ctx.RealSort();
		}
	}
	
	protected void parseDeclaration(String line) throws Z3Exception{
		String[] vars = line.replaceAll("^[\\s()]+|[\\s()]+$", "").split("[\\s()]+");
		// example of declaration: (declare-fun x0 () Int)
		// vars[0] = declare-fun, vars[1] = x0, vars[2] = Int
		decls.put(vars[1], vars[2]);
	}
	
	protected void parseImportantVars(String line) throws Z3Exception{
		// obtain all important variable
		String[] vars = line.replaceAll("^[\\s()]+|[\\s()]+$", "").split("[\\s()]+");
		niv = vars.length - 1; // the first element is check-allsat
		imp = new BoolExpr[niv];
		for (int i = 0; i < niv; i++){
			imp[i] = (BoolExpr) ctx.MkConst(ctx.MkSymbol(vars[i+1]),
					ctx.BoolSort());
		}
	}
	
	public int numberOfRelevantVariables(){
		return nrv;
	}
	
	public int numberOfImportantVariables(){
		return niv;
	}
	
	public Expr[] getRelevantVariables(){
		return rel;
	}
	
	public BoolExpr[] getImportantVariables(){
		return imp;
	}
	
	protected Sort stringToSort(String str){
		Sort s = null;
		switch(str){
		case "Bool":
			s = BOOLSORT;
			break;
		case "Int":
			s = INTSORT;
			break;
		case "Real":
			s = REALSORT;
			break;
		default:
			System.out.println("Unsupported Sort");
			assert false;
		}
		return s;
	}
	
	public void printVariables(){
		System.out.print("Important variables are: ");
		for(BoolExpr be: imp)
			System.out.print(be.toString() + " ");
		System.out.print("\nRelevant variables are: ");
		for(Expr e: rel)
			System.out.print(e.toString() + " ");
		System.out.println();
	}
	
	public BoolExpr parse(String filename) throws Z3Exception{
		if(hasRel)
			return parseImportantAndRelevant(filename);
		else
			return parseImportant(filename);
	}
	
	protected void parseRelevantVars(String line) throws Z3Exception{
		// obtain all important variable
		String[] vars = line.replaceAll("^[\\s()]+|[\\s()]+$", "").split("[\\s()]+");
		nrv = vars.length - 1; // the first element is allsat-relevant
		rel = new Expr[nrv];
	
		for (int i = 0; i < nrv; i++){
			String var = vars[i+1];
			Sort s = stringToSort(decls.get(var));
			rel[i] = ctx.MkConst(ctx.MkSymbol(var),s);
		}
	}
	
	protected BoolExpr parseImportant(String filename) throws Z3Exception{
		BoolExpr formula = null;
		try {
			BufferedReader br;
			br = new BufferedReader(new FileReader(filename));
			StringBuilder sb = new StringBuilder();
			String line = br.readLine();

			while (line != null) {
				
				if (line.contains("(check-allsat")) {
					parseImportantVars(line);
					sb.append(System.lineSeparator());
					sb.append("(check-sat)");
					line = br.readLine();
					continue;
				}

				sb.append(line);
				sb.append(System.lineSeparator());
				line = br.readLine();
			}
			br.close();
				
			formula = ctx.ParseSMTLIB2String(sb.toString(), null, null, null, null);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return formula;
	}
	
	protected BoolExpr parseImportantAndRelevant(String filename) throws Z3Exception{
		BoolExpr formula = null;
		try {
			BufferedReader br;
			br = new BufferedReader(new FileReader(filename));
			StringBuilder sb = new StringBuilder();
			String line = br.readLine();

			while (line != null) {

				int index = line.trim().indexOf(';');
				if (index == 0){
					line = br.readLine();
					continue; 
				}
				
				if (line.contains("declare-fun") || line.contains("define-fun")) {
					parseDeclaration(line);
					sb.append(line);
					sb.append(System.lineSeparator());
					line = br.readLine();
					continue;
				}
				
				if (line.contains("(check-allsat")) {
					parseImportantVars(line);
					sb.append(System.lineSeparator());
					sb.append("(check-sat)");
					line = br.readLine();
					continue;
				}
				
				if (line.contains("(allsat-relevant")) {
					parseRelevantVars(line);
					line = br.readLine();
					continue;
				}

				sb.append(line);
				sb.append(System.lineSeparator());
				line = br.readLine();
			}
			br.close();
				
			// System.out.println(sb.toString());
			formula = ctx.ParseSMTLIB2String(sb.toString(), null, null, null, null);
			// System.out.println(formula.toString());
			
			if(hasRel && nrv == 0)
				assert false;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return formula;
	}
	
	
}
