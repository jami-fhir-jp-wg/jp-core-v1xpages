# JP Core Observation BodyMeasurement Example 身体計測（体重） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation BodyMeasurement Example 身体計測（体重）**

## Example Observation: JP Core Observation BodyMeasurement Example 身体計測（体重）

Profile: [JP Core Observation BodyMeasurement Profile](StructureDefinition-jp-observation-bodymeasurement.md)

**status**: Final

**category**: 身体計測, 体重

**code**: abc-local-456

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**encounter**: [Encounter: status = finished; class = 外来 (ActCode#AMB); period = 2022-05-08 13:08:24+0900 --> 2022-05-08 13:23:24+0900](Encounter-jp-encounter-example-1.md)

**effective**: 2021-10-19 10:00:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**value**: 63.5 kg

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-bodyMeasurement-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_BodyMeasurement"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "body-measurement",
          "display" : "身体計測"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationBodyMeasurementCategory_CS",
          "code" : "weight",
          "display" : "体重"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
        "code" : "abc-local-456"
      },
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationBodyMeasurementCode_CS",
        "code" : "31000296"
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
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "valueQuantity" : {
    "value" : 63.5,
    "unit" : "kg"
  }
}

```
