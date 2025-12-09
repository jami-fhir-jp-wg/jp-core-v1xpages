# JP Core MedicationRequest with Department Extension Example (CodeableConcept) - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationRequest with Department Extension Example (CodeableConcept)**

## Example MedicationRequest: JP Core MedicationRequest with Department Extension Example (CodeableConcept)

Profile: [JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md)

**JP Core Department Extension**: 内科

**identifier**: [JP_Medication_RpGroup_Number_NamingSystem](NamingSystem-jp-medication-rpgroup-number-namingsystem.md)/1, [JP_Medication_RpGruop_Index_NamingSystem](NamingSystem-jp-medication-rpgruop-index-namingsystem.md)/1, [JP_core_resourceInstance_identifier_NamingSystem](NamingSystem-jp-core-resourceInstance-identifier.md)/MR-20230401-0001, [JP_IdSystem_PrescriptionDocumentID_NamingSystem](NamingSystem-jp-IdSystem-prescriptionDocumentID-namingsystem.md)/20230401-0000000001

**status**: Active

**intent**: Order

**medication**: カロナール錠２００

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**authoredOn**: 2023-04-01 12:00:00+0900

> **dosageInstruction****text**: 内服・経口・１日３回朝昼夕食後**timing**: Code**route**:口

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 1 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠') |


### DispenseRequests

| | |
| :--- | :--- |
| - | **Quantity** |
| * | 21 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠') |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "jp-medicationrequest-department-example-01",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
    ]
  },
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Department",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
            "code" : "01",
            "display" : "内科"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber",
      "value" : "1"
    },
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex",
      "value" : "1"
    },
    {
      "system" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
      "value" : "MR-20230401-0001"
    },
    {
      "system" : "urn:oid:1.2.392.100495.20.3.11",
      "value" : "20230401-0000000001"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "urn:oid:1.2.392.100495.20.2.74",
        "code" : "103831601",
        "display" : "カロナール錠２００"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "authoredOn" : "2023-04-01T12:00:00+09:00",
  "dosageInstruction" : [
    {
      "text" : "内服・経口・１日３回朝昼夕食後",
      "timing" : {
        "code" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.100495.20.2.31",
              "code" : "1013044400000000",
              "display" : "内服・経口・１日３回朝昼夕食後"
            }
          ]
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "urn:oid:2.16.840.1.113883.3.1937.777.10.5.162",
            "code" : "PO",
            "display" : "口"
          }
        ]
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "錠",
            "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code" : "TAB"
          }
        }
      ]
    }
  ],
  "dispenseRequest" : {
    "quantity" : {
      "value" : 21,
      "unit" : "錠",
      "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
      "code" : "TAB"
    }
  }
}

```
