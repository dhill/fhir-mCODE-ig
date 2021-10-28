Alias: COMORB =  http://terminology.hl7.org/CodeSystem/comorbidities-elixhauser
Alias: RID = http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs
Alias: RT = http://terminology.hl7.org/CodeSystem/radiotherapy

CodeSystem: ResourceIdentifierCS
Id: mcode-resource-identifier-cs
Title: "mCODE Resource Identifier Code System"
Description: "Concepts describing instance types, to be used in the `code` element of instances. These codes were created because no appropriate concept could be found in established vocabularies. These concepts are analogous to LOINC codes for laboratory observations: they identify the type of thing an instance represents.

Please note that while these codes may imply conformance to the profiles that use them, they are not synonymous with profiles and do not serve the same purpose in a FHIR resource for several reasons:

1. An instance of a resource like Group, Observation, or Procedure may conform to multiple profiles, but may only have one 'type of thing' as determined by the value of `code` (which has a maximum cardinality of 1).
2. `Procedure.code`, `Observation.code`, and `Group.code` elements require a [CodeableConcept data type](http://www.hl7.org/fhir/datatypes.html#CodeableConcept), which can be satisfied with a code from this code system. In contrast, a profile is identified with a [canonical URL](http://www.hl7.org/fhir/structuredefinition-definitions.html#StructureDefinition.url), which is represented by a [URI data type](http://www.hl7.org/fhir/datatypes.html#uri). In other words, a profile's canonical URL belongs in the `meta.profile` element, whereas the codes in this code system belong in `Resource.code` elements.
3. The same `code` can correspond to more than one profile (although not the case here)."

* #mcode-patient "mCODE Patient Group Resource" "Identifies a Group resource containing in-scope cancer patients that conforms to the MCODEPatientGroup profile."
* #mcode-radiotherapy-course-summary "Radiotherapy Course Summary Resource" "Identifies a Procedure resource that summarizes a radiotherapy treatment that conforms to the RadiotherapyCourseSummary profile." // USCRS-33292 - SNOMEDCT code requested

// LOINC Request 6073 requests LOINC codes for these categories, and for the overall index. Submitted 7/7/21
CodeSystem: ComorbiditiesElixhauserCS
Id: comorbidities-elixhauser-cs
Title: "Elixhauser Comorbidity Categories"
Description: "A set of codes representing the comorbidity categories originally defined by Elixhauser, and updated by the Agency for Healthcare Research and Quality (AHRQ) Healthcare Cost and Utilization Project (H-CUP)."
* ^url =  http://terminology.hl7.org/CodeSystem/comorbidities-elixhauser
* #AIDS    "Acquired immune deficiency syndrome Elixhauser category" "Patient has a disorder in the value set ElixhauserAidsVS"
* #ALCOHOL    "Alcohol abuse Elixhauser category" "Patient has a disorder in the value set ElixhauserAlcoholAbuseVS"
* #ANEMDF    "Deficiency anemias Elixhauser category" "Patient has a disorder in the value set ElixhauserDeficiencyAnemiaVS"
* #ARTH    "Arthropathies Elixhauser category" "Patient has a disorder in the value set ElixhauserRheumatoidArthritisVS"
* #BLDLOSS    "Chronic blood loss anemia Elixhauser category" "Patient has a disorder in the value set ElixhauserBloodLossAnemiaVS"
* #CANCER_LEUK    "Leukemia Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerLeukemiaVS"
* #CANCER_LYMPH    "Lymphoma Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerLymphomaVS"
* #CANCER_METS    "Metastatic cancer Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerMetastaticVS"
* #CANCER_NSITU    "Solid tumor without metastasis, in situ Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerSolidTumorInSituVS"
* #CANCER_SOLID    "Solid tumor without metastasis, malignant Elixhauser category" "Patient has a disorder in the value set ElixhauserCancerSolidTumorMalignantVS"
* #CBVD    "Cerebrovascular disease Elixhauser category" "Patient has a disorder in the value set ElixhauserCerebrovascularDiseaseVS"
* #CHF    "Congestive heart failure Elixhauser category" "Patient has a disorder in the value set ElixhauserCongestiveHeartFailureVS"
* #COAG    "Coagulopathy Elixhauser category" "Patient has a disorder in the value set ElixhauserCoagulationDeficiencyVS"
* #DEMENTIA    "Dementia Elixhauser category" "Patient has a disorder in the value set ElixhauserDementiaVS"
* #DEPRESS    "Depression Elixhauser category" "Patient has a disorder in the value set ElixhauserDepressionVS"
* #DIAB_CX    "Diabetes with chronic complications Elixhauser category" "Patient has a disorder in the value set ElixhauserDiabetesComplicatedVS"
* #DIAB_UNCX    "Diabetes without chronic complications Elixhauser category" "Patient has a disorder in the value set ElixhauserDiabetesUncomplicatedVS"
* #DRUG_ABUSE    "Drug abuse Elixhauser category"  "Patient has a disorder in the value set ElixhauserDrugAbuseVS"
* #HTN_CX    "Hypertension, complicated Elixhauser category" "Patient has a disorder in the value set ElixhauserHypertensionComplicatedVS"
* #HTN_UNCX    "Hypertension, uncomplicated Elixhauser category" "Patient has a disorder in the value set ElixhauserHypertensionUncomplicatedVS"
* #LIVER_MLD    "Liver disease, mild Elixhauser category" "Patient has a disorder in the value set ElixhauserLiverDiseaseMildVS"
* #LIVER_SEV    "Liver disease, moderate to severe Elixhauser category" "Patient has a disorder in the value set ElixhauserLiverDiseaseSevereVS"
* #LUNG_CHRONIC    "Chronic pulmonary disease Elixhauser category" "Patient has a disorder in the value set ElixhauserChronicPulmonaryDiseaseVS"
* #NEURO_MOVT    "Neurological disorders affecting movement Elixhauser category" "Patient has a disorder in the value set ElixhauserNeurologicalMovementDisorderVS"
* #NEURO_OTH    "Other neurological disorders Elixhauser category" "Patient has a disorder in the value set ElixhauserOtherNeurologicalVS"
* #NEURO_SEIZ    "Seizures and epilepsy Elixhauser category" "Patient has a disorder in the value set ElixhauserNeurologicalSeizureDisorderVS"
* #OBESE    "Obesity Elixhauser category" "Patient has a disorder in the value set ElixhauserObesityVS"
* #PARALYSIS    "Paralysis Elixhauser category" "Patient has a disorder in the value set ElixhauserParalysisVS"
* #PERIVASC    "Peripheral vascular disease Elixhauser category" "Patient has a disorder in the value set ElixhauserPeripheralVascularDiseaseVS"
* #PSYCHOSIS    "Psychosis Elixhauser category" "Patient has a disorder in the value set ElixhauserPsychosisVS"
* #PULMCIRC    "Pulmonary circulation disease Elixhauser category" "Patient has a disorder in the value set ElixhauserPulmonaryCirculationDisorderVS"
* #RENLFL_MOD    "Renal failure, moderate Elixhauser category" "Patient has a disorder in the value set ElixhauserRenalFailureModerateVS"
* #RENLFL_SEV    "Renal failure, severe Elixhauser category" "Patient has a disorder in the value set ElixhauserRenalFailureSevereVS"
* #THYROID_HYPO    "Hypothyroidism Elixhauser category" "Patient has a disorder in the value set ElixhauserHypothyroidismVS"
* #THYROID_OTH    "Other thyroid disorders Elixhauser category" "Patient has a disorder in the value set ElixhauserOtherThyroidDisorderVS"
* #ULCER_PEPTIC    "Peptic ulcer with bleeding Elixhauser category" "Patient has a disorder in the value set ElixhauserUlcerVS"
* #VALVE    "Valvular disease Elixhauser category" "Patient has a disorder in the value set ElixhauserValvularDiseaseVS"
* #WGHTLOSS    "Weight loss Elixhauser category" "Patient has a disorder in the value set ElixhauserWeightLossVS"

CodeSystem: TbdLoincCodes
Id: tbd-loinc-code-cs
Title: "To-Be-Determined LOINC Codes ('TbdLoincCodes')"
Description: "These codes are currently 'TBD-LOINC' codes. The CG WG is requesting formal LOINC codes."
* #molecular-consequence "Molecular Consequence" "Annotated changes to sequence features caused by this variant. Terms are from the sequence ontology under SO:0001537."
* #diagnostic-implication "Diagnosic Implication" "Diagnostic Implication"

CodeSystem: RequestedRemissionCodes
Id: requested-remission-code-cs
Title: "Requested Remission Codes"
Description:   "Codes requested from SNOMED for Remission Status"
* #partialremission "Cancer in partial remission(finding)"     // USCRS 352237 * SCT#requested "Cancer in partial remission(finding)
* #completeremission "Cancer in complete remission(finding)"    // USCRS 352236 * SCT#requested "Cancer in complete remission(finding)

CodeSystem: TG263
Id: tg263-code-cs
Title: "TG263 Codes"
Description: "Codes from TG263 Anatomy codes that lack both SNOMEDCT and UMLS definitions."
* #bowel-space "Bowel Space" // * SCT#USCRS-33351 "Bowel space (body structure)" // Space occupied by bowel
* #small-bowel-space "Small Bowel Space" // * SCT#USCRS-33352 "Small bowel space (body structure)" // <none>
* #pre-sacral-lymph-node-group "Presacral lymph node group" // * SCT#USCRS-33346 "Presacral lymph node group (body structure)" * # "Lymph nodes of pelvis - presacral Left
* #1162492000 "Tumor bed (morphologic abnormality)" // SNOMED term available to be released in Jan 2021

CodeSystem: TG263Qualifier
Id: tg263-qualifier-code-cs
Title: "TG263 Qualifier Codes"
Description: "Qualifier Codes from TG263 Anatomy codes that lack both SNOMEDCT and UMLS definitions"
* #non-adjacent "Non-Adjacent"           // * SCT#USCRS-33144 "non-adjacent (qualifier)"
// * #supra-mammary "Supra-Mammary"         // * SCT#USCRS-33347 "supra-mammary" - request rejected, TRG requested qualifier removal

CodeSystem: RequestedLymphNodeLevelCodes
Id: requested-lymph-node-level-code-cs
Title: "Requested Lymph Node Level Codes to be released Jan 2021"
Description: "Codes requested from SNOMED for Lymph Node Levels"
* #1162616006 "Lymph node level IA (qualifier value)"
* #1162617002 "Lymph node level IB (qualifier value)"
* #1162620005 "Lymph node level IVA (qualifier value)"
* #1162621009 "Lymph node level IVB (qualifier value)"
* #1162622002 "Lymph node level VA (qualifier value)"
* #1162623007 "Lymph node level VB (qualifier value)"
* #1162624001 "Lymph node level VC (qualifier value)"
* #1162625000 "Lymph node level VIA (qualifier value)"
* #1162626004 "Lymph node level VIB (qualifier value)"
* #1162628003 "Lymph node level VIIA (qualifier value)"
* #1162627008 "Lymph node level VIIB (qualifier value)"
* #1162618007 "Lymph node level VIII (qualifier value)"
* #1162619004 "Lymph node level IX (qualifier value)"
* #1162614009 "Lymph node level X (qualifier value)"
* #1162615005 "Lymph node level XA (qualifier value)"
* #1162613003 "Lymph node level XB (qualifier value)"

CodeSystem: RequestedRadiationVolumeTypeCodes
Id: requested-radiation-volume-type-code-cs
Title: "Requested Radiation Volume Type Codes to be released Jan 2021"
Description: "Codes requested from SNOMED for Radiation Volume Types"
* #1162586008 "Irradiated volume of organ at risk (observable entity)"

CodeSystem: RequestedRadiotherapyTechniqueCodes
Id: requested-radiotherapy-technique-code-cs
Title: "Requested Radiotherapy Technique Codes"
Description: "Codes requested from SNOMED for Radiotherapy Techniques"
* #1162782007 "Three dimensional external beam radiation therapy (procedure)" // SCT#1162782007 "Three dimensional external beam radiation therapy (procedure)" to be released Jan 2021
* #PS "External beam radiation therapy using particle scanning technique (procedure)" // to be requested USCRS
