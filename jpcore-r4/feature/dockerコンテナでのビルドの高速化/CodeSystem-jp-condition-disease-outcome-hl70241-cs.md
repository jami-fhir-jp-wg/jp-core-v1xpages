# JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystem**

## CodeSystem: JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/HL70241
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ConditionDiseaseOutcomeHL70241_CS
* **項目**: *Title*
  * **内容**: JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright HL7 Japan (出典：HL7-0241)

 
HL7表0241-Patient Outcome コードシステム 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-condition-disease-outcome-hl70241-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/HL70241",
  "version" : "1.3.0-dev",
  "name" : "JP_ConditionDiseaseOutcomeHL70241_CS",
  "title" : "JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-30",
  "publisher" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)",
  "contact" : [
    {
      "name" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://jpfhir.jp"
        },
        {
          "system" : "email",
          "value" : "office@hlfhir.jp"
        }
      ]
    }
  ],
  "description" : "HL7表0241-Patient Outcome コードシステム",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "JP",
          "display" : "Japan"
        }
      ]
    }
  ],
  "copyright" : "Copyright HL7 Japan (出典：HL7-0241)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "D",
      "display" : "死亡"
    },
    {
      "code" : "R",
      "display" : "回復"
    },
    {
      "code" : "N",
      "display" : "回復せず／変わらない"
    },
    {
      "code" : "W",
      "display" : "悪化"
    },
    {
      "code" : "S",
      "display" : "後遺症"
    },
    {
      "code" : "F",
      "display" : "完全に回復した"
    },
    {
      "code" : "U",
      "display" : "未知"
    }
  ]
}

```
