# JP Core Medication Dosage UsageDuration Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Dosage UsageDuration Extension**

## Extension: JP Core Medication Dosage UsageDuration Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_UsageDuration
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationDosage_UsageDuration
* **項目**: *Title*
  * **内容**: JP Core Medication Dosage UsageDuration Extension
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

隔日投与など、服用開始日から終了日までの日数と実投与日数が異なる場合に、実投与日数を明⽰したい場合に使用する拡張

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core MedicationDosage DataType](StructureDefinition-jp-medicationdosage.md)
* Examples for this Extension: [MedicationRequest/jp-medicationrequest-example-1](MedicationRequest-jp-medicationrequest-example-1.md) and [MedicationRequest/jp-medicationrequest-example-2](MedicationRequest-jp-medicationrequest-example-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationdosage-usageduration)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationdosage-usageduration.csv), [Excel](StructureDefinition-jp-medicationdosage-usageduration.xlsx), [Schematron](StructureDefinition-jp-medicationdosage-usageduration.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationdosage-usageduration",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_UsageDuration",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationDosage_UsageDuration",
  "title" : "JP Core Medication Dosage UsageDuration Extension",
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
  "description" : "隔日投与など、服用開始日から終了日までの日数と実投与日数が異なる場合に、実投与日数を明⽰したい場合に使用する拡張",
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
        "short" : "実投与日数",
        "definition" : "隔日投与などで実投与日数と処方期間が異なる場合に用いられる。"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_UsageDuration"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "short" : "実投与日数",
        "definition" : "隔日投与などで実投与日数と処方期間が異なる場合に用いられる。",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      },
      {
        "id" : "Extension.value[x].id",
        "path" : "Extension.value[x].id",
        "short" : "エレメント間参照のためのID",
        "definition" : "JP Coreでは使用されない。"
      },
      {
        "id" : "Extension.value[x].value",
        "path" : "Extension.value[x].value",
        "short" : "実投与日数",
        "definition" : "隔日投与などで実投与日数と処方期間が異なる場合に用いられる。"
      },
      {
        "id" : "Extension.value[x].unit",
        "path" : "Extension.value[x].unit",
        "short" : "実投与日数単位",
        "definition" : "「日」で固定される",
        "fixedString" : "日"
      },
      {
        "id" : "Extension.value[x].system",
        "path" : "Extension.value[x].system",
        "short" : "UCUM",
        "definition" : "単位コード UCUMを識別するURI。固定値。",
        "fixedUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Extension.value[x].code",
        "path" : "Extension.value[x].code",
        "short" : "単位コードUCUMにおける実投与日数の単位",
        "definition" : "単位コードUCUMにおける実投与日数の単位。dで固定される",
        "fixedCode" : "d"
      }
    ]
  }
}

```
