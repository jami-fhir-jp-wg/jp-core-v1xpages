# JP Core Observation LabResult Example 検体検査（尿酸） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation LabResult Example 検体検査（尿酸）**

## Example Observation: JP Core Observation LabResult Example 検体検査（尿酸）

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-labresult-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_LabResult"
    ]
  },
  "contained" : [
    {
      "resourceType" : "ServiceRequest",
      "id" : "jp-servicerequest-example-1",
      "status" : "active",
      "intent" : "original-order",
      "code" : {
        "coding" : [
          {
            "system" : "http://example.org/abc-hospital/fhir/ObservationOrder/localcode",
            "code" : "12345678"
          }
        ],
        "text" : "生化学検査"
      },
      "subject" : {
        "reference" : "Patient/jp-patient-example-1"
      },
      "encounter" : {
        "reference" : "Encounter/jp-encounter-example-1"
      },
      "occurrenceDateTime" : "2021-10-19T01:15:00+09:00",
      "requester" : {
        "reference" : "Practitioner/jp-practitioner-example-female-1"
      },
      "performer" : [
        {
          "reference" : "Practitioner/jp-practitioner-example-male-2"
        }
      ]
    }
  ],
  "basedOn" : [
    {
      "reference" : "#jp-servicerequest-example-1"
    }
  ],
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
        "code" : "05104",
        "display" : "尿酸"
      },
      {
        "system" : "http://medis.or.jp/CodeSystem/master-JLAC10-17digits",
        "code" : "3C020000002327101"
      }
    ],
    "text" : "尿酸"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectiveDateTime" : "2021-10-19T02:20:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-female-1"
    }
  ],
  "valueQuantity" : {
    "value" : 8.5,
    "unit" : "mg/dL"
  },
  "interpretation" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }
      ],
      "text" : "H"
    }
  ],
  "specimen" : {
    "reference" : "Specimen/jp-specimen-example-1"
  },
  "referenceRange" : [
    {
      "low" : {
        "value" : 2.1
      },
      "high" : {
        "value" : 7
      },
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
            "code" : "normal",
            "display" : "Normal Range"
          }
        ]
      }
    }
  ]
}

```
