# JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果３（現存歯の処置状態） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果３（現存歯の処置状態）**

## Example Observation: JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果３（現存歯の処置状態）

Profile: [JP Core Observation DentalOral Tooth Treatment Condition Profile](StructureDefinition-jp-observation-dentaloral-toothtreatmentcondition.md)

**status**: Final

**category**: 現存歯の処置状態, Dental, ToothTreatmentCondition

**code**: Oral/Dental Status

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2022-10-01

**issued**: 2022-10-24 17:30:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**bodySite**: 左側上顎第１大臼歯

### Components

| | |
| :--- | :--- |
| - | **Code** |
| * | 部分修復（単純・複雑の情報なし）（金属インレー・金色）（Ｉｎ） |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-dentaloral-toothtreatmentcondition-example-3",
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
          "system" : "http://loinc.org",
          "code" : "LP89803-8",
          "display" : "Dental"
        }
      ]
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
              "code" : "TP-13",
              "display" : "切端・咬合面ＩＯ（切端I又は咬合面Ｏ）"
            }
          ]
        }
      },
      {
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_ToothSurface",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSurfaceBodyStructure_CS",
              "code" : "TP-15",
              "display" : "口蓋側面・舌側面ＰＬ（口蓋側面Ｐ又は舌側面Ｌ（Ｌｉ））"
            }
          ]
        }
      },
      {
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_ToothSurface",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSurfaceBodyStructure_CS",
              "code" : "TP-16",
              "display" : "近心面Ｍ"
            }
          ]
        }
      },
      {
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_ToothSurface",
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSurfaceBodyStructure_CS",
              "code" : "TP-17",
              "display" : "遠心面Ｄ"
            }
          ]
        }
      },
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
        "code" : "1026",
        "display" : "左側上顎第１大臼歯"
      }
    ]
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalPresentTeethObservation_CS",
            "code" : "TP-11-22",
            "display" : "部分修復（単純・複雑の情報なし）（金属インレー・金色）（Ｉｎ）"
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
