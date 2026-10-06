# JP Core MedicationRequest Injection Example 注射処方指示 点滴注射 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationRequest Injection Example 注射処方指示 点滴注射**

## Example MedicationRequest: JP Core MedicationRequest Injection Example 注射処方指示 点滴注射

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "jp-medicationrequest-injection-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "jp-medicationrequest-injection-medication-example-2",
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
                "code" : "107750603",
                "display" : "ソリタ－Ｔ３号輸液　５００ｍＬ"
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
              "unit" : "本",
              "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
              "code" : "HON"
            },
            "denominator" : {
              "value" : 1,
              "unit" : "回",
              "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
              "code" : "TIME"
            }
          }
        },
        {
          "itemCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://medis.or.jp/CodeSystem/master-HOT9",
                "code" : "108010002",
                "display" : "アドナ注（静脈用）５０ｍｇ　０．５％１０ｍＬ"
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
      "id" : "jp-medicationrequest-injection-bodystructure-example-2",
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
    },
    {
      "resourceType" : "Device",
      "id" : "jp-medicationrequest-injection-device-example-2",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0164",
            "code" : "IVP",
            "display" : "IV Pump"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber",
      "value" : "2"
    },
    {
      "system" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
      "value" : "1234567890.2.1"
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
    "reference" : "#jp-medicationrequest-injection-medication-example-2"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "authoredOn" : "2016-07-01T07:28:17+09:00",
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
      "extension" : [
        {
          "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Device",
          "valueReference" : {
            "reference" : "#jp-medicationrequest-injection-device-example-2"
          }
        },
        {
          "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Line",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://jpfhir.jp/fhir/Examples/CodeSystem/JP_MedicationRequestDosageInstructionLine_CS",
                "code" : "01",
                "display" : "末梢ルート"
              }
            ]
          }
        }
      ],
      "text" : "主管 静脈注射 左腕",
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2016-07-01T08:00:00+09:00",
            "end" : "2016-07-01T13:00:00+09:00"
          }
        }
      },
      "site" : {
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
            "valueReference" : {
              "reference" : "#jp-medicationrequest-injection-bodystructure-example-2"
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
            "system" : "http://jami.jp/CodeSystem/MedicationMethodBasicUsage",
            "code" : "3",
            "display" : "注射"
          }
        ]
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 510,
            "unit" : "mL",
            "system" : "http://unitsofmeasure.org",
            "code" : "mL"
          },
          "rateRatio" : {
            "numerator" : {
              "value" : 102,
              "unit" : "mL",
              "system" : "http://unitsofmeasure.org",
              "code" : "mL"
            },
            "denominator" : {
              "value" : 1,
              "unit" : "時間",
              "system" : "http://unitsofmeasure.org",
              "code" : "h"
            }
          }
        }
      ]
    }
  ]
}

```
