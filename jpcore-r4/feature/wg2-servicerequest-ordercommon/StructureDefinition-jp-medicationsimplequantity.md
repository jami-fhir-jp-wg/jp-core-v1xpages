# JP Core Medication Simple Quantity DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Simple Quantity DataType**

## Data Type Profile: JP Core Medication Simple Quantity DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationSimpleQuantity
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationSimpleQuantity
* **項目**: *Title*
  * **内容**: JP Core Medication Simple Quantity DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このデータタイプはSimpleQuantity DataTypeに対して、JP Coreにおける薬剤量に関する定義を行なったものである 

**Usages:**

* Use this DataType Profile: [JP Core Immunization Profile](StructureDefinition-jp-immunization.md), [JP Core MedicationAdministration Injection Profile](StructureDefinition-jp-medicationadministration-injection.md), [JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md), [JP Core MedicationDispenseBase Profile](StructureDefinition-jp-medicationdispensebase.md)...Show 6 more,[JP Core MedicationDosage Injection DataType](StructureDefinition-jp-medicationdosage-injection.md),[JP Core MedicationDosage DataType](StructureDefinition-jp-medicationdosage.md),[JP Core MedicationDosage Base DataType](StructureDefinition-jp-medicationdosagebase.md),[JP Core Medication Range DataType](StructureDefinition-jp-medicationrange.md),[JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md)and[JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationsimplequantity)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationsimplequantity.csv), [Excel](StructureDefinition-jp-medicationsimplequantity.xlsx), [Schematron](StructureDefinition-jp-medicationsimplequantity.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationsimplequantity",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationSimpleQuantity",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationSimpleQuantity",
  "title" : "JP Core Medication Simple Quantity DataType",
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
  "description" : "このデータタイプはSimpleQuantity DataTypeに対して、JP Coreにおける薬剤量に関する定義を行なったものである",
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
  "type" : "Quantity",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/SimpleQuantity",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Quantity",
        "path" : "Quantity",
        "short" : "薬剤に関する数量と単位を定めた簡易データイプ",
        "definition" : "薬剤に関する数量と単位を定めた簡易データイプ",
        "comment" : "薬剤に関する簡易的な数量と単位を定めている。ValueおよびCodeを必須とし、comparatorは記述不可。単位についてはMERIT9医薬品単位略号の利用を推進している。(**SHOULD**)"
      },
      {
        "id" : "Quantity.value",
        "path" : "Quantity.value",
        "short" : "（精度が暗示された）数値",
        "definition" : "計測された量。精度を含めた値が暗示される。",
        "comment" : "暗示された精度については常に尊重すべきである。貨幣計算では制度に関する独自のルールがある（会計についての標準的な教科書を参照すること）。",
        "min" : 1
      },
      {
        "id" : "Quantity.unit",
        "path" : "Quantity.unit",
        "short" : "単位表現",
        "definition" : "人間にも可読な単位表現",
        "comment" : "FHIRの文字列は1MB以上の大きさとなってなはらない(SHALL NOT)。",
        "requirements" : "コンテキストによってさまざまな単位の表現がある。固定された特定の表現が求められることがある。たとえば、mcgはmicrogramを表す。"
      },
      {
        "id" : "Quantity.system",
        "path" : "Quantity.system",
        "short" : "コード化された単位表現を規定するシステム",
        "definition" : "単位をコード化して表現するシステムについてのID。",
        "comment" : "以下参照。 http://en.wikipedia.org/wiki/Uniform_resource_identifier",
        "requirements" : "システムによって定義される単位のコードを把握しておく必要がある。"
      },
      {
        "id" : "Quantity.code",
        "path" : "Quantity.code",
        "short" : "単位のコード化された形式、【JP Core仕様】MERIT9医薬品単位略号マスタコードを推奨",
        "definition" : "単位のコード化された形式、【JP Core仕様】MERIT9医薬品単位略号マスタコードを推奨(**SHOULD**)",
        "comment" : "単位のコード化された形式、【JP Core仕様】MERIT9医薬品単位略号マスタコードを推奨(**SHOULD**)されるが、ローカルコード等を利用することも可能とする",
        "min" : 1,
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationUnitMERIT9_VS"
        }
      }
    ]
  }
}

```
