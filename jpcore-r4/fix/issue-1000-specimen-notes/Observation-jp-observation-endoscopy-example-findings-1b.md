# JP Core Observation Endoscopy Example 所見（[大腸 肉眼型1] Is(p)） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Endoscopy Example 所見（[大腸 肉眼型1] Is(p)）**

## Example Observation: JP Core Observation Endoscopy Example 所見（[大腸 肉眼型1] Is(p)）

Profile: [JP Core Observation Endoscopy Profile](StructureDefinition-jp-observation-endoscopy.md)

**status**: Final

**category**: Procedure, 内視鏡

**code**: 内視鏡所見

**subject**: [山田 太郎](Patient-jp-patient-example-1.md)

**encounter**: [Encounter: status = finished; class = 外来 (ActCode#AMB); period = 2022-05-08 13:08:24+0900 --> 2022-05-08 13:23:24+0900](Encounter-jp-encounter-example-1.md)

**effective**: 2024-06-30 10:24:30+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**value**: [大腸 肉眼型1] Is(p)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-endoscopy-example-findings-1b",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Endoscopy"
    ]
  },
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
    },
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "LP7796-8",
          "display" : "内視鏡"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "19778-0",
        "display" : "Indications description Narrative Endoscopy"
      }
    ],
    "text" : "内視鏡所見"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "encounter" : {
    "reference" : "Encounter/jp-encounter-example-1"
  },
  "effectiveDateTime" : "2024-06-30T10:24:30+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "urn:oid:1.2.392.200270.4.1000.1",
        "code" : "Z2L20301",
        "display" : "[大腸 肉眼型1] Is(p)"
      }
    ],
    "text" : "[大腸 肉眼型1] Is(p)"
  }
}

```
