# JP Core Organization Department Example 整形外科診療科（SS-MIX2コード使用） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Department Example 整形外科診療科（SS-MIX2コード使用）**

## Example Organization: JP Core Organization Department Example 整形外科診療科（SS-MIX2コード使用）

Profile: [JP Core Organization Department Profile](StructureDefinition-jp-organization-department.md)

**identifier**: [JP_Department_SsMix_NamingSystem](NamingSystem-jp-department-ssmix-namingsystem.md)/07

**type**: Hospital Department

**name**: 整形外科

**partOf**: [健康第一病院](Organization-jp-organization-example-hospital.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "jp-organization-department-example-03",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization_Department"
    ]
  },
  "identifier" : [
    {
      "system" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
      "value" : "07"
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
          "code" : "07",
          "display" : "整形外科"
        }
      ]
    }
  ],
  "name" : "整形外科",
  "partOf" : {
    "reference" : "Organization/jp-organization-example-hospital",
    "display" : "健康第一病院"
  }
}

```
