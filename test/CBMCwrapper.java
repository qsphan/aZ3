import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class CBMCwrapper {

	public static final int INT_SIZE = 32;

	public static void wrapSMTLib2(String path) throws IOException {
		BufferedReader br = new BufferedReader(new FileReader(path));
		try {
			StringBuilder sb = new StringBuilder();
			String line = br.readLine();

			int maxFrame = 0;
			String finalOutput = "";

			int start = -1;

			while (line != null) {

				if (line.contains("(get-value") || line.contains("(check-sat)")) {
					line = br.readLine();
					continue;
				}

				// Output must be named "Output", the final variable will
				// have the form |c::main::1::Output!0@1#5|

				start = line.indexOf("|c::main::1::Output");
				if (start >= 0) {
					int start1 = line.indexOf('#', start + 1);
					int end = line.indexOf('|', start + 1);
					int frame = Integer.parseInt(line
							.substring(start1 + 1, end));
					if (frame > maxFrame) {
						maxFrame = frame;
						finalOutput = line.substring(start, end + 1);
					}
				}

				sb.append(line);
				sb.append(System.lineSeparator());
				line = br.readLine();
			}

			System.out.println("Output at final frame is: " + finalOutput);

			sb.append("\n");
			String declare = "";
			for (int i = 0; i < INT_SIZE; i++) {
				declare = "(declare-fun p" + i + " () Bool)\n";
				sb.append(declare);
			}

			sb.append("\n");
			String assgn = "";
			for (int i = 0; i < INT_SIZE; i++) {
				assgn = "(assert (= (= #b1 ((_ extract " + i + " " + i + ") "
						+ finalOutput + ")) p" + i + "))\n";
				sb.append(assgn);
			}

			//*
			String allsat = "\n\n(check-allsat (p0";
			// add important bits
			for (int i = 1; i < INT_SIZE; i++) {
				allsat += " p" + i;
			}
			allsat += "))";
			sb.append(allsat);
			//*/
			
			// sb.append("\n(check-sat)");

			System.out.println(sb.toString());

			BufferedWriter writer = new BufferedWriter(new FileWriter(path));
			writer.append(sb);
			writer.close();

			// String everything = sb.toString();
		} finally {
			br.close();
		}
	}

	public static void main(String[] args) {

		try {
			// wrapSMTLib2("/homes/qsp30/WIP/allsmt-qif/test/sanity.smt2");
			wrapSMTLib2(args[0]);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
