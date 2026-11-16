# JP Core MedicationRequest Injection Example 注射処方指示 ワンショット静脈注射 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationRequest Injection Example 注射処方指示 ワンショット静脈注射**

## Example MedicationRequest: JP Core MedicationRequest Injection Example 注射処方指示 ワンショット静脈注射

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "jp-medicationrequest-injection-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "jp-medicationrequest-injection-medication-example-1",
      "meta" : {
        "profile" : [
          "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication"
        ]
      },
      "status" : "active",
      "ingredient" : [
        {
          "extension" : [
            {
              "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_Ingredient_DrugNo",
              "valueInteger" : 1
            }
          ],
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
            "extension" : [
              {
                "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_IngredientStrength_StrengthType",
                "valueCodeableConcept" : {
                  "coding" : [
                    {
                      "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthStrengthType",
                      "code" : "1",
                      "display" : "製剤量"
                    }
                  ]
                }
              }
            ],
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
      "id" : "jp-medicationrequest-injection-bodystructure-example-1",
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
              "code" : "L",
              "display" : "Left"
            }
          ]
        }
      ],
      "patient" : {
        "reference" : "Patient/jp-patient-example-1"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber",
      "value" : "1"
    },
    {
      "system" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
      "value" : "1234567890.1"
    },
    {
      "system" : "urn:oid:1.2.392.100495.20.3.11",
      "value" : "20241101-0000000000000001"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v2-0482",
          "code" : "I",
          "display" : "Inpatient Order"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS",
          "code" : "IHP",
          "display" : "入院処方"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JHSI0001",
          "code" : "FTP",
          "display" : "定時処方"
        }
      ]
    }
  ],
  "medicationReference" : {
    "reference" : "#jp-medicationrequest-injection-medication-example-1"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "authoredOn" : "2016-07-01T09:28:17+09:00",
  "requester" : {
    "reference" : "Practitioner/jp-practitioner-example-female-1"
  },
  "insurance" : [
    {
      "reference" : "Coverage/jp-coverage-example-1"
    }
  ],
  "dosageInstruction" : [
    {
      "text" : "静脈注射 静脈内 左腕 １日おき",
      "additionalInstruction" : [
        {
          "coding" : [
            {
              "system" : "http://jami.jp/CodeSystem/MedicationUsageAdditional",
              "code" : "I1100000",
              "display" : "１日おき"
            }
          ]
        }
      ],
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2016-07-01T10:00:00+09:00"
          }
        }
      },
      "site" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
            "valueReference" : {
              "reference" : "#jp-medicationrequest-injection-bodystructure-example-1"
            }
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
        "coding" : [
          {
            "system" : "http://jami.jp/CodeSystem/MedicationMethodDetailUsage",
            "code" : "30",
            "display" : "静脈注射"
          }
        ]
      },
      "doseAndRate" : [
        {
          "type" : {
            "coding" : [
              {
                "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthStrengthType",
                "code" : "1"
              }
            ]
          },
          "doseQuantity" : {
            "value" : 2,
            "unit" : "mL",
            "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code" : "ML"
          }
        }
      ]
    }
  ]
}

```
