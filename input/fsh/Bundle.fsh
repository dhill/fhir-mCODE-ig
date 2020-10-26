Profile: MCODEPatientBundle
Parent: Bundle
Id: mcode-patient-bundle
Title: "mCODE Patient Bundle"
Description: "A collection of data for an mCODE cancer patient."

/* TODO update this file to match the description in `mcode-patient-bundle.md`. */
* type = #collection
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry and entry.resource MS
* entry contains
    // These resources are required per Conformance > Supported Profiles.
    cancerPatient 1..1 MS and
    primaryCancerCondition 1..* MS and
    // Other mCODE profiles
    secondaryCancerCondition 0..* MS and
    cancerDiseaseStatus 0..* MS and
    performanceStatus 0..* MS and
    tumorMarker 0..* MS and
    cancerRelatedMedicationRequest 0..* MS and
    cancerRelatedProcedure 0..* MS and
    cancerStage 0..* MS and
    cancerGeneticVariant 0..* MS and
    cancerGenomicsReport 0..* MS and
    geneticSpecimen 0..* MS and
    genomicRegionStudied 0..* MS and
    cancerRelatedComorbidities 0..* MS and
    vitalSigns 0..* MS

* entry[cancerPatient] ^short = "Cancer Patient"
* entry[primaryCancerCondition] ^short = "Primary Cancer Condition"
* entry[secondaryCancerCondition] ^short = "Secondary Cancer Condition(s)"
* entry[cancerDiseaseStatus] ^short = "Cancer Disease Status(es)"
* entry[performanceStatus] ^short = "Performance Status(es) (ECOG or Karnofsky)"
* entry[tumorMarker] ^short = "Tumor Marker Tests"
* entry[cancerRelatedMedicationRequest] ^short = "Cancer-RelatedMedicationRequest(s)"
* entry[cancerRelatedProcedure] ^short = "Cancer-Related Procedure(s) "
* entry[cancerStage] ^short = "Cancer Stage Data"
* entry[cancerGeneticVariant] ^short = "Cancer Genetic Variant(s)"
* entry[cancerGenomicsReport] ^short = "Cancer Genomics Report(s)"
* entry[geneticSpecimen] ^short = "Genetic Specimen(s)"
* entry[genomicRegionStudied] ^short = "Genomic Region(s) Studied"
* entry[cancerRelatedComorbidities] ^short = "Cancer-Related Comorbities"
* entry[vitalSigns] ^short = "Vital Signs"

* entry[cancerPatient] ^definition = "The Cancer Patient whose data is included in the bundle (required element)."
* entry[primaryCancerCondition] ^definition = "The Primary Cancer Condition resource (required element)."
* entry[secondaryCancerCondition] ^definition = "Secondary Cancer Condition(s) if metastases are present."
* entry[cancerDiseaseStatus] ^definition = "Resource(s) representing Cancer Disease Status. Include past assessments if available."
* entry[performanceStatus] ^definition = "Resource(s) representing Performance Status assessments (ECOG or Karnofsky). Include past assessments if available."
* entry[tumorMarker] ^definition = "Resource(s) representing Tumor Marker Tests."
* entry[cancerRelatedMedicationRequest] ^definition = "Cancer-Related Medication Requests, including both active and inactive medications."
* entry[cancerRelatedProcedure] ^definition = "Resource(s) capturing Cancer-Related Procedures."
* entry[cancerStage] ^definition = "Resource(s) representing Cancer Stage Data, including clinical and pathological stage groups, as well as T, N, and M components."
* entry[cancerGeneticVariant] ^definition = "Resource(s) capturing Cancer Genetic Variants"
* entry[cancerGenomicsReport] ^definition = "Resource(s) representing Cancer Genomics Reports"
* entry[geneticSpecimen] ^definition = "Resource(s) representing Genetic Specimens."
* entry[genomicRegionStudied] ^definition = "Resource(s) representing Genomic Regions Studied"
* entry[cancerRelatedComorbidities] ^definition = "Resource(s) capturing Cancer-Related Comorbities."
* entry[vitalSigns] ^definition = "Vital sign data, including blood pressure, height, and weight."

* entry[cancerPatient].resource only CancerPatient
* entry[primaryCancerCondition].resource only PrimaryCancerCondition
* entry[secondaryCancerCondition].resource only SecondaryCancerCondition
* entry[cancerDiseaseStatus].resource only CancerDiseaseStatus
* entry[performanceStatus].resource only PerformanceStatusParent
* entry[tumorMarker].resource only TumorMarker
* entry[cancerRelatedMedicationRequest].resource only CancerRelatedMedicationRequest
* entry[cancerRelatedProcedure].resource only CancerRelatedProcedureParent
* entry[cancerStage].resource only CancerStageParent
* entry[cancerGeneticVariant].resource only CancerGeneticVariant
* entry[cancerGenomicsReport].resource only CancerGenomicsReport
* entry[geneticSpecimen].resource only GeneticSpecimen
* entry[genomicRegionStudied].resource only GenomicRegionStudied
* entry[cancerRelatedComorbidities].resource only CancerRelatedComorbidities
* entry[vitalSigns].resource only VitalSignsDiscriminator


/* Not restricted to mCODE profiles
    smokingStatus 0..* and
    medication 0..* and
    procedure 0..* and
    familyHistory 0..* and
    diagnosticReport 0..* and
    observation 0..* and
    practitioner 0..* and
    organization 0..*
* entry[smokingStatus].resource only USCoreSmokingStatusProfile
* entry[medication].resource only MedicationRequest
* entry[procedure].resource only USCoreProcedureProfile
* entry[familyHistory].resource only FamilyMemberHistory
* entry[diagnosticReport].resource only DiagnosticReport
* entry[observation].resource only
Observation
* entry[practitioner].resource only USCorePractitioner
* entry[organization].resource only Organization
*/


Profile: VitalSignsDiscriminator
Parent: Observation
Id: mcode-vital-signs-discriminator
Title: "Vital Signs Discriminator"
Description: "A minimal profile that serves to discriminate vital signs for the purpose of the mCODE patient bundle."
* ^abstract = true
* category = ObsCat#vital-signs