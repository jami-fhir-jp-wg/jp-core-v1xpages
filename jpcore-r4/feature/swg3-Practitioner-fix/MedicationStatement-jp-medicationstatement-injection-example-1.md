# JP Core MedicationStatement Injection Example 投与申告情報 ソリタ－＋アドナ注 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationStatement Injection Example 投与申告情報 ソリタ－＋アドナ注**

## Example MedicationStatement: JP Core MedicationStatement Injection Example 投与申告情報 ソリタ－＋アドナ注

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "jp-medicationstatement-injection-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement_Injection"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "jp-medicationstatement-injection-medication-example-1",
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
      "id" : "jp-medicationstatement-injection-bodystructure-example-1",
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
    },
    {
      "resourceType" : "Device",
      "id" : "jp-medicationstatement-injection-device-example-1",
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
  "status" : "completed",
  "medicationReference" : {
    "reference" : "#jp-medicationstatement-injection-medication-example-1"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectivePeriod" : {
    "start" : "2020-04-01T00:00:00+09:00",
    "end" : "2020-04-14T00:00:00+09:00"
  },
  "dateAsserted" : "2020-05-01T12:28:17+09:00",
  "informationSource" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "derivedFrom" : [
    {
      "reference" : "MedicationRequest/jp-medicationrequest-injection-example-2"
    }
  ],
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://medis.or.jp/CodeSystem/master-disease-exCode",
          "code" : "TQ7A",
          "display" : "急性気管支炎"
        }
      ]
    }
  ],
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Device",
          "valueReference" : {
            "reference" : "#jp-medicationstatement-injection-device-example-1"
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
              "reference" : "#jp-medicationstatement-injection-bodystructure-example-1"
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
