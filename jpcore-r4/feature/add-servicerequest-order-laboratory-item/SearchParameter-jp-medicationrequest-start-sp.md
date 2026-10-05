# jp-medicationrequest-start-sp - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-medicationrequest-start-sp**

## SearchParameter: jp-medicationrequest-start-sp 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/SearchParameter/JP_MedicationRequest_Start_SP
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationRequest_Start_SP
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
MedicationRequestリソースをExtensionの服用期間の開始日で検索するパラメータを定義する。 

## JP_MedicationRequest_Start_SP

Parameter `jp-medication-start`:`date`

MedicationRequestリソースをExtensionの服用期間の開始日で検索するパラメータを定義する。

| | |
| :--- | :--- |
| Resource | [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html) |
| Expression | `MedicationRequest.dosageInstruction.extension('http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse').value.ofType(Period).start` |
| Processing Mode | Normal |
| Multiples | * multipleAnd: The parameter may repeat in order to specify multiple values that must all be true
* multipleOr: The parameter may have multiple values (separated by comma) where at least one must be true
 |
| Comparators | Allowed: eq, ne, gt, ge, lt, le, sa, eb, ap |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "jp-medicationrequest-start-sp",
  "url" : "http://jpfhir.jp/fhir/core/SearchParameter/JP_MedicationRequest_Start_SP",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationRequest_Start_SP",
  "status" : "active",
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
  "description" : "MedicationRequestリソースをExtensionの服用期間の開始日で検索するパラメータを定義する。",
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
  "code" : "jp-medication-start",
  "base" : ["MedicationRequest"],
  "type" : "date",
  "expression" : "MedicationRequest.dosageInstruction.extension('http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse').value.ofType(Period).start",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "_multipleOr" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }
    ]
  },
  "multipleAnd" : true,
  "_multipleAnd" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }
    ]
  },
  "comparator" : [
    "eq",
    "ne",
    "gt",
    "ge",
    "lt",
    "le",
    "sa",
    "eb",
    "ap"
  ]
}

```
