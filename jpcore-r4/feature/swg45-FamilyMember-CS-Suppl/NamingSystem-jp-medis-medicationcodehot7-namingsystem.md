# jp-medis-medicationcodehot7-namingsystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-medis-medicationcodehot7-namingsystem**

## NamingSystem: jp-medis-medicationcodehot7-namingsystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/NamingSystem/jp-medis-medicationcodehot7-namingsystem
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MEDIS_MedicationCodeHOT7_NamingSystem
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
JP Core MedicationCode HOT7 NamingSystem MEDIS 医薬品処方用番号（ＨＯＴ７） 

### Summary

| | |
| :--- | :--- |
| Defining URL | http://jpfhir.jp/fhir/core/NamingSystem/jp-medis-medicationcodehot7-namingsystem |
| Version | 1.3.0-dev |
| Name | JP_MEDIS_MedicationCodeHOT7_NamingSystem |
| Status | active |
| Definition | JP Core MedicationCode HOT7 NamingSystem MEDIS 医薬品処方用番号（ＨＯＴ７） |
| Publisher | FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) |
| Copyright | Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG |

### Identifiers

* **Type**: OID
  * **Value**: 1.2.392.200119.4.403.2
  * **Preferred**: 
* **Type**: URI
  * **Value**: urn:oid:1.2.392.200119.4.403.2
  * **Preferred**: 
* **Type**: URI
  * **Value**: http://medis.or.jp/CodeSystem/master-HOT7
  * **Preferred**: true

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "jp-medis-medicationcodehot7-namingsystem",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://jpfhir.jp/fhir/core/NamingSystem/jp-medis-medicationcodehot7-namingsystem"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "1.3.0-dev"
    }
  ],
  "name" : "JP_MEDIS_MedicationCodeHOT7_NamingSystem",
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
  "description" : "JP Core MedicationCode HOT7 NamingSystem　MEDIS 医薬品処方用番号（ＨＯＴ７）",
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
      "value" : "1.2.392.200119.4.403.2"
    },
    {
      "type" : "uri",
      "value" : "urn:oid:1.2.392.200119.4.403.2"
    },
    {
      "type" : "uri",
      "value" : "http://medis.or.jp/CodeSystem/master-HOT7",
      "preferred" : true
    }
  ]
}

```
