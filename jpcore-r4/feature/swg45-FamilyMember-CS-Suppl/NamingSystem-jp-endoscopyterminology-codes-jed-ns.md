# jp-endoscopyterminology-codes-jed-ns - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-endoscopyterminology-codes-jed-ns**

## NamingSystem: jp-endoscopyterminology-codes-jed-ns 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/NamingSystem/jp-endoscopyterminology-codes-jed-ns
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Endoscopy_TerminologyCodes_JED_NamingSystem
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
日本消化器内視鏡学会が推進するJED (Japan Endoscopy Database) Projectで定義されるコード 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "jp-endoscopyterminology-codes-jed-ns",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://jpfhir.jp/fhir/core/NamingSystem/jp-endoscopyterminology-codes-jed-ns"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "1.3.0-dev"
    }
  ],
  "name" : "JP_Endoscopy_TerminologyCodes_JED_NamingSystem",
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
  "description" : "日本消化器内視鏡学会が推進するJED (Japan Endoscopy Database) Projectで定義されるコード",
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
      "value" : "1.2.392.200270.4.1000.1"
    },
    {
      "type" : "uri",
      "value" : "urn:oid:1.2.392.200270.4.1000.1",
      "preferred" : true
    },
    {
      "type" : "uri",
      "value" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_EndoscopyTerminologyCodesJED_CS"
    }
  ]
}

```
