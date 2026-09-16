# JP Core MedicationAdministration Injection Example 注射実施 点滴注射 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationAdministration Injection Example 注射実施 点滴注射**

## Example MedicationAdministration: JP Core MedicationAdministration Injection Example 注射実施 点滴注射

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "jp-medicationadministration-injection-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration_Injection"
    ]
  },
  "contained" : [
    {
      "resourceType" : "Medication",
      "id" : "jp-medicationadministration-injection-medication-example-2",
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
      "id" : "jp-medicationadministration-injection-bodystructure-example-2",
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
      "id" : "jp-medicationadministration-injection-device-example-2",
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
        "reference" : "Practitioner/jp-practitioner-example-female-1",
        "display" : "東京 春子"
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
      "value" : "2"
    },
    {
      "system" : "urn:oid:1.2.392.100495.20.3.11",
      "value" : "1234567890.2"
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
    "reference" : "#jp-medicationadministration-injection-medication-example-2"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectivePeriod" : {
    "start" : "2016-07-01T08:05:21+09:00",
    "end" : "2016-07-01T13:05:43+09:00"
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
        "reference" : "Practitioner/jp-practitioner-example-female-1",
        "display" : "福岡 花子"
      }
    }
  ],
  "request" : {
    "reference" : "MedicationRequest/jp-medicationrequest-injection-example-2"
  },
  "device" : [
    {
      "reference" : "#jp-medicationadministration-injection-device-example-2",
      "display" : "IV Pump"
    }
  ],
  "dosage" : {
    "extension" : [
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
    "site" : {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/bodySite",
          "valueReference" : {
            "reference" : "#jp-medicationadministration-injection-bodystructure-example-2",
            "display" : "左腕"
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
          "code" : "31",
          "display" : "中心静脈注射"
        }
      ]
    },
    "dose" : {
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
        "unit" : "hour",
        "system" : "http://unitsofmeasure.org",
        "code" : "h"
      }
    }
  }
}

```
