# JP Core Observation DentalOral eCS Example 口腔診査結果（診療情報提供書用） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation DentalOral eCS Example 口腔診査結果（診療情報提供書用）**

## Example Observation: JP Core Observation DentalOral eCS Example 口腔診査結果（診療情報提供書用）

Profile: [JP Core Observation DentalOral eCS Profile](StructureDefinition-jp-observation-dentaloral-ecs.md)

**status**: Final

**category**: 現存歯の処置状態, Dental, ClinicalInformationSharing

**code**: Referral note

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2022-10-01

**issued**: 2022-10-24 17:30:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**value**: 歯の破折（ＦｒＴ）

**bodySite**: 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-dentaloral-ecs-example",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_eCS"
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
          "code" : "DO-1-04",
          "display" : "ClinicalInformationSharing"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "57133-1",
        "display" : "Referral note"
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
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalPresentTeethObservation_CS",
        "code" : "TP-9-15",
        "display" : "歯の破折（ＦｒＴ）"
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
      },
      {
        "extension" : [
          {
            "url" : "structure",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodySite_CS",
                  "code" : "1042",
                  "display" : "右側下顎側切歯"
                }
              ]
            }
          },
          {
            "url" : "qualifier",
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
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodyStructure_eCS"
      },
      {
        "extension" : [
          {
            "url" : "structure",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalBodySite_CS",
                  "code" : "1041",
                  "display" : "右側下顎中切歯"
                }
              ]
            }
          },
          {
            "url" : "qualifier",
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
        "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodyStructure_eCS"
      }
    ]
  }
}

```
