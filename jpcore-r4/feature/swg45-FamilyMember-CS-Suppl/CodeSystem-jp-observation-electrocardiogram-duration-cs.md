# JP Core Observation Electrocardiogram Duration CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Electrocardiogram Duration CodeSystem**

## CodeSystem: JP Core Observation Electrocardiogram Duration CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationElectrocardiogramDuration_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ObservationElectrocardiogramDuration_CS
* **項目**: *Title*
  * **内容**: JP Core Observation Electrocardiogram Duration CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（検査時間） 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_ObservationElectrocardiogramDuration_VS](ValueSet-jp-observation-electrocardiogram-duration-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-observation-electrocardiogram-duration-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationElectrocardiogramDuration_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_ObservationElectrocardiogramDuration_CS",
  "title" : "JP Core Observation Electrocardiogram Duration CodeSystem",
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
  "description" : "JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（検査時間）",
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
  "copyright" : "Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "JECGDU0010",
      "display" : "30s"
    },
    {
      "code" : "JECGDU0020",
      "display" : "1m"
    },
    {
      "code" : "JECGDU0030",
      "display" : "3m"
    },
    {
      "code" : "JECGDU0040",
      "display" : "5m"
    },
    {
      "code" : "JECGDU0100",
      "display" : "24H"
    },
    {
      "code" : "JECGDU0200",
      "display" : "7日"
    },
    {
      "code" : "JECGDU0300",
      "display" : "14日"
    }
  ]
}

```
