# JP Core Condition Disease Outcome Receipt CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Disease Outcome Receipt CodeSystem**

## CodeSystem: JP Core Condition Disease Outcome Receipt CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseOutcomeReceipt_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ConditionDieaseOutcomeReceipt_CS
* **項目**: *Title*
  * **内容**: JP Core Condition Disease Outcome Receipt CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright 社会保険診療報酬支払基金

 
レセプト電算システム 転帰区分 コードシステム 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_ConditionDiseaseOutcomeReceipt_VS](ValueSet-jp-condition-disease-outcome-receipt-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-condition-disease-outcome-receipt-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseOutcomeReceipt_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_ConditionDieaseOutcomeReceipt_CS",
  "title" : "JP Core Condition Disease Outcome Receipt CodeSystem",
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
  "description" : "レセプト電算システム 転帰区分 コードシステム",
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
  "copyright" : "Copyright 社会保険診療報酬支払基金",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [
    {
      "code" : "1",
      "display" : "治ゆ、死亡、中止以外"
    },
    {
      "code" : "2",
      "display" : "治ゆ"
    },
    {
      "code" : "3",
      "display" : "死亡"
    },
    {
      "code" : "4",
      "display" : "中止（転医）"
    }
  ]
}

```
