# JP Core MedicationDispense Example 調剤実施 内服薬 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationDispense Example 調剤実施 内服薬**

## Example MedicationDispense: JP Core MedicationDispense Example 調剤実施 内服薬

Profile: [JP Core MedicationDispense Profile](StructureDefinition-jp-medicationdispense.md)

**identifier**: [JP_Medication_RpGroup_Number_NamingSystem](NamingSystem-jp-medication-rpgroup-number-namingsystem.md)/1, [JP_Medication_RpGruop_Index_NamingSystem](NamingSystem-jp-medication-rpgruop-index-namingsystem.md)/1, [JP_IdSystem_PrescriptionDocumentID_NamingSystem](NamingSystem-jp-IdSystem-prescriptionDocumentID-namingsystem.md)/1234567890.1.1

**status**: Completed

**category**: Inpatient Order

**medication**: ムコダイン錠２５０ｍｇ

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Packager | [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md) |

**quantity**: 9 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠')

**daysSupply**: 7 日(Details: UCUM coded = 'd')

**whenPrepared**: 2021-10-07 10:47:19+0900

**whenHandedOver**: 2021-10-07 10:55:23+0900

**destination**: [Location 09A病棟 021病室 4ベッド](Location-jp-location-example-ward.md)

**note**: 

> 

後発品へ変更可能か依頼医のＡ医師に確認したところ、患者の希望により不可との回答あり。


> **dosageInstruction****text**: 内服・経口・１日３回朝昼夕食後**timing**: Code**route**:口**method**:経口

### DoseAndRates

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Dose[x]** | **Rate[x]** |
| * | 製剤量 | 1 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠') | 3 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠')/1 日(Details: UCUM coded = 'd') |


### Substitutions

| | | | |
| :--- | :--- | :--- | :--- |
| - | **WasSubstituted** | **Type** | **Reason** |
| * | true | generic composition | regulatory requirement |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "jp-medicationdispense-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispense"
    ]
  },
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
      "system" : "urn:oid:1.2.392.100495.20.3.11",
      "value" : "1234567890.1.1"
    }
  ],
  "status" : "completed",
  "category" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0482",
        "code" : "I",
        "display" : "Inpatient Order"
      }
    ]
  },
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://medis.or.jp/CodeSystem/master-HOT9",
        "code" : "103835401",
        "display" : "ムコダイン錠２５０ｍｇ"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "performer" : [
    {
      "function" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/medicationdispense-performer-function",
            "code" : "packager",
            "display" : "Packager"
          }
        ]
      },
      "actor" : {
        "reference" : "Practitioner/jp-practitioner-example-male-1"
      }
    }
  ],
  "quantity" : {
    "value" : 9,
    "unit" : "錠",
    "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
    "code" : "TAB"
  },
  "daysSupply" : {
    "value" : 7,
    "unit" : "日",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  },
  "whenPrepared" : "2021-10-07T10:47:19+09:00",
  "whenHandedOver" : "2021-10-07T10:55:23+09:00",
  "destination" : {
    "reference" : "Location/jp-location-example-ward"
  },
  "note" : [
    {
      "text" : "後発品へ変更可能か依頼医のＡ医師に確認したところ、患者の希望により不可との回答あり。"
    }
  ],
  "dosageInstruction" : [
    {
      "text" : "内服・経口・１日３回朝昼夕食後",
      "timing" : {
        "code" : {
          "coding" : [
            {
              "system" : "http://jami.jp/CodeSystem/MedicationUsage",
              "code" : "1013044400000000",
              "display" : "内服 １日３回 朝昼夕食後"
            }
          ]
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/route-codes",
            "code" : "PO",
            "display" : "口"
          }
        ]
      },
      "method" : {
        "coding" : [
          {
            "system" : "http://jami.jp/CodeSystem/MedicationMethodDetailUsage",
            "code" : "10",
            "display" : "経口"
          }
        ]
      },
      "doseAndRate" : [
        {
          "type" : {
            "coding" : [
              {
                "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthStrengthType",
                "code" : "1",
                "display" : "製剤量"
              }
            ]
          },
          "doseQuantity" : {
            "value" : 1,
            "unit" : "錠",
            "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code" : "TAB"
          },
          "rateRatio" : {
            "numerator" : {
              "value" : 3,
              "unit" : "錠",
              "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
              "code" : "TAB"
            },
            "denominator" : {
              "value" : 1,
              "unit" : "日",
              "system" : "http://unitsofmeasure.org",
              "code" : "d"
            }
          }
        }
      ]
    }
  ],
  "substitution" : {
    "wasSubstituted" : true,
    "type" : {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution",
          "code" : "G",
          "display" : "generic composition"
        }
      ]
    },
    "reason" : [
      {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
            "code" : "RR",
            "display" : "regulatory requirement"
          }
        ]
      }
    ]
  }
}

```
