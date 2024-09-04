# riskman-validation-asp
Single ASP Program incorporating riskman ontology along with SHACL constraints.

This version includes a single program riskman-asp.lp which incorporates actual riskman ontology with SHACL constraints. Additionally files test0.lp, test1.lp and test2.lp are provided as test cases, representing data. These files are sets of ASP facts obtained by translation from RDF ABoxes.

## Setup
### Prerequisites
1. Having Git Bash or a simple command line.
2. Alternatively, easier to use VS Code terminal with installed extension supporting ASP language.
3. Having clingo (min v. 5.4.0).

### Launch
1. Open command line or VS Code terminal.
2. Run "compute all answer sets" in VS Code or call a script in cmd:

Format:
```
clingo <ONTOLOGY_FILE.lp> <DATA_FILE.lp> 0
```
(0 indicates a configuration to compute all answer sets)
<br><br>Example:
```
c:/Users/vlad/.vscode/extensions/.../clingo_win.exe "c:/.../riskman/riskman-asp.lp" "c:/.../riskman/test1.lp" 0
```
Output:
```
clingo version 5.4.0
Reading from ...VSCode Projects\riskman\riskman-asp.lp ...

Solving...
Answer: 1
constraint_violated("Every SDA needs a final mitigation (which has the Implementation Manifest)",sda991)
SATISFIABLE

Models       : 1
Calls        : 1
Time         : 0.017s (Solving: 0.00s 1st Model: 0.00s Unsat: 0.00s)
CPU Time     : 0.000s
```
### Results Overview
&emsp;&emsp;Both tests show SATISFIABLE result and provide a set of violated constraints as an output matching the same results as 
from riskman-validation-pipeline (test-cases 0 and 1).
For instance, for test-case test1.lp we have a violation of the constraint that every sda should have an implementation manifest. 


