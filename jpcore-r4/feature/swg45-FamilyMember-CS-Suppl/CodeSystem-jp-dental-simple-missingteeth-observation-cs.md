# JP Core Dental SimpleMissingTeethObservation CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Dental SimpleMissingTeethObservation CodeSystem**

## CodeSystem: JP Core Dental SimpleMissingTeethObservation CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimpleMissingTeethObservation_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DentalSimpleMissingTeethObservation_CS
* **項目**: *Title*
  * **内容**: JP Core Dental SimpleMissingTeethObservation CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan Dental Association 日本歯科医師会 & FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
JP Coreにて定義した歯科のObservationリソースに関する欠損歯の観察結果コード（簡易版） 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_DentalSipmleMissingTeethObservation_VS](ValueSet-jp-dental-simple-missingteeth-observation-vs.md)
* [JP_DentalTeethObservation_VS](ValueSet-jp-dental-teethobservation-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-dental-simple-missingteeth-observation-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimpleMissingTeethObservation_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_DentalSimpleMissingTeethObservation_CS",
  "title" : "JP Core Dental SimpleMissingTeethObservation CodeSystem",
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
  "description" : "JP Coreにて定義した歯科のObservationリソースに関する欠損歯の観察結果コード（簡易版）",
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
  "copyright" : "Copyright Japan Dental Association 日本歯科医師会 & FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 20,
  "concept" : [
    {
      "code" : "TD-2-50",
      "display" : "欠損歯（レセプト表記略称名：ＭＴ）"
    },
    {
      "code" : "TD-2-51",
      "display" : "欠損歯【喪失歯△】"
    },
    {
      "code" : "TD-2-52",
      "display" : "欠損歯【喪失歯（う蝕が原因による喪失・永久歯）△】"
    },
    {
      "code" : "TD-2-53",
      "display" : "欠損歯【喪失歯（う蝕以外の原因による喪失・永久歯）▲】"
    },
    {
      "code" : "TD-2-54",
      "display" : "欠損歯【喪失歯（乳歯、う蝕以外の原因による喪失・永久歯）無印】"
    },
    {
      "code" : "TD-2-55",
      "display" : "欠損歯【喪失歯（要補綴歯）△】"
    },
    {
      "code" : "TD-2-56",
      "display" : "欠損歯【喪失歯（欠損補綴歯）(△)】"
    },
    {
      "code" : "TD-2-57",
      "display" : "欠損歯【喪失歯（欠損補綴歯・義歯、ＦＤ、ＰＤ）(△)】"
    },
    {
      "code" : "TD-2-58",
      "display" : "欠損歯【喪失歯（欠損補綴歯・義歯・床）(△)】"
    },
    {
      "code" : "TD-2-59",
      "display" : "欠損歯【喪失歯（欠損補綴歯・義歯・人工歯）(△)】"
    },
    {
      "code" : "TD-2-60",
      "display" : "欠損歯【喪失歯（欠損補綴歯・ポンティック、Ｐｏ）(△)】"
    },
    {
      "code" : "TD-2-61",
      "display" : "欠損歯（欠損補綴歯・隙）"
    },
    {
      "code" : "TD-2-62",
      "display" : "欠損歯【喪失歯（インプラント・タイプ不明、Ｉｍ）(△)】"
    },
    {
      "code" : "TD-2-63",
      "display" : "欠損歯【喪失歯（インプラント・ブレードタイプ）(△)】"
    },
    {
      "code" : "TD-2-64",
      "display" : "欠損歯【喪失歯（インプラント・スクリュータイプ）(△)】"
    },
    {
      "code" : "TD-2-65",
      "display" : "欠損歯【喪失歯（インプラント・シリンダータイプ）(△)】"
    },
    {
      "code" : "TD-2-66",
      "display" : "欠損歯【喪失歯（インプラント・その他）(△)】"
    },
    {
      "code" : "TD-2-67",
      "display" : "欠損歯【喪失歯（補綴処置不要歯・永久歯）×】"
    },
    {
      "code" : "TD-2-68",
      "display" : "欠損歯（先天欠如歯）"
    },
    {
      "code" : "TD-2-69",
      "display" : "欠損歯（歯槽窩なし、又は生前の欠損（歯槽窩なし）、又は生前の欠損の疑い（歯槽窩なし））"
    }
  ]
}

```
