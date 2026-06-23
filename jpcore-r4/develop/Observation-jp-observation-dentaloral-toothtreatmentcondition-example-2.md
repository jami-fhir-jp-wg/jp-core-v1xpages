# JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果２（現存歯の処置状態） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果２（現存歯の処置状態）**

## Example Observation: JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果２（現存歯の処置状態）

Profile: [JP Core Observation DentalOral Tooth Treatment Condition Profile](StructureDefinition-jp-observation-dentaloral-toothtreatmentcondition.md)

**status**: Final

**category**: Dental, 現存歯の処置状態, ToothTreatmentCondition

**code**: Oral/Dental Status

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2022-10-01

**issued**: 2022-10-24 17:30:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**bodySite**: 右側上顎中切歯

> **component****code**:失活歯

> **component****code**:全部修復（全部非金属冠・材質不明、又は材質記載なし・歯冠色）（ＪＣ）

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-dentaloral-toothtreatmentcondition-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_ToothTreatmentCondition"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "LP89803-8",
          "display" : "Dental"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "exam",
          "display" : "exam"
        }
      ],
      "text" : "現存歯の処置状態"
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS",
          "code" : "DO-1-02",
          "display" : "ToothTreatmentCondition"
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
  "bodySite" : {
    "extension" : [
      {
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_ToothSurface",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSurfaceBodyStructure_CS",
              "code" : "TP-18",
              "display" : "歯冠部"
            }
          ]
        }
      }
    ],
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodySite_CS",
        "code" : "1011",
        "display" : "右側上顎中切歯"
      }
    ]
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalPresentTeethObservation_CS",
            "code" : "TP-3-02",
            "display" : "失活歯"
          },
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimplePresentTeethObservation_CS",
            "code" : "TD-2-10",
            "display" : "現在歯【処置歯○】（ブリッジＢｒ支台を含む）"
          }
        ]
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalPresentTeethObservation_CS",
            "code" : "TP-21-06",
            "display" : "全部修復（全部非金属冠・材質不明、又は材質記載なし・歯冠色）（ＪＣ）"
          },
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimplePresentTeethObservation_CS",
            "code" : "TD-2-10",
            "display" : "現在歯【処置歯○】（ブリッジＢｒ支台を含む）"
          }
        ]
      }
    }
  ]
}

```
