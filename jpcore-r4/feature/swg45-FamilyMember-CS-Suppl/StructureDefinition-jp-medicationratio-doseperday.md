# JP Core Medication Rate Ratio DosePerDay DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Rate Ratio DosePerDay DataType**

## Data Type Profile: JP Core Medication Rate Ratio DosePerDay DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_DosePerDay
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationRatio_DosePerDay
* **項目**: *Title*
  * **内容**: JP Core Medication Rate Ratio DosePerDay DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このデータタイプはJP_MedicationRatio_DosePerPeriod DataTypeに対して、一日あたりの薬剤料（薬剤量／単位時間）を表す比率を割り当てた制約と拡張を定めたものである。 

**Usages:**

* Use this DataType Profile: [JP Core MedicationDosage DataType](StructureDefinition-jp-medicationdosage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationratio-doseperday)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationratio-doseperday.csv), [Excel](StructureDefinition-jp-medicationratio-doseperday.xlsx), [Schematron](StructureDefinition-jp-medicationratio-doseperday.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationratio-doseperday",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_DosePerDay",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationRatio_DosePerDay",
  "title" : "JP Core Medication Rate Ratio DosePerDay DataType",
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
  "description" : "このデータタイプはJP_MedicationRatio_DosePerPeriod DataTypeに対して、一日あたりの薬剤料（薬剤量／単位時間）を表す比率を割り当てた制約と拡張を定めたものである。",
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
  "copyright" : "Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG",
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
  "type" : "Ratio",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_DosePerPeriod",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Ratio",
        "path" : "Ratio",
        "short" : "１日当たりでの薬剤の投入量",
        "definition" : "１日当たりでの薬剤の投入量"
      },
      {
        "id" : "Ratio.denominator.value",
        "path" : "Ratio.denominator.value",
        "short" : "単位時間(１日)",
        "definition" : "単位時間(１日)固定",
        "fixedDecimal" : 1
      },
      {
        "id" : "Ratio.denominator.unit",
        "path" : "Ratio.denominator.unit",
        "fixedString" : "日"
      },
      {
        "id" : "Ratio.denominator.system",
        "path" : "Ratio.denominator.system",
        "fixedUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Ratio.denominator.code",
        "path" : "Ratio.denominator.code",
        "fixedCode" : "d",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time"
        }
      }
    ]
  }
}

```
