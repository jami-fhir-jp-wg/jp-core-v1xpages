# JP Core ProcedureRole Example 精神科外来サービス担当 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ProcedureRole Example 精神科外来サービス担当**

## Example PractitionerRole: JP Core ProcedureRole Example 精神科外来サービス担当

Profile: [JP Core PractitionerRole Profile](StructureDefinition-jp-practitionerrole.md)

**identifier**: `http://www.acme.org/practitioners`/23

**active**: true

**period**: 2012-01-01 --> 2012-03-31

**practitioner**: [大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**organization**: [健康第一病院](Organization-jp-organization-example-hospital.md)

**code**: 医師

**location**: [外来101診察室](Location-jp-location-example-examinationroom.md)

**telecom**: ph: 3456(Work), [ichiro.osaka@example.org](mailto:ichiro.osaka@example.org)

> **availableTime****daysOfWeek**: Monday, Tuesday, Wednesday**availableStartTime**: 09:00:00**availableEndTime**: 16:30:00

> **availableTime****daysOfWeek**: Thursday, Friday**availableStartTime**: 09:00:00**availableEndTime**: 12:00:00

### NotAvailables

| | | |
| :--- | :--- | :--- |
| - | **Description** | **During** |
| * | 大阪 一郎は2017年5月中に長期休暇を取る予定です。 | 2017-05-01 --> 2017-05-20 |

**availabilityExceptions**: 祝祭日やクリスマス・年末年始の休暇中は、大阪 一郎は休日です。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "jp-practitionerrole-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole"
    ]
  },
  "identifier" : [
    {
      "system" : "http://www.acme.org/practitioners",
      "value" : "23"
    }
  ],
  "active" : true,
  "period" : {
    "start" : "2012-01-01",
    "end" : "2012-03-31"
  },
  "practitioner" : {
    "reference" : "Practitioner/jp-practitioner-example-male-1",
    "display" : "大阪 一郎"
  },
  "organization" : {
    "reference" : "Organization/jp-organization-example-hospital",
    "display" : "健康第一病院"
  },
  "code" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_PractitionerRole_CS",
          "code" : "JPR10000"
        }
      ]
    }
  ],
  "location" : [
    {
      "reference" : "Location/jp-location-example-examinationroom",
      "display" : "外来101診察室"
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "3456",
      "use" : "work"
    },
    {
      "system" : "email",
      "value" : "ichiro.osaka@example.org",
      "use" : "work"
    }
  ],
  "availableTime" : [
    {
      "daysOfWeek" : ["mon", "tue", "wed"],
      "availableStartTime" : "09:00:00",
      "availableEndTime" : "16:30:00"
    },
    {
      "daysOfWeek" : ["thu", "fri"],
      "availableStartTime" : "09:00:00",
      "availableEndTime" : "12:00:00"
    }
  ],
  "notAvailable" : [
    {
      "description" : "大阪 一郎は2017年5月中に長期休暇を取る予定です。",
      "during" : {
        "start" : "2017-05-01",
        "end" : "2017-05-20"
      }
    }
  ],
  "availabilityExceptions" : "祝祭日やクリスマス・年末年始の休暇中は、大阪 一郎は休日です。"
}

```
