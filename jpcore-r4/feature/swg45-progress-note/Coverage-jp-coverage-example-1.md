# JP Core Coverage Example 健康保険証 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Coverage Example 健康保険証**

## Example Coverage: JP Core Coverage Example 健康保険証

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "jp-coverage-example-1",
  "meta" : {
    "profile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage"]
  },
  "contained" : [
    {
      "resourceType" : "Organization",
      "id" : "jp-organization-example-assigner",
      "meta" : {
        "profile" : [
          "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
        ]
      },
      "identifier" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/InsurerNumber",
          "value" : "12345"
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
      "name" : "あじさい健康保険組合"
    }
  ],
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSymbol",
      "valueString" : "あいう"
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber",
      "valueString" : "１８７"
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber",
      "valueString" : "05"
    }
  ],
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID",
      "value" : "00012345:あいう:１８７:05",
      "assigner" : {
        "reference" : "#jp-organization-example-assigner"
      }
    }
  ],
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "PUBLICPOL"
      }
    ]
  },
  "subscriberId" : "あいう:１８７",
  "beneficiary" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "dependent" : "05",
  "payor" : [
    {
      "reference" : "#jp-organization-example-assigner"
    }
  ]
}

```
