# JP Core Observation Electrocardiogram Example - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Electrocardiogram Example**

## Example Observation: JP Core Observation Electrocardiogram Example

Profile: [JP Core Observation Electrocardiogram Profile](StructureDefinition-jp-observation-electrocardiogram.md)

**JP Core Observation Electrocardiogram NumberOfLeed Extention**: 12

**JP Core Observation Electrocardiogram Device Interpretation Extention**: true

**status**: Final

**category**: Procedure

**code**: EKG Study

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**encounter**: [Encounter: status = finished; class = 外来 (ActCode#AMB); period = 2022-05-08 13:08:24+0900 --> 2022-05-08 13:23:24+0900](Encounter-jp-encounter-example-1.md)

**effective**: 2024-10-19 10:00:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**interpretation**: 正常

> **component****code**:Heart rate.beat-to-beat by EKG**value**: 75 {beats}/min

> **component****code**:R-R interval by EKG**value**: 800 ms

> **component****code**:P-R Interval**value**: 160 ms

> **component****code**:QRS duration**value**: 90 ms

> **component****code**:Q-T interval**value**: 400 ms

> **component****code**:Q-T interval corrected**value**: 420 ss

> **component****code**:P wave axis**value**: 60 deg

> **component****code**:QRS axis**value**: 30 deg

> **component****code**:R wave amplitude in lead V5**value**: 1.2 mV

> **component****code**:S wave amplitude in lead V1**value**: 0.9 mV

> **component****code**:R wave amplitude.V5+S wave amplitude.V1**value**: 2.1 mV

> **component****code**:T wave axis**value**: 45 deg

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-electrocardiogram-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Electrocardiogram"
    ]
  },
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_NumberOfLead",
      "valueInteger" : 12
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_DeviceInterpretation",
      "valueBoolean" : true
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "procedure",
          "display" : "Procedure"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "11524-6",
        "display" : "EKG Study"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "encounter" : {
    "reference" : "Encounter/jp-encounter-example-1"
  },
  "effectiveDateTime" : "2024-10-19T10:00:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "urn:oid:1.2.392.200119.5.2.4.1.1.3",
          "code" : "1-0",
          "display" : "正常"
        }
      ]
    }
  ],
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "76282-3",
            "display" : "Heart rate.beat-to-beat by EKG"
          }
        ],
        "text" : "Heart rate.beat-to-beat by EKG"
      },
      "valueQuantity" : {
        "value" : 75,
        "unit" : "{beats}/min"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8637-1",
            "display" : "R-R interval by EKG"
          }
        ],
        "text" : "R-R interval by EKG"
      },
      "valueQuantity" : {
        "value" : 800,
        "unit" : "ms"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8625-6",
            "display" : "P-R Interval"
          }
        ],
        "text" : "P-R Interval"
      },
      "valueQuantity" : {
        "value" : 160,
        "unit" : "ms"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8633-0",
            "display" : "QRS duration"
          }
        ],
        "text" : "QRS duration"
      },
      "valueQuantity" : {
        "value" : 90,
        "unit" : "ms"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8634-8",
            "display" : "Q-T interval"
          }
        ],
        "text" : "Q-T interval"
      },
      "valueQuantity" : {
        "value" : 400,
        "unit" : "ms"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8636-3",
            "display" : "Q-T interval corrected"
          }
        ],
        "text" : "Q-T interval corrected"
      },
      "valueQuantity" : {
        "value" : 420,
        "unit" : "ss"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8626-4",
            "display" : "P wave axis"
          }
        ],
        "text" : "P wave axis"
      },
      "valueQuantity" : {
        "value" : 60,
        "unit" : "deg"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8632-2",
            "display" : "QRS axis"
          }
        ],
        "text" : "QRS axis"
      },
      "valueQuantity" : {
        "value" : 30,
        "unit" : "deg"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "9995-2",
            "display" : "R wave amplitude in lead V5"
          }
        ],
        "text" : "R wave amplitude in lead V5"
      },
      "valueQuantity" : {
        "value" : 1.2,
        "unit" : "mV"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "10040-4",
            "display" : "S wave amplitude in lead V1"
          }
        ],
        "text" : "S wave amplitude in lead V1"
      },
      "valueQuantity" : {
        "value" : 0.9,
        "unit" : "mV"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "76636-0",
            "display" : "R wave amplitude.V5+S wave amplitude.V1"
          }
        ],
        "text" : "R wave amplitude.V5+S wave amplitude.V1"
      },
      "valueQuantity" : {
        "value" : 2.1,
        "unit" : "mV"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8638-9",
            "display" : "T wave axis"
          }
        ],
        "text" : "T wave axis"
      },
      "valueQuantity" : {
        "value" : 45,
        "unit" : "deg"
      }
    }
  ]
}

```
