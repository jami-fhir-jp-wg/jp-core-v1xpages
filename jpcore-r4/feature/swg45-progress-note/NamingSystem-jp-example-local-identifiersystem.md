# jp-example-local-identifiersystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-example-local-identifiersystem**

## NamingSystem: jp-example-local-identifiersystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/NamingSystem/jp-example-local-identifiersystem
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_local_example_identifiersystem_NamingSystem
* **項目**: *Status*
  * **内容**: Active ( 2025-05-25 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
JP_local_example_identifiersystem_NamingSystem 

### Summary

| | |
| :--- | :--- |
| Defining URL | http://jpfhir.jp/fhir/core/NamingSystem/jp-example-local-identifiersystem |
| Version | 1.3.0-dev |
| Name | JP_local_example_identifiersystem_NamingSystem |
| Status | active |
| Definition | JP_local_example_identifiersystem_NamingSystem |
| Publisher | FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) |
| Copyright | Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会 |

### Identifiers

* **Type**: URI
  * **Value**: http://example.org/abc-hospital/fhir/identifier
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/wado-rs
* **Type**: URI
  * **Value**: http://example.org/terminology/CodeSystem/disease-outcome
* **Type**: URI
  * **Value**: http://example.org/terminology/IdSystem/disease/1311234567
* **Type**: URI
  * **Value**: http://example.org/terminology/CodeSystem/disease/1311234567
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/fhir/identifier/endoscopy/report
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/fhir/Observation/localcode
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/fhir/lab/reportid
* **Type**: URI
  * **Value**: http://samplehospital.org/fhir/endoscopysystem/imaging-orders
* **Type**: URI
  * **Value**: urn:oid:1.2.392.100495.20.3.11.11311234567
* **Type**: URI
  * **Value**: urn:oid:1.2.392.200119.5.2.4.1.1.3
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/fhir/ObservationOrder/localcode
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/fhir/Organization/localcode
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/identifiers/collections
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/specimens/2011
* **Type**: URI
  * **Value**: http://example.org/abc-hospital/fhir/mb/reportid

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "NamingSystem",
  "id" : "jp-example-local-identifiersystem",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url",
      "valueUri" : "http://jpfhir.jp/fhir/core/NamingSystem/jp-example-local-identifiersystem"
    },
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version",
      "valueString" : "1.3.0-dev"
    }
  ],
  "name" : "JP_local_example_identifiersystem_NamingSystem",
  "status" : "active",
  "kind" : "identifier",
  "date" : "2025-05-25",
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
  "description" : "JP_local_example_identifiersystem_NamingSystem",
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
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/fhir/identifier"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/wado-rs"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/terminology/CodeSystem/disease-outcome"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/terminology/IdSystem/disease/1311234567"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/terminology/CodeSystem/disease/1311234567"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/fhir/identifier/endoscopy/report"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/fhir/Observation/localcode"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/fhir/lab/reportid"
    },
    {
      "type" : "uri",
      "value" : "http://samplehospital.org/fhir/endoscopysystem/imaging-orders"
    },
    {
      "type" : "uri",
      "value" : "urn:oid:1.2.392.100495.20.3.11.11311234567"
    },
    {
      "type" : "uri",
      "value" : "urn:oid:1.2.392.200119.5.2.4.1.1.3"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/fhir/ObservationOrder/localcode"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/fhir/Organization/localcode"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/identifiers/collections"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/specimens/2011"
    },
    {
      "type" : "uri",
      "value" : "http://example.org/abc-hospital/fhir/mb/reportid"
    }
  ]
}

```
