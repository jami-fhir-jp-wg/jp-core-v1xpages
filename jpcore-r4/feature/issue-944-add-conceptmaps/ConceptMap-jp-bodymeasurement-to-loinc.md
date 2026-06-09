# JP Core BodyMeasurement to LOINC ConceptMap - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core BodyMeasurement to LOINC ConceptMap**

## ConceptMap: JP Core BodyMeasurement to LOINC ConceptMap 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ConceptMap/JP_BodyMeasurement_to_LOINC
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_BodyMeasurement_to_LOINC
* **項目**: *Title*
  * **内容**: JP Core BodyMeasurement to LOINC ConceptMap
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: JP Core: Copyright MEDIS-DC 一般財団法人 医療情報システム開発センター / LOINC: This content LOINC® is copyright © 1995+ Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.

 
JP Core 身体計測コード（MEDIS 看護実践用語標準マスター由来）と LOINC との対応マッピング。相互運用性向上のための参考マッピングであり、すべての項目を網羅しているわけではない。マッピングの採用にあたっては各施設の臨床的判断が必要。 

Mapping from [http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationBodyMeasurementCode_CS](CodeSystem-jp-observation-bodymeasurement-code-cs.md) to [http://loinc.org](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://loinc.org)

**Group 1**Mapping from [JP Core Observation BodyMeasurement Code CodeSystemversion: 1.3.0-dev)](CodeSystem-jp-observation-bodymeasurement-code-cs.md) to [Loinc CodeSystem PART file + Core Table Japanese Modification](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://loinc.org)

* **Source Code**: 31000296 (体重(Kg))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 29463-7 (Body weight)
  * **Comment**: 
* **Source Code**: 31000297 (体重(g))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 29463-7 (Body weight)
  * **Comment**: 単位は g だが体重という概念は同一。LOINC 29463-7 で UCUM単位 g を指定して表現する。
* **Source Code**: 31000298 (身長)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 8302-2 (Body height)
  * **Comment**: 
* **Source Code**: 31000299 (胸囲)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 9561-3 (Chest circumference at xiphoid process)
  * **Comment**: LOINCの概念は胸骨剣状突起レベルを指定しているが、JP側はレベル未指定。
* **Source Code**: 31000300 (腹囲（臍上）)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 8280-0 (Waist Circumference at umbilicus [Length] by Tape measure)
  * **Comment**: 
* **Source Code**: 31000301 (腹囲)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 56115-9 (Waist Circumference by Tape measure)
  * **Comment**: 
* **Source Code**: 31001697 (体脂肪率)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 41982-0 (Percentage of body fat Measured)
  * **Comment**: 
* **Source Code**: 31002900 (出生体重)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 8339-4 (Birth weight Measured)
  * **Comment**: 
* **Source Code**: 31003020 (ＢＭＩ)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 39156-5 (Body mass index (BMI) [Ratio])
  * **Comment**: 
* **Source Code**: 31003138 (標準体重)
  * **Relationship**: [maps loosely to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#inexact)
  * **Target Code**: 59574-4 (Body weight special circumstances)
  * **Comment**: LOINCに標準体重（理想体重）の直接対応コードがないため暫定。
* **Source Code**: 31003421 (上腕周囲長（ＡＣ）)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 56072-2 (Arm circumference)
  * **Comment**: LOINCは上腕の左右を区別しないため wider。
* **Source Code**: 31003422 (下腿周囲長（ＣＣ）)
  * **Relationship**: [maps to wider concept](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#wider)
  * **Target Code**: 56162-1 (Calf circumference)
  * **Comment**: LOINCは下腿の左右を区別しないため wider。
* **Source Code**: 31006116 (頭囲)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 9843-4 (Head Occipital-frontal circumference by Tape measure)
  * **Comment**: 
* **Source Code**: 31006215 (握力（右）)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 62951-8 (Grip strength Hand - right Dynamometer)
  * **Comment**: 
* **Source Code**: 31006216 (握力（左）)
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 62952-6 (Grip strength Hand - left Dynamometer)
  * **Comment**: 
* **Source Code**: 31003727 (体重変化量(Kg))
  * **Relationship**: [is equivalent to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equivalent)
  * **Target Code**: 79300-3 (Weight change [Mass])
  * **Comment**: 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "jp-bodymeasurement-to-loinc",
  "url" : "http://jpfhir.jp/fhir/core/ConceptMap/JP_BodyMeasurement_to_LOINC",
  "version" : "1.3.0-dev",
  "name" : "JP_BodyMeasurement_to_LOINC",
  "title" : "JP Core BodyMeasurement to LOINC ConceptMap",
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
  "description" : "JP Core 身体計測コード（MEDIS 看護実践用語標準マスター由来）と LOINC との対応マッピング。相互運用性向上のための参考マッピングであり、すべての項目を網羅しているわけではない。マッピングの採用にあたっては各施設の臨床的判断が必要。",
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
  "copyright" : "JP Core: Copyright MEDIS-DC 一般財団法人 医療情報システム開発センター / LOINC: This content LOINC® is copyright © 1995+ Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.",
  "sourceUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationBodyMeasurementCode_CS",
  "targetUri" : "http://loinc.org",
  "group" : [
    {
      "source" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationBodyMeasurementCode_CS",
      "sourceVersion" : "1.3.0-dev",
      "target" : "http://loinc.org",
      "element" : [
        {
          "code" : "31000296",
          "display" : "体重(Kg)",
          "target" : [
            {
              "code" : "29463-7",
              "display" : "Body weight",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31000297",
          "display" : "体重(g)",
          "target" : [
            {
              "code" : "29463-7",
              "display" : "Body weight",
              "equivalence" : "equivalent",
              "comment" : "単位は g だが体重という概念は同一。LOINC 29463-7 で UCUM単位 g を指定して表現する。"
            }
          ]
        },
        {
          "code" : "31000298",
          "display" : "身長",
          "target" : [
            {
              "code" : "8302-2",
              "display" : "Body height",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31000299",
          "display" : "胸囲",
          "target" : [
            {
              "code" : "9561-3",
              "display" : "Chest circumference at xiphoid process",
              "equivalence" : "wider",
              "comment" : "LOINCの概念は胸骨剣状突起レベルを指定しているが、JP側はレベル未指定。"
            }
          ]
        },
        {
          "code" : "31000300",
          "display" : "腹囲（臍上）",
          "target" : [
            {
              "code" : "8280-0",
              "display" : "Waist Circumference at umbilicus [Length] by Tape measure",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31000301",
          "display" : "腹囲",
          "target" : [
            {
              "code" : "56115-9",
              "display" : "Waist Circumference by Tape measure",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31001697",
          "display" : "体脂肪率",
          "target" : [
            {
              "code" : "41982-0",
              "display" : "Percentage of body fat Measured",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31002900",
          "display" : "出生体重",
          "target" : [
            {
              "code" : "8339-4",
              "display" : "Birth weight Measured",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31003020",
          "display" : "ＢＭＩ",
          "target" : [
            {
              "code" : "39156-5",
              "display" : "Body mass index (BMI) [Ratio]",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31003138",
          "display" : "標準体重",
          "target" : [
            {
              "code" : "59574-4",
              "display" : "Body weight special circumstances",
              "equivalence" : "inexact",
              "comment" : "LOINCに標準体重（理想体重）の直接対応コードがないため暫定。"
            }
          ]
        },
        {
          "code" : "31003421",
          "display" : "上腕周囲長（ＡＣ）",
          "target" : [
            {
              "code" : "56072-2",
              "display" : "Arm circumference",
              "equivalence" : "wider",
              "comment" : "LOINCは上腕の左右を区別しないため wider。"
            }
          ]
        },
        {
          "code" : "31003422",
          "display" : "下腿周囲長（ＣＣ）",
          "target" : [
            {
              "code" : "56162-1",
              "display" : "Calf circumference",
              "equivalence" : "wider",
              "comment" : "LOINCは下腿の左右を区別しないため wider。"
            }
          ]
        },
        {
          "code" : "31006116",
          "display" : "頭囲",
          "target" : [
            {
              "code" : "9843-4",
              "display" : "Head Occipital-frontal circumference by Tape measure",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31006215",
          "display" : "握力（右）",
          "target" : [
            {
              "code" : "62951-8",
              "display" : "Grip strength Hand - right Dynamometer",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31006216",
          "display" : "握力（左）",
          "target" : [
            {
              "code" : "62952-6",
              "display" : "Grip strength Hand - left Dynamometer",
              "equivalence" : "equivalent"
            }
          ]
        },
        {
          "code" : "31003727",
          "display" : "体重変化量(Kg)",
          "target" : [
            {
              "code" : "79300-3",
              "display" : "Weight change [Mass]",
              "equivalence" : "equivalent"
            }
          ]
        }
      ]
    }
  ]
}

```
