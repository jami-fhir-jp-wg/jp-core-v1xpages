# JP Core Dental FundamentalStatus CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Dental FundamentalStatus CodeSystem**

## CodeSystem: JP Core Dental FundamentalStatus CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalFundamentalStatus_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DentalFundamentalStatus_CS
* **項目**: *Title*
  * **内容**: JP Core Dental FundamentalStatus CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan Dental Association 日本歯科医師会 & FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
JP Coreにて定義した歯科のObservationリソースに関する歯の基礎状態コード 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_DentalFundamentalStatus_VS](ValueSet-jp-dental-fundamentalstatus-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-dental-fundamentalstatus-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalFundamentalStatus_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_DentalFundamentalStatus_CS",
  "title" : "JP Core Dental FundamentalStatus CodeSystem",
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
  "description" : "JP Coreにて定義した歯科のObservationリソースに関する歯の基礎状態コード",
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
  "copyright" : "Copyright Japan Dental Association 日本歯科医師会 & FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "TB-3-0",
      "display" : "現存歯"
    },
    {
      "code" : "TB-3-2",
      "display" : "欠損歯"
    }
  ]
}

```
