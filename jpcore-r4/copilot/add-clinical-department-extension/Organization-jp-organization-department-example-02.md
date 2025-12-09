# JP Core Organization Department Example 整形外科診療科 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Department Example 整形外科診療科**

## Example Organization: JP Core Organization Department Example 整形外科診療科

Profile: [JP Core Organization Department Profile](StructureDefinition-jp-organization-department.md)

**type**: 整形外科

**name**: 整形外科

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
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
          "code" : "16",
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
