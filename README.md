# aZ3
aZ3 is a Java front end for the SMT solver Z3, which provides the All-SMT functionality. Its algorithms are described in our paper:  

Quoc-Sang Phan and Pasquale Malacaria. "[All-Solution Satisfiability Modulo Theories: applications, algorithms and benchmarks](http://qsphan.github.io/papers/ares15.pdf)". In *Proceedings of the 2015 Tenth International Conference on Availability, Reliability and Security*, ARES ’15, Washington, DC, USA, October 2015. IEEE Computer Society.

### INSTALL
aZ3 is built on top of the SMT solver Z3, which can be built from source following the instructions here: https://github.com/Z3Prover/z3  
Please note that in order to generate the Java APIs, you need to configure Z3 with the --java option to scripts/mk_make.py

Set up the environment variables, for example add the lines in `.bashrc` in a linux machine:  
```
export Z3_HOME=/home/qsp/WIP/z3/build  
export CLASSPATH=$CLASSPATH:${Z3_HOME}/com.microsoft.z3.jar  
export LD_LIBRARY_PATH=${Z3_HOME}:${LD_LIBRARY_PATH}
```
The project can be built either by Eclipse or Apache Ant.
```
ant build
```
Running `java -jar aZ3` without parameters can give you a list of options.
### ALL-SMT Benchmarks
There are two sets of benchmarks under the folder `test`:
  - QF_AUFBV: bit vector benchmarks, created by running the python script genQIF.py
  - QF_LIA: linear arithmetic benchmarks  
  
More details about the benchmarks can be found on our paper mentioned above.
