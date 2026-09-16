# JP Core MedicationAdministration Injection Example 注射実施 ワンショット静脈注射 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationAdministration Injection Example 注射実施 ワンショット静脈注射**

## Example MedicationAdministration: JP Core MedicationAdministration Injection Example 注射実施 ワンショット静脈注射

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "jp-medicationadministration-injection-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration_Injection"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "jp-medicationadministration-injection-medication-example-1",
      "meta" : {
        "profile" : [
          "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication"
        ]
      },
      "status" : "active",
      "ingredient" : [
        {
          "itemCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://medis.or.jp/CodeSystem/master-HOT9",
                "code" : "100558502",
                "display" : "ホリゾン注射液１０ｍｇ"
              }
            ]
          },
          "strength" : {
            "numerator" : {
              "value" : 1,
              "unit" : "アンプル",
              "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
              "code" : "AMP"
            },
            "denominator" : {
              "value" : 1,
              "unit" : "回",
              "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
              "code" : "TIME"
            }
          }
        }
      ]
    },
    {
      "resourceType" : "BodyStructure",
      "id" : "jp-medicationadministration-injection-bodystructure-example-1",
      "location" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0550",
            "code" : "ARM",
            "display" : "Arm"
          }
        ]
      },
      "locationQualifier" : [
        {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0495",
              "code" : "R",
              "display" : "Right"
            }
          ]
        }
      ],
      "patient" : {
        "reference" : "Patient/jp-patient-example-1"
      }
    }
  ],
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_RequestDepartment",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
            "code" : "01",
            "display" : "内科"
          }
        ]
      }
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Requester",
      "valueReference" : {
        "reference" : "Practitioner/jp-practitioner-example-male-1",
        "display" : "大阪 一郎"
      }
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_RequestAuthoredOn",
      "valueDateTime" : "2016-07-01T00:00:00+09:00"
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Location",
      "valueReference" : {
        "reference" : "Location/jp-location-example-ward",
        "display" : "09A病棟 021病室 4ベッド"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber",
      "value" : "1"
    },
    {
      "system" : "urn:oid:1.2.392.100495.20.3.11",
      "value" : "1234567890.1"
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
  "medicationReference" : {
    "reference" : "#jp-medicationadministration-injection-medication-example-1"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectivePeriod" : {
    "start" : "2016-07-01T10:05:21+09:00",
    "end" : "2016-07-01T10:05:21+09:00"
  },
  "performer" : [
    {
      "function" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/med-admin-perform-function",
            "code" : "performer",
            "display" : "Performer"
          }
        ]
      },
      "actor" : {
        "reference" : "Practitioner/jp-practitioner-example-male-1",
        "display" : "愛知 太郎"
      }
    }
  ],
  "request" : {
    "reference" : "MedicationRequest/jp-medicationrequest-injection-example-1"
  },
  "dosage" : {
    "extension" : [
      {
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_DosageComment",
        "valueString" : "痙攣が発生したため、主治医に確認の上実施しました"
      }
    ],
    "site" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
          "valueReference" : {
            "reference" : "#jp-medicationadministration-injection-bodystructure-example-1",
            "display" : "右腕"
          }
        },
        {
          "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_SiteComment",
          "valueString" : "左利きのため"
        }
      ]
    },
    "route" : {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/route-codes",
          "code" : "IV",
          "display" : "静脈内"
        }
      ]
    },
    "method" : {
      "extension" : [
        {
          "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_MethodComment",
          "valueString" : "１分ほどかけて緩徐に行いました"
        }
      ],
      "coding" : [
        {
          "system" : "http://jami.jp/CodeSystem/MedicationMethodBasicUsage",
          "code" : "3",
          "display" : "注射"
        }
      ]
    },
    "dose" : {
      "value" : 2,
      "unit" : "mL",
      "system" : "http://unitsofmeasure.org",
      "code" : "mL"
    }
  }
}

```
