# JP Core Observation Electrocardiogram StressType CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Electrocardiogram StressType CodeSystem**

## CodeSystem: JP Core Observation Electrocardiogram StressType CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationElectrocardiogramStressType_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ObservationElectrocardiogramStressType_CS
* **項目**: *Title*
  * **内容**: JP Core Observation Electrocardiogram StressType CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（負荷タイプ） 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_ObservationElectrocardiogramStressType_VS](ValueSet-jp-observation-electrocardiogram-stresstype-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-observation-electrocardiogram-stresstype-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationElectrocardiogramStressType_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_ObservationElectrocardiogramStressType_CS",
  "title" : "JP Core Observation Electrocardiogram StressType CodeSystem",
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
  "description" : "JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（負荷タイプ）",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 13,
  "concept" : [
    {
      "code" : "JECGST0000",
      "display" : "安静時"
    },
    {
      "code" : "JECGST0100",
      "display" : "SM",
      "definition" : "Single Master"
    },
    {
      "code" : "JECGST0200",
      "display" : "DM",
      "definition" : "Double Master"
    },
    {
      "code" : "JECGST0300",
      "display" : "TM",
      "definition" : "Triple Master"
    },
    {
      "code" : "JECGST0400",
      "display" : "1/2",
      "definition" : "1/2 Master"
    },
    {
      "code" : "JECGST0500",
      "display" : "1/4",
      "definition" : "1/4 Master"
    },
    {
      "code" : "JECGST0600",
      "display" : "立位"
    },
    {
      "code" : "JECGST0700",
      "display" : "顔面浸水負荷"
    },
    {
      "code" : "JECGST0800",
      "display" : "過換気負荷"
    },
    {
      "code" : "JECGST0900",
      "display" : "エルゴメータ"
    },
    {
      "code" : "JECGST1000",
      "display" : "トレッドミル"
    },
    {
      "code" : "JECGST1100",
      "display" : "その他の運動負荷"
    },
    {
      "code" : "JECGST1200",
      "display" : "薬物"
    }
  ]
}

```
