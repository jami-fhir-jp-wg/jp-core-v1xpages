# JP Core ObservationDentalCategory CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ObservationDentalCategory CodeSystem**

## CodeSystem: JP Core ObservationDentalCategory CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ObservationDentalCategory_CS
* **項目**: *Title*
  * **内容**: JP Core ObservationDentalCategory CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan Dental Association 日本歯科医師会 & FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
JP Coreにて定義した歯科のObservationリソースに関するカテゴリのコード 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_ObservationDetailedDentalCategory_VS](ValueSet-jp-observation-detailed-dental-category-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-observation-dental-category-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_ObservationDentalCategory_CS",
  "title" : "JP Core ObservationDentalCategory CodeSystem",
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
  "description" : "JP Coreにて定義した歯科のObservationリソースに関するカテゴリのコード",
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
  "count" : 4,
  "concept" : [
    {
      "code" : "DO-1-01",
      "display" : "ToothExistence"
    },
    {
      "code" : "DO-1-02",
      "display" : "ToothTreatmentCondition"
    },
    {
      "code" : "DO-1-03",
      "display" : "MissingToothCondition"
    },
    {
      "code" : "DO-1-04",
      "display" : "ClinicalInformationSharing"
    }
  ]
}

```
