# JP Core Gendered Sibling Birth Order CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Gendered Sibling Birth Order CodeSystem**

## CodeSystem: JP Core Gendered Sibling Birth Order CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_GenderedSiblingBirthOrder_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_GenderedSiblingBirthOrder_CS
* **項目**: *Title*
  * **内容**: JP Core Gendered Sibling Birth Order CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-12-01 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
社会学的・文化的な性別の同胞内出生順の名称を定義するCodeSystem。日本国内では、長女、長男、次女、次男など。性の多様性はtext要素に詳述。外国人の場合、出身国の文化に基づく同胞内出生順の名称を表現するコードシステムを拡張することで対応できる。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_GenderedSiblingBirthOrder_VS](ValueSet-jp-genderedsiblingbirthorder-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-genderedsiblingbirthorder-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_GenderedSiblingBirthOrder_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_GenderedSiblingBirthOrder_CS",
  "title" : "JP Core Gendered Sibling Birth Order CodeSystem",
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
  "description" : "社会学的・文化的な性別の同胞内出生順の名称を定義するCodeSystem。日本国内では、長女、長男、次女、次男など。性の多様性はtext要素に詳述。外国人の場合、出身国の文化に基づく同胞内出生順の名称を表現するコードシステムを拡張することで対応できる。",
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
  "copyright" : "Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
  "content" : "complete",
  "count" : 22,
  "concept" : [
    {
      "code" : "GSBO1_M",
      "display" : "長男"
    },
    {
      "code" : "GSBO1_F",
      "display" : "長女"
    },
    {
      "code" : "GSBO2_M",
      "display" : "次男"
    },
    {
      "code" : "GSBO2_F",
      "display" : "次女"
    },
    {
      "code" : "GSBO3_M",
      "display" : "三男"
    },
    {
      "code" : "GSBO3_F",
      "display" : "三女"
    },
    {
      "code" : "GSBO4_M",
      "display" : "四男"
    },
    {
      "code" : "GSBO4_F",
      "display" : "四女"
    },
    {
      "code" : "GSBO5_M",
      "display" : "五男"
    },
    {
      "code" : "GSBO5_F",
      "display" : "五女"
    },
    {
      "code" : "GSBO6_M",
      "display" : "六男"
    },
    {
      "code" : "GSBO6_F",
      "display" : "六女"
    },
    {
      "code" : "GSBO7_M",
      "display" : "七男"
    },
    {
      "code" : "GSBO7_F",
      "display" : "七女"
    },
    {
      "code" : "GSBO8_M",
      "display" : "八男"
    },
    {
      "code" : "GSBO8_F",
      "display" : "八女"
    },
    {
      "code" : "GSBO9_M",
      "display" : "九男"
    },
    {
      "code" : "GSBO9_F",
      "display" : "九女"
    },
    {
      "code" : "GSBO10_M",
      "display" : "十男"
    },
    {
      "code" : "GSBO10_F",
      "display" : "十女"
    },
    {
      "code" : "GSBO_OTHER",
      "display" : "その他（text要素に詳細を記載）"
    },
    {
      "code" : "GSBO_NOS",
      "display" : "詳細不明(text要素に詳細を記載)"
    }
  ]
}

```
