package qs.phan.allsmt.tool;

public class Config {
	
	String solver = "DepthFirstSearch";
	String fileName = null;
	boolean printModel = false;
	boolean hasRel = false;
	
	public Config(){
	
	}
	
	public String getFileName(){
		return fileName;
	}
	
	public void setSolver(String s){
		solver = s;
	}
	
	public void setFileName(String path){
		fileName = path;
	}
	
	public String getSolverType(){
		return solver;
	}
	
	public void includeRelevant(){
		hasRel = true;
	}
	
	public boolean hasRelevant(){
		return hasRel;
	}
	
	public boolean printModel(){
		return printModel;
	}
	
	public void setPrintModel(){
		printModel = true;
	}
}
