Alias: $SCT = http://snomed.info/sct
Alias: $LOINC = http://loinc.org


Profile: KsmUltraSoundObservation
Parent: Observation
Id: ksm-ultrasound-observation
Title: "Ultrasound - Kisumu Patient"
Description: "Profile for ANC ultrasound including metadata and findings"

* status 1..1 MS
* category 1..1 MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = http://snomed.info/sct#118245000 "Ultrasound scan"
* subject 1..1 MS
* effective[x] 1..1 MS
* component 7..* MS

// Enable slicing
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

// Ultrasound required
* component contains ultrasoundRequired 1..1
* component[ultrasoundRequired].code = $SCT#103315006 "Ultrasound scan requested"
* component[ultrasoundRequired].valueBoolean MS

// Ultrasound ordered
* component contains ultrasoundOrdered 0..1
* component[ultrasoundOrdered].code = $SCT#3457005 "Diagnostic procedure ordered"
* component[ultrasoundOrdered].valueBoolean MS

// Ultrasound conducted
* component contains ultrasoundConducted 0..1
* component[ultrasoundConducted].code = $SCT#371525003 "Ultrasound scan done"
* component[ultrasoundConducted].valueBoolean MS

// Ultrasound date
* component contains ultrasoundDate 0..1
* component[ultrasoundDate].code = $LOINC#34574-4 "Ultrasound study date"
* component[ultrasoundDate].valueDateTime MS

// Ultrasound reasonNotDone
* component contains reasonNotDone 0..1
* component[reasonNotDone].code = $SCT#183966005 "Procedure not done reason"
* component[reasonNotDone].valueCodeableConcept from ANCReasonUltrasoundNotDoneVS 

// Ultrasound amnioticFluidLevel
* component contains amnioticFluidLevel 0..1
* component[amnioticFluidLevel].code = $LOINC#11882-8 "Amniotic fluid volume"
* component[amnioticFluidLevel].valueCodeableConcept from ANCAmnioticFluidLevelVS 

// Ultrasound placentaLocation
* component contains placentaLocation 0..1
* component[placentaLocation].code = $LOINC#11876-0 "Placenta location"
* component[placentaLocation].valueCodeableConcept from ANCPlacentaLocationVS 



Instance: Example-KsmUltraSoundObservation
InstanceOf: KsmUltraSoundObservation
Title: "Example ANC Ultrasound Observation"
Description: "A sample ANC ultrasound observation for a pregnant woman in Kisumu."
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging
* code = $SCT#118245000 "Ultrasound scan"
* subject.reference = "Patient/1234"
* effectiveDateTime = "2025-06-30T10:30:00+03:00"

// Ultrasound required
* component[ultrasoundRequired].code = $SCT#103315006 "Ultrasound scan requested"
* component[ultrasoundRequired].valueBoolean = true

// Ultrasound ordered
* component[ultrasoundOrdered].code = $SCT#3457005 "Diagnostic procedure ordered"
* component[ultrasoundOrdered].valueBoolean = true

// Ultrasound conducted
* component[ultrasoundConducted].code = $SCT#371525003 "Ultrasound scan done"
* component[ultrasoundConducted].valueBoolean = true

// Ultrasound date
* component[ultrasoundDate].code = $LOINC#34574-4 "Ultrasound study date"
* component[ultrasoundDate].valueDateTime = "2025-06-29T14:15:00+03:00"

// Reason ultrasound not done
* component[reasonNotDone].code = $SCT#183966005 "Procedure not done reason"
* component[reasonNotDone].valueCodeableConcept = ANCReasonUltrasoundNotDoneCS#11626002 "Equipment not available"

// Amniotic fluid level
* component[amnioticFluidLevel].code = $LOINC#11882-8 "Amniotic fluid volume"
* component[amnioticFluidLevel].valueCodeableConcept = ANCAmnioticFluidLevelCS#386661006 "Normal amniotic fluid"

// Placenta location
* component[placentaLocation].code = $LOINC#11876-0 "Placenta location"
* component[placentaLocation].valueCodeableConcept = ANCPlacentaLocationCS#187295000 "Anterior placenta"