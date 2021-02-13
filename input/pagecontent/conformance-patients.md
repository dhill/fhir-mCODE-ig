To facilitate conformance testing, testing software must be able to determine which patients are "mCODE Patients" -- those in scope for mCODE. In general, all patients with confirmed cancer diagnoses SHOULD be covered by mCODE. In FHIR terms, these are patients who have a Condition where `Condition.code` is a member of the value set [PrimaryOrUncertainBehaviorCancerDisorderVS] and `Condition.verificationStatus` is confirmed.

However, due to technical, organizational, or legal reasons, mCODE Data Senders MAY exclude some cancer patients from mCODE. In that case, the mCODE Data Sender MUST define a Group resource to identify ALL mCODE patients in their system. This Group resource MUST set `Group.code` to `mcode-patient` (no code system). Data Senders that do not exclude any cancer patients from mCODE MAY still populate a `mcode-patient` Group resource.

All mCODE Data Senders MUST respond to `GET [base]/Group?code=mcode-patient` with either zero or one Group resource. If no Group resource is returned, all patients with cancer diagnoses (as defined above) will be considered to be "mCODE Patients." If a Group resource is returned, patients not referenced in the Group resource are assumed to be out of scope, independent of any cancer diagnosis. This requirement is reflected in ALL CapabilityStatements referenced in this section.

The following CapabilityStatements define the various methods participants can use to identify mCODE Patients. Participants implementing a pull architecture MUST support at least one of the CapabilityStatements listed from **most to least preferable** below:

1. **Patients-in-group** approach (CapabilityStatements for the [sender][mcode-sender-patients-in-group] and [receiver][mcode-receiver-patients-in-group]):

    Senders respond to the following request with a Group resource referencing the Patient resources for all mCODE Patients, AND allow the Receiver to retrieve a Bundle of the Patient resources referenced in the first response using [composite search parameters](https://www.hl7.org/fhir/search.html#combining):

        GET [base]/Group?code=mcode-patients

        GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;">{%include patients-in-group.svg%}</div>

1. **Patients-with-cancer-condition** approach (CapabilityStatements for the [sender][mcode-sender-patients-with-cancer-condition] and [receiver][mcode-receiver-patients-with-cancer-condition]):

    Senders respond to the following request with a Bundle of Patient resources for all mCODE Patients. This method is preferred over the approaches below UNLESS [reverse chaining](https://www.hl7.org/fhir/search.html#has) is entirely unsupported on the system.

        GET [base]/Patient?_has:Condition:subject:code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;">{%include patients-with-cancer-condition.svg%}</div>

1.  **Patient-then-cancer-conditions** approach (CapabilityStatements for the [sender][mcode-sender-patients-and-cancer-conditions] and [receiver][mcode-receiver-patients-and-cancer-conditions]):

    Senders can respond to a request using [`_include`](https://www.hl7.org/fhir/search.html#revinclude) to get a Bundle of the relevant Patient resources along with the subset of Condition resources with `Condition.code` in [Primary or Uncertain Behavior Cancer Disorder Value Set][PrimaryOrUncertainBehaviorCancerDisorderVS] in a single request. Preferred over the approach below UNLESS `_include` is entirely unsupported on the system.

        GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs&_include=Condition:subject

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;">{%include patients-and-cancer-conditions.svg%}</div>

1. **Conditions-then-patients** approach (CapabilityStatements for the [sender][mcode-sender-cancer-conditions-then-patients] and [receiver][mcode-receiver-cancer-conditions-then-patients]):

    Senders return a Bundle with the subset of Condition resources with a `code` in the [Primary or Uncertain Behavior Cancer Disorder Value Set][PrimaryOrUncertainBehaviorCancerDisorderVS] in a single request, AND allow the Receiver to retrieve a Bundle of the Patient resources referenced in the first response using [composite search parameters](https://www.hl7.org/fhir/search.html#combining):

        GET [base]/Condition?code:in=http://hl7.org/fhir/us/mcode/ValueSet/mcode-primary-or-uncertain-behavior-cancer-disorder-vs

        GET [base]/Patient?_id=some_patient_id_1,some_patient_id_2,...,some_patient_id_n

    <!-- If the image below is not wrapped in a div tag, the publisher tries to wrap text around the image, which is not desired. -->
    <div style="text-align: center;">{%include cancer-conditions-then-patients.svg%}</div>

### Capability Statements

* **Receiver**
  * [mcode-receiver-cancer-conditions-then-patients]
  * [mcode-receiver-patients-and-cancer-conditions]
  * [mcode-receiver-patients-in-group]
  * [mcode-receiver-patients-with-cancer-condition]
* **Sender**  
  * [mcode-sender-cancer-conditions-then-patients]
  * [mcode-sender-patients-and-cancer-conditions]
  * [mcode-sender-patients-in-group]
  * [mcode-sender-patients-with-cancer-condition]

    {% include markdown-link-references.md %}