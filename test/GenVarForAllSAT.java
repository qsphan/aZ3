import java.util.ArrayList;

/**
 *
 * @author Quoc-Sang Phan <sang.phan@sv.cmu.edu>
 *
 */
public class GenVarForAllSAT {

	static int BITLENGTH = 32;
	
	public static void main(String[] args){
		StringBuilder sb = new StringBuilder();
		if(args.length <= 0){
			return;
		}
		ArrayList<String> listOfVars = new ArrayList<String>();
		for(int i = 0; i < args.length; ++i){
			String var = args[i];
			for(int j = 0; j < BITLENGTH; ++j){
				String bitj = var + "b" + j;
				listOfVars.add(bitj);
				String extract = String.
						format("(assert (= (= #b1 ((_ extract %d %d) %s)) %s))\n", j,j,var,bitj);
				sb.append("\n(declare-fun " + bitj + " () Bool)\n");
				sb.append(extract);
			}
		}
		sb.append("\n(check-allsat ( ");
		listOfVars.forEach(var ->{
			sb.append(var + " ");
		});
		sb.append("))");
		System.out.println(sb.toString());
	}
}
