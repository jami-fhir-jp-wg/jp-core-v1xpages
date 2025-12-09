# JP Core Organization Example ＡＢＣ検査株式会社 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Example ＡＢＣ検査株式会社**

## Example Organization: JP Core Organization Example ＡＢＣ検査株式会社

Profile: [JP Core Organization Profile](StructureDefinition-jp-organization.md)

**identifier**: [JP_local_example_identifiersystem_NamingSystem](NamingSystem-jp-example-local-identifiersystem.md)/000-000-000

**type**: Organizational team

**name**: ひまわりＡＢＣ検査株式会社健康保険組合

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "jp-organization-example-inspection",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
    ]
  },
  "identifier" : [
    {
      "system" : "http://abc-hospital.local/fhir/Organization/localcode",
      "value" : "000-000-000"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "team",
          "display" : "Organizational team"
        }
      ]
    }
  ],
  "name" : "ひまわりＡＢＣ検査株式会社健康保険組合"
}

```
