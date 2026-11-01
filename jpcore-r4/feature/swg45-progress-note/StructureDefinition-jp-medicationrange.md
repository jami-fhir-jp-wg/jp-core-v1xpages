# JP Core Medication Range DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Range DataType**

## Data Type Profile: JP Core Medication Range DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRange
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationRange
* **項目**: *Title*
  * **内容**: JP Core Medication Range DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このデータタイプはRange DataTypeに対して、薬剤量の上限下限に関する定義を行なったものである 

**Usages:**

* This DataType Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationrange)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationrange.csv), [Excel](StructureDefinition-jp-medicationrange.xlsx), [Schematron](StructureDefinition-jp-medicationrange.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationrange",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRange",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationRange",
  "title" : "JP Core Medication Range DataType",
  "status" : "active",
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
  "description" : "このデータタイプはRange DataTypeに対して、薬剤量の上限下限に関する定義を行なったものである",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Range",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Range",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Range",
        "path" : "Range",
        "short" : "薬剤の単位指定された上限下限量",
        "definition" : "薬剤の単位指定された上限下限量",
        "comment" : "薬剤の上限量、下限量の範囲を持っている。単位指定された数量を割り当てている。"
      },
      {
        "id" : "Range.low",
        "path" : "Range.low",
        "short" : "薬剤の上限量",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationSimpleQuantity"
            ]
          }
        ]
      },
      {
        "id" : "Range.high",
        "path" : "Range.high",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationSimpleQuantity"
            ]
          }
        ]
      }
    ]
  }
}

```
