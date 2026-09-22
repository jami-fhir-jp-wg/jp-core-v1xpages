# JP Core Observation VitalSigns Example バイタル（呼吸数） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation VitalSigns Example バイタル（呼吸数）**

## Example Observation: JP Core Observation VitalSigns Example バイタル（呼吸数）

Profile: [JP Core Observation VitalSigns Profile](StructureDefinition-jp-observation-vitalsigns.md)

**status**: Final

**category**: Vital Signs, 呼吸機能

**code**: 呼吸数

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**encounter**: [Encounter: status = finished; class = 外来 (ActCode#AMB); period = 2022-05-08 13:08:24+0900 --> 2022-05-08 13:23:24+0900](Encounter-jp-encounter-example-1.md)

**effective**: 2021-10-19 10:00:00+0900

**performer**: [Practitioner 愛知 太郎](Practitioner-jp-practitioner-example-male-2.md)

**value**: 16 回/分(Details: UCUM code/min = '/min')

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-vitalsigns-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_VitalSigns"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationVitalSignsCategory_CS",
          "code" : "respiratory-function",
          "display" : "呼吸機能"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
        "code" : "abc-local-456",
        "display" : "呼吸数"
      },
      {
        "system" : "http://medis.or.jp/CodeSystem/master-nursingObservationKeyCode",
        "code" : "31001369",
        "display" : "呼吸数"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "encounter" : {
    "reference" : "Encounter/jp-encounter-example-1"
  },
  "effectiveDateTime" : "2021-10-19T10:00:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-2"
    }
  ],
  "valueQuantity" : {
    "value" : 16,
    "unit" : "回/分",
    "system" : "http://unitsofmeasure.org",
    "code" : "/min"
  }
}

```
