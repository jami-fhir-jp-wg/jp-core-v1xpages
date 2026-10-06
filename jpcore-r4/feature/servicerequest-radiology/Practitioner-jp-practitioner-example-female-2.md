# JP Core Practitioner Example 看護師女性１ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Practitioner Example 看護師女性１**

## Example Practitioner: JP Core Practitioner Example 看護師女性１

Profile: [JP Core Practitioner Profile](StructureDefinition-jp-practitioner.md)

**name**: 福岡 花子, フクオカ ハナコ

**gender**: Female

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "jp-practitioner-example-female-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner"
    ]
  },
  "name" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "IDE"
        }
      ],
      "text" : "福岡 花子",
      "family" : "福岡",
      "given" : ["花子"]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "SYL"
        }
      ],
      "text" : "フクオカ ハナコ",
      "family" : "フクオカ",
      "given" : ["ハナコ"]
    }
  ],
  "gender" : "female"
}

```
