# JP Core Observation Electrocardiogram StressType ValueSet - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Electrocardiogram StressType ValueSet**

## ValueSet: JP Core Observation Electrocardiogram StressType ValueSet 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationElectrocardiogramStressType_VS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ObservationElectrocardiogramStressType_VS
* **項目**: *Title*
  * **内容**: JP Core Observation Electrocardiogram StressType ValueSet
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（負荷タイプ） 

 **References** 

* [JP Core Observation Electrocardiogram StressType Extention](StructureDefinition-jp-observation-electrocardiogram-stresstype.md)

### Logical Definition (CLD)

* Include all codes defined in [`http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationElectrocardiogramStressType_CS`](CodeSystem-jp-observation-electrocardiogram-stresstype-cs.md)version 📦1.3.0-dev

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "jp-observation-electrocardiogram-stresstype-vs",
  "url" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationElectrocardiogramStressType_VS",
  "version" : "1.3.0-dev",
  "name" : "JP_ObservationElectrocardiogramStressType_VS",
  "title" : "JP Core Observation Electrocardiogram StressType ValueSet",
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
  "compose" : {
    "include" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationElectrocardiogramStressType_CS"
      }
    ]
  }
}

```
