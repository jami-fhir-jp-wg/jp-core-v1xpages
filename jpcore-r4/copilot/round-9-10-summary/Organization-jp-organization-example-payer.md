# JP Core Organization Example ひまわり健康保険組合 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Example ひまわり健康保険組合**

## Example Organization: JP Core Organization Example ひまわり健康保険組合

Profile: [JP Core Organization Profile](StructureDefinition-jp-organization.md)

**identifier**: [JP_Insurer_Number_NamingSystem](NamingSystem-jp-insurer-number-namingsystem.md)/7654321

**type**: Payer

**name**: ひまわり健康保険組合

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "jp-organization-example-payer",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
    ]
  },
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/InsurerNumber",
      "value" : "7654321"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "pay",
          "display" : "Payer"
        }
      ]
    }
  ],
  "name" : "ひまわり健康保険組合"
}

```
