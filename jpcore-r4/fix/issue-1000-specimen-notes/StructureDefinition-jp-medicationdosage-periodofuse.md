# JP Core Medication Dosage PeriodOfUse Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Dosage PeriodOfUse Extension**

## Extension: JP Core Medication Dosage PeriodOfUse Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationDosage_PeriodOfUse
* **項目**: *Title*
  * **内容**: JP Core Medication Dosage PeriodOfUse Extension
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

投与開始日を格納する拡張

処方日とは別に明示的に投与・内服開始日を指定するため。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core MedicationDosage DataType](StructureDefinition-jp-medicationdosage.md)
* Examples for this Extension: [MedicationRequest/jp-medicationrequest-example-1](MedicationRequest-jp-medicationrequest-example-1.md) and [MedicationRequest/jp-medicationrequest-example-2](MedicationRequest-jp-medicationrequest-example-2.md)
* Search Parameters using this Extension: [JP_MedicationRequest_Start_SP](SearchParameter-jp-medicationrequest-start-sp.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationdosage-periodofuse)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationdosage-periodofuse.csv), [Excel](StructureDefinition-jp-medicationdosage-periodofuse.xlsx), [Schematron](StructureDefinition-jp-medicationdosage-periodofuse.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationdosage-periodofuse",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationDosage_PeriodOfUse",
  "title" : "JP Core Medication Dosage PeriodOfUse Extension",
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
  "description" : "投与開始日を格納する拡張",
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
  "purpose" : "処方日とは別に明示的に投与・内服開始日を指定するため。",
  "copyright" : "Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Dosage"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "投与期間の開始日を明示するための拡張",
        "definition" : "MedicationRequestの投与期間の開始日を明示するための拡張"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "投与期間を表す",
        "definition" : "MedicationRequestに投与期間の開始日を明示するための拡張",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.value[x].start",
        "path" : "Extension.value[x].start",
        "short" : "投与期間の開始日",
        "definition" : "明示された投与期間の開始日",
        "min" : 1
      }
    ]
  }
}

```
