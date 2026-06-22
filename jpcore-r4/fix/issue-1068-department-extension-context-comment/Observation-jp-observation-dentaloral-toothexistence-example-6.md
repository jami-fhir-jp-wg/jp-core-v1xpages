# JP Core Observation DentalOral Tooth Existence Example 口腔診査結果６（歯の有無） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation DentalOral Tooth Existence Example 口腔診査結果６（歯の有無）**

## Example Observation: JP Core Observation DentalOral Tooth Existence Example 口腔診査結果６（歯の有無）

Profile: [JP Core Observation DentalOral Tooth Existence Profile](StructureDefinition-jp-observation-dentaloral-toothexistence.md)

**status**: Final

**category**: 歯の有無, Dental, ToothExistence

**code**: Oral/Dental Status

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2022-10-01

**issued**: 2022-10-24 17:30:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**value**: 欠損歯

**bodySite**: 右側下顎第２小臼歯

**hasMember**: [Observation Oral/Dental Status](Observation-jp-observation-dentaloral-missingtoothcondition-example-6.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-dentaloral-toothexistence-example-6",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_ToothExistence"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "code" : "exam",
          "display" : "exam"
        }
      ],
      "text" : "歯の有無"
    },
    {
      "coding" : [
        {
          "code" : "LP89803-8",
          "display" : "Dental"
        }
      ]
    },
    {
      "coding" : [
        {
          "code" : "DO-1-01",
          "display" : "ToothExistence"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "54570-7",
        "display" : "Oral/Dental Status"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectiveDateTime" : "2022-10-01",
  "issued" : "2022-10-24T17:30:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalFundamentalStatus_CS",
        "code" : "TB-3-2",
        "display" : "欠損歯"
      }
    ]
  },
  "bodySite" : {
    "extension" : [
      {
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodySiteStatus",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodySiteStatus_CS",
              "code" : "0"
            }
          ]
        }
      }
    ],
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodySite_CS",
        "code" : "1045",
        "display" : "右側下顎第２小臼歯"
      }
    ]
  },
  "hasMember" : [
    {
      "reference" : "Observation/jp-observation-dentaloral-missingtoothcondition-example-6"
    }
  ]
}

```
