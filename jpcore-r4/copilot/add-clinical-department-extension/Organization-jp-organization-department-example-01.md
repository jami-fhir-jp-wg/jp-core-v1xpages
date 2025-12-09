# JP Core Organization Department Example 内科診療科 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Department Example 内科診療科**

## Example Organization: JP Core Organization Department Example 内科診療科

Profile: [JP Core Organization Department Profile](StructureDefinition-jp-organization-department.md)

**identifier**: [JP_imedical_institution_identifier_NamingSystem](NamingSystem-jp-medical-institution-identifier.md)/1234567890

**type**: 内科

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
  "id" : "jp-organization-department-example-01",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization_Department"
    ]
  },
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no",
      "value" : "1234567890"
    }
  ],
  "type" : [
    {
      "coding" : [
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
