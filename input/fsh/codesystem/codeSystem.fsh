Alias: $SCT = http://snomed.info/sct
Alias: $LOINC = http://loinc.org

CodeSystem: MasterFacilityListCodesCS
Id: master-facility-list-codes-cs
Title: "Master Facility List (MFL) Codes"
Description: "Codes found in the MFL."
* ^experimental = false
* ^caseSensitive = true



CodeSystem: EncounterServiceTypeCS
Id: encounter-servicetype-cs
Title: "Encounter Service Type"
Description: "Code System for service types for a given encounter"
* ^experimental = false
* ^caseSensitive = true

* #1 "Patient Registration" 
* #2 "ANC Profile"
* #3 "Ultrasound Profile"
* #4 "Delivery Encounter"
* #5 "PNC Encounter"



CodeSystem: ANCAmnioticFluidLevelCS
Id: anc-amniotic-fluid-level-cs
Title: "Amniotic Fluid Level"
Description: "Amniotic Fluid Level"
* ^experimental = false
* ^caseSensitive = true
// * ^url = "http://snomed.info/sct"

* #386661006 "Normal amniotic fluid"
* #125131000119104 "Oligohydramnios"
* #74964007 "Polyhydramnios"


CodeSystem: ANCReasonUltrasoundNotDoneCS
Id: anc-reason-ultrasound-not-done
Title: "Reason Ultrasound Not Done"
Description: "Reason Ultrasound Not Done"
* ^experimental = false
* ^caseSensitive = true
// * ^url = "http://snomed.info/sct"

* #32911000 "Equipment not available"
* #11626002 "Technician unavailable"
* #127015007 "Other specified"

CodeSystem: ANCPlacentaLocationCS
Id: anc-placenta-location
Title: "Placenta Location"
Description: "Placenta Location"
* ^experimental = false
* ^caseSensitive = true
// * ^url = "http://snomed.info/sct"

* #187295000 "Placenta praevia"
* #44976005 "Low-lying placenta"
* #118242006 "Anterior placenta"
* #118243001 "Posterior placenta"
* #249222004 "Right-sided placenta"
* #249221006 "Left-sided placenta"
* #1221031000168108 "Fundal placenta"

