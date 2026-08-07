# JP Core Encounter Example 外来 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Encounter Example 外来**

## Example Encounter: JP Core Encounter Example 外来

Profile: [JP Core Encounter Profile](StructureDefinition-jp-encounter.md)

**status**: Finished

**class**: [ActCode: AMB](http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB) (外来)

**subject**: [山田 太郎](Patient-jp-patient-example-1.md)

### Participants

| | |
| :--- | :--- |
| - | **Individual** |
| * | [東京 春子](Practitioner-jp-practitioner-example-female-1.md) |

**period**: 2022-05-08 13:08:24+0900 --> 2022-05-08 13:23:24+0900

**serviceProvider**: [太郎花子クリニック](Organization-jp-organization-example-clinic.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "jp-encounter-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter"
    ]
  },
  "status" : "finished",
  "class" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
    "code" : "AMB"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "participant" : [
    {
      "individual" : {
        "reference" : "Practitioner/jp-practitioner-example-female-1",
        "display" : "東京 春子"
      }
    }
  ],
  "period" : {
    "start" : "2022-05-08T13:08:24+09:00",
    "end" : "2022-05-08T13:23:24+09:00"
  },
  "serviceProvider" : {
    "reference" : "Organization/jp-organization-example-clinic",
    "display" : "太郎花子クリニック"
  }
}

```
