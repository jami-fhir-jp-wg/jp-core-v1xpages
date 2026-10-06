# jp-microbiology-antimicrobialdrug-ns - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-microbiology-antimicrobialdrug-ns**

## NamingSystem: jp-microbiology-antimicrobialdrug-ns 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/NamingSystem/jp-microbiology-antimicrobialdrug-ns
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Microbiology_AntiMicrobialDrug_NamingSystem
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
微生物学的検査抗菌薬コード(Ver.5.2)
本コードは厚生労働省院内感染対策サーベイランス事業(https://janis.mhlw.go.jp/)で作成されているマスタを編集・加工して利用している 

### Summary

| | |
| :--- | :--- |
| Defining URL | http://jpfhir.jp/fhir/core/NamingSystem/jp-microbiology-antimicrobialdrug-ns |
| Version | 1.3.0-dev |
| Name | JP_Microbiology_AntiMicrobialDrug_NamingSystem |
| Status | active |
| Definition | 微生物学的検査抗菌薬コード(Ver.5.2) 本コードは厚生労働省院内感染対策サーベイランス事業(https://janis.mhlw.go.jp/)で作成されているマスタを編集・加工して利用している |
| Publisher | FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) |
| Copyright | Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会 |

### Identifiers

* **Type**: OID
  * **Value**: 1.2.392.100495.10.3.100.5.11.5.2
  * **Preferred**: 
* **Type**: URI
  * **Value**: urn:oid:1.2.392.100495.10.3.100.5.11.5.2
  * **Preferred**: true
* **Type**: URI
  * **Value**: http://jpfhir.jp/fhir/core/CodeSystem/JP_Microbiology_AntiMicrobialDrug_CS
  * **Preferred**: 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "jp-microbiology-antimicrobialdrug-ns",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://jpfhir.jp/fhir/core/NamingSystem/jp-microbiology-antimicrobialdrug-ns"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "1.3.0-dev"
    }
  ],
  "name" : "JP_Microbiology_AntiMicrobialDrug_NamingSystem",
  "status" : "active",
  "kind" : "codesystem",
  "date" : "2023-10-31",
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
  "description" : "微生物学的検査抗菌薬コード(Ver.5.2)  \n本コードは厚生労働省院内感染対策サーベイランス事業(https://janis.mhlw.go.jp/)で作成されているマスタを編集・加工して利用している",
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
      "value" : "1.2.392.100495.10.3.100.5.11.5.2"
    },
    {
      "type" : "uri",
      "value" : "urn:oid:1.2.392.100495.10.3.100.5.11.5.2",
      "preferred" : true
    },
    {
      "type" : "uri",
      "value" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_Microbiology_AntiMicrobialDrug_CS"
    }
  ]
}

```
