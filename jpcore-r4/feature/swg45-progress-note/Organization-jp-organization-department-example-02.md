# JP Core Organization Department Example 内科診療科（ローカルコード使用） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Department Example 内科診療科（ローカルコード使用）**

## Example Organization: JP Core Organization Department Example 内科診療科（ローカルコード使用）

Profile: [JP Core Organization Department Profile](StructureDefinition-jp-organization-department.md)

**identifier**: `http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationRequestDepartment/11312345670`/DEPT-001

**type**: Hospital Department

**name**: 第一内科

**telecom**: ph: 03-1234-5678(Work)

**partOf**: [健康第一病院](Organization-jp-organization-example-hospital.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "jp-organization-department-example-02",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization_Department"
    ]
  },
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationRequestDepartment/11312345670",
      "value" : "DEPT-001",
      "assigner" : {
        "reference" : "Organization/jp-organization-example-hospital",
        "display" : "健康第一病院"
      }
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "dept",
          "display" : "Hospital Department"
        },
        {
          "system" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
          "code" : "01",
          "display" : "内科"
        }
      ]
    }
  ],
  "name" : "第一内科",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "03-1234-5678",
      "use" : "work"
    }
  ],
  "partOf" : {
    "reference" : "Organization/jp-organization-example-hospital",
    "display" : "健康第一病院"
  }
}

```
