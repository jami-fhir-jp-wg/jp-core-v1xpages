# JP Core Dental Surface BodyStructure CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Dental Surface BodyStructure CodeSystem**

## CodeSystem: JP Core Dental Surface BodyStructure CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSurfaceBodyStructure_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DentalSurfaceBodyStructure_CS
* **項目**: *Title*
  * **内容**: JP Core Dental Surface BodyStructure CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-06-12 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan Dental Association 日本歯科医師会 & FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
JP Coreにて定義した歯科のObservationリソースに関する歯面に関連する詳細部位構造コード 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_DentalSurfaceBodyStructure_VS](ValueSet-jp-dental-surfacebodystructure-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-dental-surfacebodystructure-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSurfaceBodyStructure_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_DentalSurfaceBodyStructure_CS",
  "title" : "JP Core Dental Surface BodyStructure CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-06-12",
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
  "description" : "JP Coreにて定義した歯科のObservationリソースに関する歯面に関連する詳細部位構造コード",
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
  "count" : 6,
  "concept" : [
    {
      "code" : "TP-13",
      "display" : "切端・咬合面ＩＯ（切端I又は咬合面Ｏ）"
    },
    {
      "code" : "TP-14",
      "display" : "唇側面・頬側面Ｂ（唇側面Ｌａ、頬側面Ｂ又は口腔前庭面Ｖ）"
    },
    {
      "code" : "TP-15",
      "display" : "口蓋側面・舌側面ＰＬ（口蓋側面Ｐ又は舌側面Ｌ（Ｌｉ））"
    },
    {
      "code" : "TP-16",
      "display" : "近心面Ｍ"
    },
    {
      "code" : "TP-17",
      "display" : "遠心面Ｄ"
    },
    {
      "code" : "TP-18",
      "display" : "歯冠部"
    }
  ]
}

```
