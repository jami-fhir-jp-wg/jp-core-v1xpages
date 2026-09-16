# jp-department-ssmix-namingsystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-department-ssmix-namingsystem**

## NamingSystem: jp-department-ssmix-namingsystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/NamingSystem/jp-department-ssmix-namingsystem
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Department_SsMix_NamingSystem
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
JP Core Department SsMix NamingSystem JAMI SSMIX2診療科コード表 

### Summary

| | |
| :--- | :--- |
| Defining URL | http://jpfhir.jp/fhir/core/NamingSystem/jp-department-ssmix-namingsystem |
| Version | 1.3.0-dev |
| Name | JP_Department_SsMix_NamingSystem |
| Status | active |
| Definition | JP Core Department SsMix NamingSystem JAMI SSMIX2診療科コード表 |
| Publisher | FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) |
| Copyright | Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会 |

### Identifiers

* **Type**: OID
  * **Value**: 1.2.392.200250.2.2.2
  * **Preferred**: 
* **Type**: URI
  * **Value**: urn:oid:1.2.392.200250.2.2.2
  * **Preferred**: 
* **Type**: URI
  * **Value**: http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment
  * **Preferred**: true

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "jp-department-ssmix-namingsystem",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://jpfhir.jp/fhir/core/NamingSystem/jp-department-ssmix-namingsystem"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "1.3.0-dev"
    }
  ],
  "name" : "JP_Department_SsMix_NamingSystem",
  "status" : "active",
  "kind" : "codesystem",
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
  "description" : "JP Core Department SsMix NamingSystem JAMI SSMIX2診療科コード表",
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
  "uniqueId" : [
    {
      "type" : "oid",
      "value" : "1.2.392.200250.2.2.2"
    },
    {
      "type" : "uri",
      "value" : "urn:oid:1.2.392.200250.2.2.2"
    },
    {
      "type" : "uri",
      "value" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
      "preferred" : true
    }
  ]
}

```
