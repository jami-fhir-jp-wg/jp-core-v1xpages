# JP Core Organization Department Example 循環器内科（両方のコード使用） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Department Example 循環器内科（両方のコード使用）**

## Example Organization: JP Core Organization Department Example 循環器内科（両方のコード使用）

Profile: [JP Core Organization Department Profile](StructureDefinition-jp-organization-department.md)

**identifier**: [JP_Department_SsMix_NamingSystem](NamingSystem-jp-department-ssmix-namingsystem.md)/03

**type**: Hospital Department

**name**: 循環器内科

**telecom**: ph: 03-1234-5680(Work)

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
      "system" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
      "value" : "03",
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
          "code" : "81",
          "display" : "循環器内科"
        }
      ]
    }
  ],
  "name" : "循環器内科",
  "telecom" : [
    {
      "system" : "phone",
      "value" : "03-1234-5680",
      "use" : "work"
    }
  ],
  "partOf" : {
    "reference" : "Organization/jp-organization-example-hospital",
    "display" : "健康第一病院"
  }
}

```
