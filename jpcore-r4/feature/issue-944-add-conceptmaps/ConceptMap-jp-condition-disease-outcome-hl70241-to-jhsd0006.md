# JP Core Condition Disease Outcome HL7 Table 0241 to JHSD0006 ConceptMap - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Disease Outcome HL7 Table 0241 to JHSD0006 ConceptMap**

## ConceptMap: JP Core Condition Disease Outcome HL7 Table 0241 to JHSD0006 ConceptMap 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ConceptMap/JP_ConditionDiseaseOutcomeHL70241_to_JHSD0006
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ConditionDiseaseOutcomeHL70241_to_JHSD0006
* **項目**: *Title*
  * **内容**: JP Core Condition Disease Outcome HL7 Table 0241 to JHSD0006 ConceptMap
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: JP Core: Copyright HL7 Japan (出典：HL7-0241) / JHSD0006: Copyright Japanese Association of Healthcare Information Systems Industry(JAHIS) 一般社団法人保健医療福祉情報システム工業会

 
HL7 v2 Table 0241（Patient Outcome）コードと JAHIS JHSD表0006（転帰区分）との対応マッピング。JP Core JP_Condition_Diagnosis プロファイルにおいて、両コード体系で転帰を記録する際の変換の参考として使用する。2 つの体系は概念的粒度が異なるため、一部のコードは wider または inexact となる。 

Mapping from [http://jpfhir.jp/fhir/core/CodeSystem/HL70241](CodeSystem-jp-condition-disease-outcome-hl70241-cs.md) to [http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006)

**Group 1**Mapping from [JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystemversion: 1.3.0-dev)](CodeSystem-jp-condition-disease-outcome-hl70241-cs.md) to [JP Core Condition Disease Outcome JHSD0006 CodeSystem](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006)

* **Source Code**: D (死亡)
  * **Relationship**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Target Code**: O (その他)
  * **Comment**: JHSD0006 に死亡に直接対応するコードがないため「その他」にマップ。レセプト電算転帰の #3（死亡）との組み合わせ使用を推奨。
* **Source Code**: R (回復)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: M (寛解)
  * **Comment**: 「寛解（M）」は症状の軽減・消失を示し、「回復（R）」の一側面に相当するが、完全回復（F）は寛解の上位概念ではないため wider。
* **Source Code**: N (回復せず／変わらない)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: C (継続)
  * **Comment**: 「継続（C）」は治療継続中を示し、変わらない状態に相当するが、悪化（W）も継続に包含されるため wider。
* **Source Code**: W (悪化)
  * **Relationship**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Target Code**: C (継続)
  * **Comment**: JHSD0006 に悪化の直接対応コードがないため「継続」にマップ。情報が失われるため、悪化状態の記録にはレセプト電算転帰または SNOMED CT マッピングを推奨。
* **Source Code**: S (後遺症)
  * **Relationship**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Target Code**: O (その他)
  * **Comment**: JHSD0006 に後遺症の直接対応コードがない。
* **Source Code**: F (完全に回復した)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: M (寛解)
  * **Comment**: 「寛解（M）」は部分的寛解も含むため wider。完全回復であることをより精確に示すには SNOMED CT マッピング（370996005 Patient's condition resolved）も併用推奨。
* **Source Code**: U (未知)
  * **Relationship**: [is related to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#relatedto)
  * **Target Code**: O (その他)
  * **Comment**: 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "jp-condition-disease-outcome-hl70241-to-jhsd0006",
  "url" : "http://jpfhir.jp/fhir/core/ConceptMap/JP_ConditionDiseaseOutcomeHL70241_to_JHSD0006",
  "version" : "1.3.0-dev",
  "name" : "JP_ConditionDiseaseOutcomeHL70241_to_JHSD0006",
  "title" : "JP Core Condition Disease Outcome HL7 Table 0241 to JHSD0006 ConceptMap",
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
  "description" : "HL7 v2 Table 0241（Patient Outcome）コードと JAHIS JHSD表0006（転帰区分）との対応マッピング。JP Core JP_Condition_Diagnosis プロファイルにおいて、両コード体系で転帰を記録する際の変換の参考として使用する。2 つの体系は概念的粒度が異なるため、一部のコードは wider または inexact となる。",
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
  "copyright" : "JP Core: Copyright HL7 Japan (出典：HL7-0241) / JHSD0006: Copyright Japanese Association of Healthcare Information Systems Industry(JAHIS) 一般社団法人保健医療福祉情報システム工業会",
  "sourceUri" : "http://jpfhir.jp/fhir/core/CodeSystem/HL70241",
  "targetUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006",
  "group" : [
    {
      "source" : "http://jpfhir.jp/fhir/core/CodeSystem/HL70241",
      "sourceVersion" : "1.3.0-dev",
      "target" : "http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006",
      "element" : [
        {
          "code" : "D",
          "display" : "死亡",
          "target" : [
            {
              "code" : "O",
              "display" : "その他",
              "equivalence" : "inexact",
              "comment" : "JHSD0006 に死亡に直接対応するコードがないため「その他」にマップ。レセプト電算転帰の #3（死亡）との組み合わせ使用を推奨。"
            }
          ]
        },
        {
          "code" : "R",
          "display" : "回復",
          "target" : [
            {
              "code" : "M",
              "display" : "寛解",
              "equivalence" : "wider",
              "comment" : "「寛解（M）」は症状の軽減・消失を示し、「回復（R）」の一側面に相当するが、完全回復（F）は寛解の上位概念ではないため wider。"
            }
          ]
        },
        {
          "code" : "N",
          "display" : "回復せず／変わらない",
          "target" : [
            {
              "code" : "C",
              "display" : "継続",
              "equivalence" : "wider",
              "comment" : "「継続（C）」は治療継続中を示し、変わらない状態に相当するが、悪化（W）も継続に包含されるため wider。"
            }
          ]
        },
        {
          "code" : "W",
          "display" : "悪化",
          "target" : [
            {
              "code" : "C",
              "display" : "継続",
              "equivalence" : "inexact",
              "comment" : "JHSD0006 に悪化の直接対応コードがないため「継続」にマップ。情報が失われるため、悪化状態の記録にはレセプト電算転帰または SNOMED CT マッピングを推奨。"
            }
          ]
        },
        {
          "code" : "S",
          "display" : "後遺症",
          "target" : [
            {
              "code" : "O",
              "display" : "その他",
              "equivalence" : "inexact",
              "comment" : "JHSD0006 に後遺症の直接対応コードがない。"
            }
          ]
        },
        {
          "code" : "F",
          "display" : "完全に回復した",
          "target" : [
            {
              "code" : "M",
              "display" : "寛解",
              "equivalence" : "wider",
              "comment" : "「寛解（M）」は部分的寛解も含むため wider。完全回復であることをより精確に示すには SNOMED CT マッピング（370996005 Patient's condition resolved）も併用推奨。"
            }
          ]
        },
        {
          "code" : "U",
          "display" : "未知",
          "target" : [
            {
              "code" : "O",
              "display" : "その他",
              "equivalence" : "relatedto"
            }
          ]
        }
      ]
    }
  ]
}

```
