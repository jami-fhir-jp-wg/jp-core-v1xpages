# JP Core Dental RootBodyStructure CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Dental RootBodyStructure CodeSystem**

## CodeSystem: JP Core Dental RootBodyStructure CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalRootBodyStructure_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DentalRootBodyStructure_CS
* **項目**: *Title*
  * **内容**: JP Core Dental RootBodyStructure CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-06-12 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan Dental Association 日本歯科医師会 & FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
JP Coreにて定義した歯科のObservationリソースに関する歯根に関する部位構造コード 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_DentalRootBodyStructure_VS](ValueSet-jp-dental-rootbodystructure-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-dental-rootbodystructure-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalRootBodyStructure_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_DentalRootBodyStructure_CS",
  "title" : "JP Core Dental RootBodyStructure CodeSystem",
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
  "description" : "JP Coreにて定義した歯科のObservationリソースに関する歯根に関する部位構造コード",
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
  "count" : 8,
  "concept" : [
    {
      "code" : "1",
      "display" : "遠心頬側根"
    },
    {
      "code" : "2",
      "display" : "近心頬側根"
    },
    {
      "code" : "3",
      "display" : "近心頬側根および遠心頬側根"
    },
    {
      "code" : "4",
      "display" : "舌側（口蓋）根"
    },
    {
      "code" : "5",
      "display" : "舌側（口蓋）根および遠心頬側根"
    },
    {
      "code" : "6",
      "display" : "舌側（口蓋）根および近心頬側根"
    },
    {
      "code" : "7",
      "display" : "遠心根"
    },
    {
      "code" : "8",
      "display" : "近心根"
    }
  ]
}

```
