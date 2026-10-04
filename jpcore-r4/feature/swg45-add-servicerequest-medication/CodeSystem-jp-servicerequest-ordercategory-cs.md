# JP Core ServiceRequest Order Category CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Category CodeSystem**

## CodeSystem: JP Core ServiceRequest Order Category CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequestOrderCategory_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ServiceRequestOrderCategory_CS
* **項目**: *Title*
  * **内容**: JP Core ServiceRequest Order Category CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2026-10-04 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
ServiceRequestで表現するオーダの種別（処方、注射など）を示すコードシステム。オーダ種別ごとのServiceRequest派生プロファイルにおいて、ServiceRequest.categoryで使用する。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_ServiceRequestOrderCategory_VS](ValueSet-jp-servicerequest-ordercategory-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-servicerequest-ordercategory-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequestOrderCategory_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_ServiceRequestOrderCategory_CS",
  "title" : "JP Core ServiceRequest Order Category CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-04",
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
  "description" : "ServiceRequestで表現するオーダの種別（処方、注射など）を示すコードシステム。オーダ種別ごとのServiceRequest派生プロファイルにおいて、ServiceRequest.categoryで使用する。",
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
  "count" : 2,
  "concept" : [
    {
      "code" : "prescription",
      "display" : "処方",
      "definition" : "処方オーダ（内服・外用など）"
    },
    {
      "code" : "injection",
      "display" : "注射",
      "definition" : "注射オーダ（注射・点滴・注入など）"
    }
  ]
}

```
