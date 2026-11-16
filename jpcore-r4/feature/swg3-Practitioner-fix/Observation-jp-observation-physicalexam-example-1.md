# JP Core Observation PhysicalExam Example 身体所見（腹痛） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation PhysicalExam Example 身体所見（腹痛）**

## Example Observation: JP Core Observation PhysicalExam Example 身体所見（腹痛）

Profile: [JP Core Observation PhysicalExam Profile](StructureDefinition-jp-observation-physicalexam.md)

**status**: Final

**category**: Exam

**code**: Physical Findings

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**encounter**: [Encounter: status = finished; class = 外来 (ActCode#AMB); period = 2022-05-08 13:08:24+0900 --> 2022-05-08 13:23:24+0900](Encounter-jp-encounter-example-1.md)

**effective**: 2021-07-09 17:00:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**value**: Yes

**bodySite**: 下腹部

**method**: 触診

### Components

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | Detailed Physical Findings | 圧痛あり |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-physicalexam-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_PhysicalExam"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "exam",
          "display" : "Exam"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_PhysicalExamCode_CS",
        "code" : "physical-findings",
        "display" : "Physical Findings"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "encounter" : {
    "reference" : "Encounter/jp-encounter-example-1"
  },
  "effectiveDateTime" : "2021-07-09T17:00:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0532",
        "code" : "Y",
        "display" : "Yes"
      }
    ]
  },
  "bodySite" : {
    "text" : "下腹部"
  },
  "method" : {
    "text" : "触診"
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_PhysicalExamCode_CS",
            "code" : "detailed-physical-findings",
            "display" : "Detailed Physical Findings"
          }
        ]
      },
      "valueString" : "圧痛あり"
    }
  ]
}

```
