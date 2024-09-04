% % % Data (1missing-im.ttl) % % %

% ex:controlledRisk1 a riskman:ControlledRisk ;
controlledRisk(controlledRisk1).
hasAnalyzedRisk(controlledRisk1, analyzedRisk1).
hasResidualRiskLevel(controlledRisk1, residualRiskLevel1).
isMitigatedBy(controlledRisk1, sda1).

% ex:controlledRisk2 a riskman:ControlledRisk ;
controlledRisk(controlledRisk2).
hasAnalyzedRisk(controlledRisk2, analyzedRisk2).
hasResidualRiskLevel(controlledRisk2, residualRiskLevel2).
isMitigatedBy(controlledRisk2, sda2).

% ex:controlledRisk99 a riskman:ControlledRisk ;
controlledRisk(controlledRisk99).
hasAnalyzedRisk(controlledRisk99, analyzedRisk99).
hasResidualRiskLevel(controlledRisk99, residualRiskLevel99).
isMitigatedBy(controlledRisk99, sda99).

% ex:analyzedRisk1 a riskman:AnalyzedRisk ;
analyzedRisk(analyzedRisk1).
hasDeviceContext(analyzedRisk1, deviceContext1).
hasDomainSpecificHazard(analyzedRisk1, domainSpecificHazard1).
hasHarm(analyzedRisk1, harm1).
hasHazardousSituation(analyzedRisk1, hazardousSituation1).
hasInitialRiskLevel(analyzedRisk1, initialRiskLevel1).

% ex:analyzedRisk2 a riskman:AnalyzedRisk ;
analyzedRisk(analyzedRisk2).
hasDeviceContext(analyzedRisk2, deviceContext2).
hasDomainSpecificHazard(analyzedRisk2, domainSpecificHazard2).
hasHarm(analyzedRisk2, harm2).
hasHazardousSituation(analyzedRisk2, hazardousSituation2).
hasInitialRiskLevel(analyzedRisk2, initialRiskLevel2).

% ex:analyzedRisk99 a riskman:AnalyzedRisk ;
analyzedRisk(analyzedRisk99).
hasDeviceContext(analyzedRisk99, deviceContext99).
hasDomainSpecificHazard(analyzedRisk99, domainSpecificHazard99).
hasHarm(analyzedRisk99, harm99).
hasHazardousSituation(analyzedRisk99, hazardousSituation99).
hasInitialRiskLevel(analyzedRisk99, initialRiskLevel99).

% ex:deviceComponent1 a riskman:DeviceComponent ; (label: Rotary evaporator)
deviceComponent(deviceComponent1).

% ex:deviceComponent2 a riskman:DeviceComponent ; (label: Electrode cable)
deviceComponent(deviceComponent2).

% ex:deviceComponent99 a riskman:DeviceComponent ; (label: Battery)
deviceComponent(deviceComponent99).

% ex:deviceContext1 a riskman:DeviceContext ; (label: Chemical manufacturing)
deviceContext(deviceContext1).

% ex:deviceContext2 a riskman:DeviceContext ; (label: Operating room setting)
deviceContext(deviceContext2).

% ex:deviceContext99 a riskman:DeviceContext ; (label: Emergency medical setting)
deviceContext(deviceContext99).

% ex:deviceFunction1 a riskman:DeviceFunction ; (label: Solvent removal)
deviceFunction(deviceFunction1).

% ex:deviceFunction2 a riskman:DeviceFunction ; (label: Electrosurgery)
deviceFunction(deviceFunction1).

% ex:deviceFunction99 a riskman:DeviceFunction ; (label: Defibrillation)
deviceFunction(deviceFunction99).

% ex:domainSpecificHazard1 a riskman:DomainSpecificHazard ; 
% (label: Rotary evaporator solvent removal chemical hazard)
domainSpecificHazard(domainSpecificHazard1).
hasDeviceComponent(domainSpecificHazard1, deviceComponent1).
hasDeviceFunction(domainSpecificHazard1, deviceFunction1).
hasHazard(domainSpecificHazard1, hazard1).

% ex:domainSpecificHazard2 a riskman:DomainSpecificHazard ;
% (label: Electrode cable electrosurgery hazard)
domainSpecificHazard(domainSpecificHazard2).
hasDeviceComponent(domainSpecificHazard2, deviceComponent2).
hasDeviceFunction(domainSpecificHazard2, deviceFunction2).
hasHazard(domainSpecificHazard2, hazard2).

% ex:domainSpecificHazard99 a riskman:DomainSpecificHazard ;
% (label: Battery-level related defibrillator hazard)
domainSpecificHazard(domainSpecificHazard99).
hasDeviceComponent(domainSpecificHazard99, deviceComponent99).
hasDeviceFunction(domainSpecificHazard99, deviceFunction99).
hasHazard(domainSpecificHazard99, hazard99).

% ex:event1 a riskman:Event ; (label: Incomplete removal of volatile solvent used in manufacturing)
event(event1).

% ex:event2 a riskman:Event ; (label: Electrode cable unintentionally plugged into power line receptacle)
event(event2).

% ex:event99 a riskman:Event ; (label: Defibrillator battery life runs out)
event(event99).

% ex:harm1 a riskman:Harm ; (label: Brain damage)
harm(harm1).

% ex:harm2 a riskman:Harm ; (label: Serious burns)
harm(harm2).

% ex:harm99 a riskman:Harm ; (label: Death)
harm(harm99).

% ex:hazard1 a riskman:Hazard ; (label: Chemical)
hazard(hazard1).

% ex:hazard2 a riskman:Hazard ; (label: Electromagnetic energy)
hazard(hazard2).

% ex:hazard99 a riskman:Hazard ; (label: Functionality)
hazard(hazard99).

% ex:hazardousSituation1 a riskman:HazardousSituation ; (label: Development of gas embolism)
hazardousSituation(hazardousSituation1).
hasPrecedingEvent(hazardousSituation1, event1).

% ex:hazardousSituation2 a riskman:HazardousSituation ; (label: Line voltage appears on electrodes)
hazardousSituation(hazardousSituation2).
hasPrecedingEvent(hazardousSituation2, event2).

% ex:hazardousSituation99 a riskman:HazardousSituation ; (label: Cannot deliver shock when an arrythmia occurs)
hazardousSituation(hazardousSituation99).
hasPrecedingEvent(hazardousSituation99, event99).

% ### Initial Risk Levels ###

% ex:initialRiskLevel1 a riskman:RiskLevel ; (label: Initial Risk Level 1)
riskLevel(initialRiskLevel1).
hasProbability(initialRiskLevel1, p4).
hasSeverity(initialRiskLevel1, s2).

% ex:initialRiskLevel2 a riskman:RiskLevel ; (label: Initial Risk Level 2)
riskLevel(initialRiskLevel2).
hasProbability(initialRiskLevel2, p3).
hasProbability1(initialRiskLevel2, p4).
hasProbability2(initialRiskLevel2, p4).
hasSeverity(initialRiskLevel2, s4).

% ex:initialRiskLevel99 a riskman:RiskLevel ; (label: Initial Risk Level 99)
riskLevel(initialRiskLevel99).
hasProbability(initialRiskLevel99, p5).
hasSeverity(initialRiskLevel99, s3).

% ### Residual Risk Levels ###

% ex:residualRiskLevel1 a riskman:RiskLevel ; (label: Residual Risk Level 1)
riskLevel(residualRiskLevel1).
hasProbability(residualRiskLevel1, p3).
hasSeverity(residualRiskLevel1, s2).

% ex:residualRiskLevel2 a riskman:RiskLevel ; (label: Residual Risk Level 2)
riskLevel(residualRiskLevel2).
hasProbability(residualRiskLevel2, p2).
hasSeverity(residualRiskLevel2, s1).

% ex:residualRiskLevel99 a riskman:RiskLevel ; (label: Residual Risk Level 3)
riskLevel(residualRiskLevel99).
hasProbability(residualRiskLevel99, p2).
hasProbability1(residualRiskLevel99, p3).
hasProbability2(residualRiskLevel99, p4).
hasSeverity(residualRiskLevel99, s3).

% ### SDA ###

% ex:sda1 a riskman:SDA ; (label: Implementation of an automated solvent monitoring system)
sda(sda1).
hasSubSDA(sda1, sda11).
hasSubSDA(sda1, sda12).

% ex:sda11 a riskman:SDA ; (label: Sub SDA11)
sda(sda11).
hasImplementationManifest(sda11, implementationManifest11).

% ex:sda12 a riskman:SDA ; (label: Sub SDA12)
sda(sda12).
hasSubSDA(sda12, sda121).
hasSubSDA(sda12, sda122).

% ex:sda121 a riskman:SDA ; (label: Sub SDA121)
sda(sda121).
hasImplementationManifest(sda121, implementationManifest121).

% ex:sda122 a riskman:SDA ; (label: Sub SDA122)
sda(sda122).
hasImplementationManifest(sda122, implementationManifest122).

% ex:sda2 a riskman:SDA ; (label: Use polarized plugs)
sda(sda2).
hasImplementationManifest(sda2, implementationManifest2).

% ex:sda99 a riskman:SDA ; (label: Indicate low battery level)
sda(sda99).
hasSubSDA(sda99, sda991).
hasSubSDA(sda99, sda992).
hasSafetyAssurance(sda99, safetyAssurance99).

% ex:sda991 a riskman:SDA ; (label: Indicate low battery level) 
sda(sda991).
%% Here is missing ImplManifest!
%hasImplementationManifest(sda991, implementationManifest991).
hasSafetyAssurance(sda991, safetyAssurance991).

% ex:sda992 a riskman:SDA ; (label: Indicate low battery level)
sda(sda992).
hasImplementationManifest(sda992, implementationManifest992).
hasSafetyAssurance(sda992, safetyAssurance992).

% gt definitions
severity(s1).
severity(s2).
severity(s3).
severity(s4).
severity(s5).

probability(p1).
probability(p2).
probability(p3).
probability(p4).
probability(p5).

% Make transitive rule
gt(X,Z) :- gt(X,Y), gt(Y,Z). 
gt(s2, s1).
gt(s3, s2).
gt(s4, s3).
gt(s5, s4).

gt(p2, p1).
gt(p3, p2).
gt(p4, p3).
gt(p5, p4).