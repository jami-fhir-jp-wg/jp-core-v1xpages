# JP Core Medication Rate Ratio DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Rate Ratio DataType**

## Data Type Profile: JP Core Medication Rate Ratio DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_DosePerPeriod
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationRatio_DosePerPeriod
* **項目**: *Title*
  * **内容**: JP Core Medication Rate Ratio DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このデータタイプはRatio DataTypeに対して、薬剤量／単位時間を表す比率を割り当てた制約と拡張を定めたものである。 

**Usages:**

* Derived from this DataType Profile: [JP Core Medication Rate Ratio DosePerDay DataType](StructureDefinition-jp-medicationratio-doseperday.md)
* Use this DataType Profile: [JP Core MedicationAdministration Injection Profile](StructureDefinition-jp-medicationadministration-injection.md), [JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md), [JP Core MedicationDosage Injection DataType](StructureDefinition-jp-medicationdosage-injection.md) and [JP Core MedicationDosage Base DataType](StructureDefinition-jp-medicationdosagebase.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationratio-doseperperiod)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationratio-doseperperiod.csv), [Excel](StructureDefinition-jp-medicationratio-doseperperiod.xlsx), [Schematron](StructureDefinition-jp-medicationratio-doseperperiod.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationratio-doseperperiod",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_DosePerPeriod",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationRatio_DosePerPeriod",
  "title" : "JP Core Medication Rate Ratio DataType",
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
  "description" : "このデータタイプはRatio DataTypeに対して、薬剤量／単位時間を表す比率を割り当てた制約と拡張を定めたものである。",
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
  "type" : "Ratio",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Ratio",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Ratio",
        "path" : "Ratio",
        "short" : "単位時間内での薬剤の容量",
        "definition" : "単位時間内での薬剤の容量"
      },
      {
        "id" : "Ratio.numerator",
        "path" : "Ratio.numerator",
        "short" : "投与量",
        "definition" : "投与量",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationQuantity"
            ]
          }
        ]
      },
      {
        "id" : "Ratio.numerator.value",
        "path" : "Ratio.numerator.value",
        "short" : "投与量",
        "definition" : "投与量"
      },
      {
        "id" : "Ratio.numerator.unit",
        "path" : "Ratio.numerator.unit",
        "short" : "投与量の単位",
        "definition" : "投与量の単位。"
      },
      {
        "id" : "Ratio.denominator",
        "path" : "Ratio.denominator",
        "short" : "単位時間",
        "definition" : "単位時間"
      },
      {
        "id" : "Ratio.denominator.value",
        "path" : "Ratio.denominator.value",
        "short" : "単位時間",
        "definition" : "単位時間"
      },
      {
        "id" : "Ratio.denominator.unit",
        "path" : "Ratio.denominator.unit",
        "short" : "単位時間の単位",
        "definition" : "単位時間の単位。UCUMを使用する。"
      },
      {
        "id" : "Ratio.denominator.system",
        "path" : "Ratio.denominator.system",
        "short" : "UCUMを識別するURL",
        "definition" : "UCUMを識別するURL。固定値。"
      },
      {
        "id" : "Ratio.denominator.code",
        "path" : "Ratio.denominator.code",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://hl7.org/fhir/ValueSet/units-of-time"
        }
      }
    ]
  }
}

```
