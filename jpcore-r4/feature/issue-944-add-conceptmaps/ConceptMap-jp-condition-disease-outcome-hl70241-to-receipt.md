# JP Core Condition Disease Outcome HL7 Table 0241 to Receipt ConceptMap - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Disease Outcome HL7 Table 0241 to Receipt ConceptMap**

## ConceptMap: JP Core Condition Disease Outcome HL7 Table 0241 to Receipt ConceptMap 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ConceptMap/JP_ConditionDiseaseOutcomeHL70241_to_Receipt
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ConditionDiseaseOutcomeHL70241_to_Receipt
* **項目**: *Title*
  * **内容**: JP Core Condition Disease Outcome HL7 Table 0241 to Receipt ConceptMap
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: JP Core: Copyright HL7 Japan (出典：HL7-0241) / レセプト電算: Copyright 社会保険診療報酬支払基金

 
HL7 v2 Table 0241（Patient Outcome）コードとレセプト電算システム転帰区分との対応マッピング。JP Core JP_Condition_Diagnosis プロファイルにおいて、両コード体系で転帰を記録する際の変換の参考として使用する。 

Mapping from [http://jpfhir.jp/fhir/core/CodeSystem/HL70241](CodeSystem-jp-condition-disease-outcome-hl70241-cs.md) to [http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseOutcomeReceipt_CS](CodeSystem-jp-condition-disease-outcome-receipt-cs.md)

**Group 1**Mapping from [JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystemversion: 1.3.0-dev)](CodeSystem-jp-condition-disease-outcome-hl70241-cs.md) to [JP Core Condition Disease Outcome Receipt CodeSystem](CodeSystem-jp-condition-disease-outcome-receipt-cs.md)

* **Source Code**: D (死亡)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 3 (死亡)
  * **Comment**: 
* **Source Code**: R (回復)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 2 (治ゆ)
  * **Comment**: 「治ゆ」は完全回復を指すため、「回復（R）」より狭義。F（完全回復）のみが equivalent。
* **Source Code**: N (回復せず／変わらない)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 1 (治ゆ、死亡、中止以外)
  * **Comment**: 「1：治ゆ・死亡・中止以外」は継続中全般を示すため wider。悪化（W）や後遺症（S）も #1 に含まれる。
* **Source Code**: W (悪化)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 1 (治ゆ、死亡、中止以外)
  * **Comment**: レセプト電算に悪化の直接対応コードがないため「継続（#1）」にマップ。情報が失われる。
* **Source Code**: S (後遺症)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 1 (治ゆ、死亡、中止以外)
  * **Comment**: レセプト電算に後遺症の直接対応コードがないため「継続（#1）」にマップ。
* **Source Code**: F (完全に回復した)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 2 (治ゆ)
  * **Comment**: 
* **Source Code**: U (未知)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: 1 (治ゆ、死亡、中止以外)
  * **Comment**: 不明な転帰の暫定値。実際の転帰確認後に適切なコードに更新すること。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "jp-condition-disease-outcome-hl70241-to-receipt",
  "url" : "http://jpfhir.jp/fhir/core/ConceptMap/JP_ConditionDiseaseOutcomeHL70241_to_Receipt",
  "version" : "1.3.0-dev",
  "name" : "JP_ConditionDiseaseOutcomeHL70241_to_Receipt",
  "title" : "JP Core Condition Disease Outcome HL7 Table 0241 to Receipt ConceptMap",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-07-30",
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
  "description" : "HL7 v2 Table 0241（Patient Outcome）コードとレセプト電算システム転帰区分との対応マッピング。JP Core JP_Condition_Diagnosis プロファイルにおいて、両コード体系で転帰を記録する際の変換の参考として使用する。",
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
  "copyright" : "JP Core: Copyright HL7 Japan (出典：HL7-0241) / レセプト電算: Copyright 社会保険診療報酬支払基金",
  "sourceUri" : "http://jpfhir.jp/fhir/core/CodeSystem/HL70241",
  "targetUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseOutcomeReceipt_CS",
  "group" : [
    {
      "source" : "http://jpfhir.jp/fhir/core/CodeSystem/HL70241",
      "sourceVersion" : "1.3.0-dev",
      "target" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseOutcomeReceipt_CS",
      "element" : [
        {
          "code" : "D",
          "display" : "死亡",
          "target" : [
            {
              "code" : "3",
              "display" : "死亡",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "R",
          "display" : "回復",
          "target" : [
            {
              "code" : "2",
              "display" : "治ゆ",
              "equivalence" : "wider",
              "comment" : "「治ゆ」は完全回復を指すため、「回復（R）」より狭義。F（完全回復）のみが equivalent。"
            }
          ]
        },
        {
          "code" : "N",
          "display" : "回復せず／変わらない",
          "target" : [
            {
              "code" : "1",
              "display" : "治ゆ、死亡、中止以外",
              "equivalence" : "wider",
              "comment" : "「1：治ゆ・死亡・中止以外」は継続中全般を示すため wider。悪化（W）や後遺症（S）も #1 に含まれる。"
            }
          ]
        },
        {
          "code" : "W",
          "display" : "悪化",
          "target" : [
            {
              "code" : "1",
              "display" : "治ゆ、死亡、中止以外",
              "equivalence" : "wider",
              "comment" : "レセプト電算に悪化の直接対応コードがないため「継続（#1）」にマップ。情報が失われる。"
            }
          ]
        },
        {
          "code" : "S",
          "display" : "後遺症",
          "target" : [
            {
              "code" : "1",
              "display" : "治ゆ、死亡、中止以外",
              "equivalence" : "wider",
              "comment" : "レセプト電算に後遺症の直接対応コードがないため「継続（#1）」にマップ。"
            }
          ]
        },
        {
          "code" : "F",
          "display" : "完全に回復した",
          "target" : [
            {
              "code" : "2",
              "display" : "治ゆ",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "U",
          "display" : "未知",
          "target" : [
            {
              "code" : "1",
              "display" : "治ゆ、死亡、中止以外",
              "equivalence" : "relatedto",
              "comment" : "不明な転帰の暫定値。実際の転帰確認後に適切なコードに更新すること。"
            }
          ]
        }
      ]
    }
  ]
}

```
