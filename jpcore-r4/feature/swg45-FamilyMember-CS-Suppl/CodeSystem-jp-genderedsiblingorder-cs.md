# JP Core Gendered Sibling Order CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Gendered Sibling Order CodeSystem**

## CodeSystem: JP Core Gendered Sibling Order CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ValueSet/JP_GenderedSiblingOrder_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_GenderedSiblingOrder_CS
* **項目**: *Title*
  * **内容**: JP Core Gendered Sibling Order CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-12-01 )
* **項目**: *Copyright*
  * **内容**: （一社）日本医療情報学会. CC BY-ND 4.0

 
性別の同胞内出生順を表す日本語ラベル（長男、長女、次男、次女など）を定義するCodeSystem。社会学的・文化的表現。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_GenderedSiblingOrder_VS](ValueSet-jp-genderedsiblingorder-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-genderedsiblingorder-cs",
  "url" : "http://jpfhir.jp/fhir/core/ValueSet/JP_GenderedSiblingOrder_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_GenderedSiblingOrder_CS",
  "title" : "JP Core Gendered Sibling Order CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-12-01",
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
  "description" : "性別の同胞内出生順を表す日本語ラベル（長男、長女、次男、次女など）を定義するCodeSystem。社会学的・文化的表現。",
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
  "copyright" : "（一社）日本医療情報学会. CC BY-ND 4.0",
  "content" : "complete",
  "count" : 20,
  "concept" : [
    {
      "code" : "GSO1_M",
      "display" : "長男"
    },
    {
      "code" : "GSO1_F",
      "display" : "長女"
    },
    {
      "code" : "GSO2_M",
      "display" : "次男"
    },
    {
      "code" : "GSO2_F",
      "display" : "次女"
    },
    {
      "code" : "GSO3_M",
      "display" : "三男"
    },
    {
      "code" : "GSO3_F",
      "display" : "三女"
    },
    {
      "code" : "GSO4_M",
      "display" : "四男"
    },
    {
      "code" : "GSO4_F",
      "display" : "四女"
    },
    {
      "code" : "GSO5_M",
      "display" : "五男"
    },
    {
      "code" : "GSO5_F",
      "display" : "五女"
    },
    {
      "code" : "GSO6_M",
      "display" : "六男"
    },
    {
      "code" : "GSO6_F",
      "display" : "六女"
    },
    {
      "code" : "GSO7_M",
      "display" : "七男"
    },
    {
      "code" : "GSO7_F",
      "display" : "七女"
    },
    {
      "code" : "GSO8_M",
      "display" : "八男"
    },
    {
      "code" : "GSO8_F",
      "display" : "八女"
    },
    {
      "code" : "GSO9_M",
      "display" : "九男"
    },
    {
      "code" : "GSO9_F",
      "display" : "九女"
    },
    {
      "code" : "GSO10_M",
      "display" : "十男"
    },
    {
      "code" : "GSO10_F",
      "display" : "十女"
    }
  ]
}

```
