% % % Ontology % % %

% ###  https://w3id.org/riskman/ontology#hasDeviceComponent
domainSpecificHazard(X) :- hasDeviceComponent(X, Y).
deviceComponent(Y) :- hasDeviceComponent(X, Y).

% ###  https://w3id.org/riskman/ontology#hasDeviceFunction
domainSpecificHazard(X) :- hasDeviceFunction(X, Y).
deviceFunction(Y) :- hasDeviceFunction(X, Y).

% ###  https://w3id.org/riskman/ontology#hasHazard
domainSpecificHazard(X) :- hasHazard(X, Y).
hazard(Y) :- hasHazard(X, Y).

% ###  https://w3id.org/riskman/ontology#hasRiskLevel
risk(X) :- hasRiskLevel(X, Y).
riskLevel(Y) :- hasRiskLevel(X, Y).

% ###  https://w3id.org/riskman/ontology#hasAnalyzedRisk
controlledRisk(X) :- hasAnalyzedRisk(X, Y).
analyzedRisk(Y) :- hasAnalyzedRisk(X, Y).

% ###  https://w3id.org/riskman/ontology#hasResidualRiskLevel
controlledRisk(X) :- hasResidualRiskLevel(X, Y).
riskLevel(Y) :- hasResidualRiskLevel(X, Y).

% ###  https://w3id.org/riskman/ontology#hasDomainSpecificHazard
analyzedRisk(X) :- hasDomainSpecificHazard(X, Y).
domainSpecificHazard(Y) :- hasDomainSpecificHazard(X, Y).

% ###  https://w3id.org/riskman/ontology#hasInitialRiskLevel
analyzedRisk(X) :- hasInitialRiskLevel(X, Y).
riskLevel(Y) :- hasInitialRiskLevel(X, Y).

% ###  https://w3id.org/riskman/ontology#hasPrecedingEvent
event(X) :- hasPrecedingEvent(X, Y).
event(Y) :- hasPrecedingEvent(X, Y).

% ###  https://w3id.org/riskman/ontology#hasSafetyAssurance
assuranceSDA(X) :- hasSafetyAssurance(X, Y).
safetyAssurance(Y) :- hasSafetyAssurance(X, Y).

% ###  https://w3id.org/riskman/ontology#hasParentHazard
hazard(X) :- hasParentHazard(X, Y).
hazard(Y) :- hasParentHazard(X, Y).

% ###  https://w3id.org/riskman/ontology#isPartOfDeviceComponent
deviceComponent(X) :- isPartOfDeviceComponent(X, Y).
deviceComponent(Y) :- isPartOfDeviceComponent(X, Y).

% ###  https://w3id.org/riskman/ontology#hasHazardousSituation
analyzedRisk(X) :- hasHazardousSituation(X, Y).
hazardousSituation(Y) :- hasHazardousSituation(X, Y).

% ###  https://w3id.org/riskman/ontology#hasDeviceContext
analyzedRisk(X) :- hasDeviceContext(X, Y).
deviceContext(Y) :- hasDeviceContext(X, Y).

% ###  https://w3id.org/riskman/ontology#hasParentSituation
hazardousSituation(X) :- hasParentSituation(X, Y).
hazardousSituation(Y) :- hasParentSituation(X, Y).

% ###  https://w3id.org/riskman/ontology#hasProbability
riskLevel(X) :- hasProbability(X, Y).
probability(Y) :- hasProbability(X, Y).

% ###  https://w3id.org/riskman/ontology#hasProbability1
riskLevel(X) :- hasProbability1(X, Y).
probability(Y) :- hasProbability1(X, Y).

% ###  https://w3id.org/riskman/ontology#hasProbability2
riskLevel(X) :- hasProbability2(X, Y).
probability(Y) :- hasProbability2(X, Y).

% ###  https://w3id.org/riskman/ontology#hasSeverity
riskLevel(X) :- hasSeverity(X, Y).
severity(Y) :- hasSeverity(X, Y).

% ###  https://w3id.org/riskman/ontology#isMitigatedBy
controlledRisk(X) :- isMitigatedBy(X, Y).
sda(Y) :- isMitigatedBy(X, Y).

% ###  https://w3id.org/riskman/ontology#hasSubSDA
sda(X) :- hasSubSDA(X, Y).
sda(Y) :- hasSubSDA(X, Y).

% ###  https://w3id.org/riskman/ontology#hasImplementationManifest
sda(X) :- hasImplementationManifest(X, Y).
implementationManifest(Y) :- hasImplementationManifest(X, Y).

% ###  https://w3id.org/riskman/ontology#hasHarm
risk(X) :- hasHarm(X, Y).
harm(Y) :- hasHarm(X, Y).

% % % DL Axioms % % %

% (1)
analyzedRisk(X) :- hasDeviceContext(X,_), hasDomainSpecificHazard(X,_), 
    hasHarm(X,_), hasHazardousSituation(X,_), hasInitialRiskLevel(X,_).

% (2)
assuranceSDA(X) :- sda(X), hasSafetyAssurance(X,_).

% (3)
assuranceSDAI(X) :- sdaI(X), assuranceSDA(X).

% (4)
controlledRisk(X) :- hasAnalyzedRisk(X,_), hasResidualRiskLevel(X,_),
    isMitigatedBy(X,_).

% (5)
domainSpecificHazard(X) :- causesHarm(X,_).

% (6)
domainSpecificHazard(X) :- hasDeviceComponent(X,_), hasDeviceFunction(X,_),
    hasHazard(X,_).

% (7)
hazardousSituation(X) :- hasEvent(X,_). 

% (8)
risk(X) :- hasHarm(X,_), hasRiskLevel(X,_).

% (9)
riskLevel(X) :- hasProbability(X,_), hasSeverity(X,_).

% (10)
sda(X) :- riskSDA(X).

% (11)
riskSDAI(X) :- riskSDA(X), sdaI(X).

% (12)
sdaI(X) :- sda(X), hasImplementationManifest(X,_).

% (13)
hasHarm(X, Z) :- hasAnalyzedRisk(X, Y), hasHarm(Y, Z).

% (14)
hasRiskLevel(X, Y) :- hasInitialRiskLevel(X, Y).

% (15)
hasRiskLevel(X, Y) :- hasResidualRiskLevel(X, Y). 

% (16.1)
hasParentHazard(X, Z) :- hasParentHazard(X, Y), hasParentHazard(Y, Z).

% (16.2)
hasParentSituation(X, Z) :- hasParentSituation(X, Y), hasParentSituation(Y, Z).

% (16.3)
isPartOfDeviceComponent(X, Z) :- isPartOfDeviceComponent(X, Y), isPartOfDeviceComponent(Y, Z).

% (16.4)
hasPrecedingEvent(X, Z) :- hasPrecedingEvent(X, Y), hasPrecedingEvent(Y, Z).

% % % SHACL constraints % % % 

%:AnalyzedRiskShape (17)
constraint_violated("Every analyzed risk must have exactly one domain specific hazard.", X) :- analyzedRisk(X), #count { Y : hasDomainSpecificHazard(X, Y) } != 1.
constraint_violated("Every analyzed risk must have exactly one harm.", X) :- analyzedRisk(X), #count { Y : hasHarm(X, Y) } != 1.
constraint_violated("Every analyzed risk must have exactly one device context.", X) :- analyzedRisk(X), #count { Y : hasDeviceContext(X, Y) } != 1.
constraint_violated("Every analyzed risk must have exactly one hazardous situation.", X) :- analyzedRisk(X), #count { Y : hasHazardousSituation(X, Y) } != 1.
constraint_violated("Every analyzed risk must have exactly one pre-risk level.", X) :- analyzedRisk(X), #count { Y : hasInitialRiskLevel(X, Y) } != 1.

%:AssuranceSDAShape (18) 
constraint_violated("SubSDAs of an AssuranceSDA must again be AssuranceSDAs.", X) :- assuranceSDA(X), hasSubSDA(X, Y), not assuranceSDA(Y).
constraint_violated("SubSDAs of an AssuranceSDA must again be AssuranceSDAs.", X) :- assuranceSDA(X), #count { Y : hasSafetyAssurance(X, Y) } != 1.

%:ControlledRiskShape (19)
constraint_violated("Every controlled risk must be mitigated by an SDA.", X) :- controlledRisk(X), #count { Y : isMitigatedBy(X, Y) } != 1.
constraint_violated("Every controlled risk must have exactly one analyzed risk.", X) :- controlledRisk(X), #count { Y : hasAnalyzedRisk(X, Y) } != 1.
constraint_violated("Every controlled risk must have exactly one residual risk level", X) :- controlledRisk(X), #count { Y : hasResidualRiskLevel(X, Y) } != 1.

%:DomainSpecificHazardShape (21)
constraint_violated("Domain specific hazard must have exactly one device component", X) :- domainSpecificHazard(X), #count { Y : hasDeviceComponent(X, Y) } != 1.
constraint_violated("Domain specific hazard must have exactly one device function", X) :- domainSpecificHazard(X), #count { Y : hasDeviceFunction(X, Y) } != 1.
constraint_violated("Domain specific hazard must have exactly one hazard", X) :- domainSpecificHazard(X), #count { Y : hasHazard(X, Y) } != 1.

% :RiskLevelShape (22)
constraint_violated("Risk level must have exactly one probability value. In case of specifying all 3 probabilities (P, P1 and P2) check if P=P1xP2.", X) :- riskLevel(X), #count { Y : hasProbability(X, Y) } != 1.
constraint_violated("Risk level must have exactly one severity value.", X) :- riskLevel(X), #count { Y : hasSeverity(X, Y) } != 1.

%:SDAShape (23)
% Recursive rule to find all paths through hasSubSDA
reachable(X, Y) :- hasSubSDA(X, Y).
reachable(X, Z) :- hasSubSDA(X, Y), reachable(Y, Z).
reachable(X, X) :- sda(X), sdaI(X).

% Helper rule to check if an SDAI is reachable
sdaIReachable(X) :- sda(X), reachable(X, Y), sdaI(Y).

% Every SDA needs a final mitigation (SDAI)
constraint_violated("Every SDA needs a final mitigation (which has the Implementation Manifest)", X) :- sda(X), not sdaIReachable(X).

%:NonIncreasingProbabilityShape a sh:NodeShape; (20-1)
% Extract initial probability
initialProbability(CR, P) :- controlledRisk(CR), hasAnalyzedRisk(CR, AR), hasInitialRiskLevel(AR, IRL), hasProbability(IRL, P).

% Extract residual probability
residualProbability(CR, RP) :- controlledRisk(CR), hasResidualRiskLevel(CR, RL), hasProbability(RL, RP).

% Residual probability should not be higher than initial probability
constraint_violated("Residual probability should not be higher than initial probability.", CR) :- initialProbability(CR, IP), residualProbability(CR, RP), gt(RP, IP).

%:NonIncreasingProbability1Shape a sh:NodeShape; (20-2)
% Extract initial probability 1
initialProbability1(CR, P1) :- controlledRisk(CR), hasAnalyzedRisk(CR, AR), hasInitialRiskLevel(AR, IRL), hasProbability1(IRL, P1).

% Extract residual probability 1
residualProbability1(CR, RP1) :- controlledRisk(CR), hasResidualRiskLevel(CR, RL), hasProbability1(RL, RP1).

% Residual probability 1 should not be higher than initial probability 1
constraint_violated("Residual probability 1 should not be higher than initial probability 1.", CR) :- initialProbability1(CR, IP1), residualProbability1(CR, RP1), gt(RP1, IP1).

%:NonIncreasingProbability2Shape a sh:NodeShape; (20-3)
% Extract initial probability 2
initialProbability2(CR, P2) :- controlledRisk(CR), hasAnalyzedRisk(CR, AR), hasInitialRiskLevel(AR, IRL), hasProbability2(IRL, P2).

% Extract residual probability 2
residualProbability2(CR, RP2) :- controlledRisk(CR), hasResidualRiskLevel(CR, RL), hasProbability2(RL, RP2).

% Residual probability 2 should not be higher than initial probability 2
constraint_violated("Residual probability 2 should not be higher than initial probability 2.", CR) :- initialProbability2(CR, IP2), residualProbability2(CR, RP2), gt(RP2, IP2).

%:NonIncreasingSeverityShape a sh:NodeShape; (20-4)
% Extract initial severity
initialSeverity(CR, S) :- controlledRisk(CR), hasAnalyzedRisk(CR, AR), hasInitialRiskLevel(AR, IRL), hasSeverity(IRL, S).

% Extract residual severity
residualSeverity(CR, RS) :- controlledRisk(CR), hasResidualRiskLevel(CR, RL), hasSeverity(RL, RS).

% Residual severity should not be higher than initial severity
constraint_violated("Residual severity should not be higher than initial severity.", CR) :- initialSeverity(CR, IS), residualSeverity(CR, RS), gt(RS, IS).

% % % Output violated constraints % % %
#show constraint_violated/2.






