import os
import glob
import time

cur_dir = os.getcwd()
# print cur_dir

array_source = glob.glob(cur_dir + "/QF_LIA/*.smt2")

def run(cmd):
	start_time = int(round(time.time() * 1000))
	os.system(cmd)
	end_time = int(round(time.time() * 1000))
	elapsed_time = end_time - start_time

	print "Elapsed time of MathSAT is ", 
	print elapsed_time
	print "*************"


for source in array_source:
	print "*********************************"
	print source
	cmd = "./sharpSMT " + source

	run(cmd)

	cmd = "java -jar aZ3.jar " + source

	os.system(cmd)

	print "*************"

	cmd = "java -jar aZ3.jar --bc " + source

	os.system(cmd)

	print "*********************************"
	
	
