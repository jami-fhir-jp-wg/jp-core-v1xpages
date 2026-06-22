# JP Core Medication Time Range DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Time Range DataType**

## Data Type Profile: JP Core Medication Time Range DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRange_UnitOfTime
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationRange_UnitOfTime
* **項目**: *Title*
  * **内容**: JP Core Medication Time Range DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このデータタイプはRange DataTypeに対して、時間の上限下限に関する定義を行なったものである 

**Usages:**

* Use this DataType Profile: [JP Core MedicationDosage Injection DataType](StructureDefinition-jp-medicationdosage-injection.md) and [JP Core MedicationDosage DataType](StructureDefinition-jp-medicationdosage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationrange-unitoftime)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationrange-unitoftime.csv), [Excel](StructureDefinition-jp-medicationrange-unitoftime.xlsx), [Schematron](StructureDefinition-jp-medicationrange-unitoftime.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationrange-unitoftime",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRange_UnitOfTime",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationRange_UnitOfTime",
  "title" : "JP Core Medication Time Range DataType",
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
  "description" : "このデータタイプはRange DataTypeに対して、時間の上限下限に関する定義を行なったものである",
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
        "short" : "範囲指定された時間の上限下限",
        "definition" : "範囲指定された時間の上限下限",
        "comment" : "時間の上限量、下限量の範囲を持っている。単位指定された数量を割り当てている。Low,Highの値は時間の単位当てはめる。"
      },
      {
        "id" : "Range.low",
        "path" : "Range.low",
        "short" : "時間範囲（下限）"
      },
      {
        "id" : "Range.low.value",
        "path" : "Range.low.value",
        "short" : "時間範囲（下限）",
        "definition" : "時間範囲（下限）"
      },
      {
        "id" : "Range.low.unit",
        "path" : "Range.low.unit",
        "short" : "単位時間の単位"
      },
      {
        "id" : "Range.low.system",
        "path" : "Range.low.system",
        "short" : "UCUMを識別するURL",
        "definition" : "UCUMを識別するURL。固定値。"
      },
      {
        "id" : "Range.low.code",
        "path" : "Range.low.code",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time"
        }
      },
      {
        "id" : "Range.high",
        "path" : "Range.high",
        "short" : "時間範囲（上限）"
      },
      {
        "id" : "Range.high.value",
        "path" : "Range.high.value",
        "short" : "時間範囲（上限）",
        "definition" : "時間範囲（上限）"
      },
      {
        "id" : "Range.high.unit",
        "path" : "Range.high.unit",
        "short" : "単位時間の単位"
      },
      {
        "id" : "Range.high.system",
        "path" : "Range.high.system",
        "short" : "UCUMを識別するURL",
        "definition" : "UCUMを識別するURL。固定値。"
      },
      {
        "id" : "Range.high.code",
        "path" : "Range.high.code",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time"
        }
      }
    ]
  }
}

```
