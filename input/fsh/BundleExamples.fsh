Instance: example1-mcode-patient-bundle
InstanceOf: MCODEPatientBundle
Description: "Extended example 1 as a mCODE Patient Bundle"
* id = "example1-mcode-patient-bundle"

// Named slices, required
* entry[cancerPatient].resource = example1-mcode-cancer-patient
* entry[cancerPatient].fullUrl = "http://example.org/fhir/Patient/example1-mcode-cancer-patient"
* entry[primaryCancerCondition].resource = example1-mcode-primary-cancer-condition
* entry[primaryCancerCondition].fullUrl = "http://example.org/fhir/Condition/example1-mcode-primary-cancer-condition"
// Other slices
* entry[cancerDiseaseStatus].resource = example1-mcode-cancer-disease-status
* entry[cancerDiseaseStatus].fullUrl = "http://example.org/fhir/Observation/example1-mcode-cancer-disease-status"
* entry[cancerGeneticVariant].resource = example1-mcode-cancer-genetic-variant
* entry[cancerGeneticVariant].fullUrl = "http://example.org/fhir/Observation/example1-mcode-cancer-genetic-variant"
* entry[cancerGenomicsReport].resource = example1-mcode-cancer-genomics-report
* entry[cancerGenomicsReport].fullUrl = "http://example.org/fhir/DiagnosticReport/example1-mcode-cancer-genomics-report"
* entry[cancerRelatedProcedure][0].resource = example1-mcode-cancer-related-surgical-procedure-mastectomy
* entry[cancerRelatedProcedure][0].fullUrl = "http://example.org/fhir/Procedure/example1-mcode-cancer-related-surgical-procedure-mastectomy"
* entry[cancerRelatedProcedure][1].resource = example1-mcode-cancer-related-radiation-procedure
* entry[cancerRelatedProcedure][1].fullUrl = "http://example.org/fhir/Procedure/example1-mcode-cancer-related-radiation-procedure"
* entry[cancerStage][0].resource = example1-mcode-tnm-clinical-stage-group
* entry[cancerStage][0].fullUrl = "http://example.org/fhir/Observation/example1-mcode-tnm-clinical-stage-group"
* entry[cancerStage][1].resource = example1-mcode-tnm-primary-tumor-category
* entry[cancerStage][1].fullUrl = "http://example.org/fhir/Observation/example1-mcode-tnm-primary-tumor-category"
* entry[cancerStage][2].resource = example1-mcode-tnm-clinical-regional-nodes-category
* entry[cancerStage][2].fullUrl = "http://example.org/fhir/Observation/example1-mcode-tnm-clinical-regional-nodes-category"
* entry[cancerStage][3].resource = example1-mcode-tnm-clinical-distant-metastases-category
* entry[cancerStage][3].fullUrl = "http://example.org/fhir/Observation/example1-mcode-tnm-clinical-distant-metastases-category"
* entry[geneticSpecimen].resource = example1-mcode-genetic-specimen
* entry[geneticSpecimen].fullUrl = "http://example.org/fhir/Specimen/example1-mcode-genetic-specimen"
* entry[genomicRegionStudied].resource = example1-mcode-genomic-region-studied
* entry[genomicRegionStudied].fullUrl = "http://example.org/fhir/Observation/example1-mcode-genomic-region-studied"
* entry[performanceStatus].resource = example1-mcode-ecog-performance-status
* entry[performanceStatus].fullUrl = "http://example.org/fhir/Observation/example1-mcode-ecog-performance-status"
* entry[tumorMarker][0].resource = example1-mcode-tumor-marker-er
* entry[tumorMarker][0].fullUrl = "http://example.org/fhir/Observation/example1-mcode-tumor-marker-er"
* entry[tumorMarker][1].resource = example1-mcode-tumor-marker-pr
* entry[tumorMarker][1].fullUrl = "http://example.org/fhir/Observation/example1-mcode-tumor-marker-pr"
* entry[tumorMarker][2].resource = example1-mcode-tumor-marker-her2
* entry[tumorMarker][2].fullUrl = "http://example.org/fhir/Observation/example1-mcode-tumor-marker-her2"
* entry[tumorMarker][3].resource = example1-mcode-tumor-marker-oncotype-dx
* entry[tumorMarker][3].fullUrl = "http://example.org/fhir/Observation/example1-mcode-tumor-marker-oncotype-dx"
* entry[cancerRelatedMedicationRequest][0].resource = example1-mcode-cancer-related-medication-chemo-doxorubicin
* entry[cancerRelatedMedicationRequest][0].fullUrl = "http://example.org/fhir/MedicationRequest/example1-mcode-cancer-related-medication-chemo-doxorubicin"
* entry[cancerRelatedMedicationRequest][1].resource = example1-mcode-cancer-related-medication-chemo-cyclophosphamide
* entry[cancerRelatedMedicationRequest][1].fullUrl = "http://example.org/fhir/MedicationRequest/example1-mcode-cancer-related-medication-chemo-cyclophosphamide"
* entry[cancerRelatedMedicationRequest][2].resource = example1-mcode-cancer-related-medication-chemo-paclitaxel
* entry[cancerRelatedMedicationRequest][2].fullUrl = "http://example.org/fhir/MedicationRequest/example1-mcode-cancer-related-medication-chemo-paclitaxel"
* entry[cancerRelatedMedicationRequest][3].resource = example1-mcode-cancer-related-medication-anastrozole
* entry[cancerRelatedMedicationRequest][3].fullUrl = "http://example.org/fhir/MedicationRequest/example1-mcode-cancer-related-medication-anastrozole"

/*
// Will be included once we merge in the experimental profile
example1-specimen-tumor

// Comorbid conditions - waiting on decision on how these will be profiled
example1-us-core-condition-anxiety
example1-mcode-comorbid-condition-depression
example1-mcode-comorbid-condition-hypertension

*/

// Non-mCODE-conforming resources ------------------------------------------------
/*
* entry[0].resource = example1-us-core-smoking-status
* entry[1].resource = example1-us-core-procedure-biopsy
* entry[2].resource = example1-us-core-procedure-mammogram
* entry[3].resource = example1-family-member-history-aunt
* entry[4].resource = example1-family-member-history-sister
* entry[5].resource = example1-family-member-history-uncle
* entry[6].resource = example1-diagnosticreport-pathology
* entry[7].resource = example1-observation-smoking-history
* entry[8].resource = example1-observation-tumor-invasion-negative
* entry[9].resource = example1-observation-tumor-negative-margins
* entry[10].resource = example1-observation-tumor-sentinel-nodes
* entry[11].resource = example1-observation-tumor-size
* entry[12].resource = example1-observation-tumor-dcis
* entry[13].resource = example1-practitioner1-mcode
* entry[14].resource = example1-practitioner2-mcode
* entry[15].resource = example1-organization1-mcode
*/