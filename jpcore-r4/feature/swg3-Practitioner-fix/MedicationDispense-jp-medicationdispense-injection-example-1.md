# JP Core MedicationDispense Injection Example 調剤実施 注射薬 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationDispense Injection Example 調剤実施 注射薬**

## Example MedicationDispense: JP Core MedicationDispense Injection Example 調剤実施 注射薬

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "jp-medicationdispense-injection-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispense_Injection"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "jp-medicationdispense-injection-medication-example-1",
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
      "id" : "jp-medicationdispense-injection-bodystructure-example-1",
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
    "reference" : "#jp-medicationdispense-injection-medication-example-1"
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
        "reference" : "Practitioner/jp-practitioner-example-female-1"
      }
    }
  ],
  "quantity" : {
    "value" : 2,
    "unit" : "mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "whenPrepared" : "2021-10-07T10:47:19+09:00",
  "whenHandedOver" : "2021-10-07T10:55:23+09:00",
  "destination" : {
    "reference" : "Location/jp-location-example-ward"
  },
  "dosageInstruction" : [
    {
      "text" : "ワンショット 静脈注射 静脈内",
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
              "reference" : "#jp-medicationdispense-injection-bodystructure-example-1",
              "type" : "BodyStructure"
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
          "doseQuantity" : {
            "value" : 2,
            "unit" : "mL",
            "system" : "http://unitsofmeasure.org",
            "code" : "mL"
          }
        }
      ]
    }
  ]
}

```
