Profile:  CancerRelatedMedicationRequest
Parent:   USCoreMedicationRequest
Id: mcode-cancer-related-medication-request
Title:    "Cancer-Related Medication Request Profile"
Description:  "A record of a medication prescription or consumption associated with cancer treatment. The medication may reported by the prescriber, prescribing organization, or patient. It does not have to be directly observed."
* insert MedicationResourcesRS
* requester only Reference(USCorePractitioner or USCoreOrganization or CancerPatient)
* extension contains NormalizationBasis named normalizationBasis 0..1


Profile:  CancerRelatedMedicationAdministration
Parent:   MedicationAdministration
Id: mcode-cancer-related-medication-administration
Title:    "Cancer-Related Medication Administration Profile"
Description:    "An episode of medication administration for a patient whose condition is related to a primary or secondary cancer condition. In the context of chemotherapy drugs, the medication administration in most cases is performed and documented by the provider."
* insert MedicationResourcesRS
* medication[x] from http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1010.4 (extensible) // as per USCore 4.0.0
// Model the Must Supports on US Core MedicationRequest
* status and medication[x] and subject and effective[x] MS
* extension contains NormalizationBasis named normalizationBasis 0..1


RuleSet: MedicationResourcesRS
* ^extension[FMM].valueInteger = 3
* obeys mcode-reason-required
* obeys termination-reason-code-invariant 
* obeys termination-reason-invariant 
* subject only Reference(CancerPatient)
* subject ^definition = "The patient receiving the medication."
* extension contains
    ProcedureIntent named treatmentIntent 0..1 MS
* statusReason from TreatmentTerminationReasonVS (preferred)
* reasonCode from CancerDisorderVS (extensible)
* reasonReference only Reference(USCoreCondition) // only for cancer-related reasons
* reasonCode and reasonReference and statusReason and extension and extension[treatmentIntent] MS

Invariant:  mcode-reason-required
Description: "One of reasonCode or reasonReference SHALL be present"
Expression: "reasonCode.exists() or reasonReference.exists()"
Severity:   #warning    // FHIR-32387 error-->warning
