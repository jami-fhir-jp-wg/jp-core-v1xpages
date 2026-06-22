# JP Core MedicationDosage DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationDosage DataType**

## Data Type Profile: JP Core MedicationDosage DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosage
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationDosage
* **項目**: *Title*
  * **内容**: JP Core MedicationDosage DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このデータタイプは内服用法の制約と拡張のうち共通部分を定めている。 

**Usages:**

* Use this DataType Profile: [JP Core MedicationDispense Profile](StructureDefinition-jp-medicationdispense.md), [JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md) and [JP Core MedicationStatement Profile](StructureDefinition-jp-medicationstatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationdosage)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationdosage.csv), [Excel](StructureDefinition-jp-medicationdosage.xlsx), [Schematron](StructureDefinition-jp-medicationdosage.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationdosage",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosage",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationDosage",
  "title" : "JP Core MedicationDosage DataType",
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
  "description" : "このデータタイプは内服用法の制約と拡張のうち共通部分を定めている。",
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
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosageBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Dosage.extension:periodOfUse",
        "path" : "Dosage.extension",
        "sliceName" : "periodOfUse",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.extension:usageDuration",
        "path" : "Dosage.extension",
        "sliceName" : "usageDuration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_UsageDuration"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.timing.repeat.bounds[x]",
        "path" : "Dosage.timing.repeat.bounds[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Dosage.timing.repeat.bounds[x]:boundsDuration",
        "path" : "Dosage.timing.repeat.bounds[x]",
        "sliceName" : "boundsDuration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Duration"
          }
        ]
      },
      {
        "id" : "Dosage.timing.repeat.bounds[x]:boundsDuration.value",
        "path" : "Dosage.timing.repeat.bounds[x].value",
        "short" : "投薬日数",
        "definition" : "投薬日数"
      },
      {
        "id" : "Dosage.timing.repeat.bounds[x]:boundsDuration.unit",
        "path" : "Dosage.timing.repeat.bounds[x].unit",
        "short" : "投薬日数の単位",
        "definition" : "投薬日数の単位文字列。日で固定される",
        "fixedString" : "日"
      },
      {
        "id" : "Dosage.timing.repeat.bounds[x]:boundsDuration.system",
        "path" : "Dosage.timing.repeat.bounds[x].system",
        "short" : "UCUM",
        "definition" : "単位コード UCUMを識別するURI。固定値。",
        "fixedUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "Dosage.timing.repeat.bounds[x]:boundsDuration.code",
        "path" : "Dosage.timing.repeat.bounds[x].code",
        "short" : "投与日数の単位",
        "definition" : "単位コードUCUMにおける投与日数の単位。dで固定される。",
        "fixedCode" : "d"
      },
      {
        "id" : "Dosage.timing.code",
        "path" : "Dosage.timing.code",
        "comment" : "BIDなどは「施設特有の時間」として定義される。たとえば、施設がBIDを「つねに朝7時と夕方6時」であると指定することがある。この指定が不適切であれば、BIDというコードは使うべきではない。その代わり、HL7が定義したBIDのコードではなく、その施設特有のコードで明示的に示すべきであり、構造化された表現を使うべきである（この場合、2回のイベントの時刻を指定する必要がある）。  \n【JP Core仕様】JAMI標準用法コード(16桁)を使用することが望ましいが、ローカルコードも使用可能。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationUsageJAMI_VS"
        }
      },
      {
        "id" : "Dosage.doseAndRate.dose[x]",
        "path" : "Dosage.doseAndRate.dose[x]",
        "short" : "1回投与量",
        "definition" : "1回投与量",
        "comment" : "この量は指定された薬剤の量を指定するものであって、各有効成分の量を指定するものではない。各成分の量はMedication resourceで伝えることができる。たとえば、有効成分が375mgである錠剤を1錠投与することを伝えたい場合、Medication resourceを利用して、XYZ成分が375mg含有しているという錠剤であることを文書化することができる。あるいは1回投与量が375mgであることを伝えるのであれば、Medication resourceをつかって単にそれが錠剤であることを示せばよい。もし、ドーパミンの静注を例に挙げて、400mgのドーパミンを500mlの注射溶液に混ぜて使うことを伝えたいのであれば、それをすべてMedication resourceで伝えることができる。もし、投与について即時に伝達することを意図していない（たとえば投与速度が示されていたり、投与時期に範囲があるような場合）のであれば、たとえば1回500mlを4時間以上かけて投与する予定を伝える場合にもMedication resourceで伝えることができる。  \n【JP Core仕様】1回の投与量を指定する。単位は医薬品単位略号を使用することが望ましい。",
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
        "id" : "Dosage.doseAndRate.rate[x]",
        "path" : "Dosage.doseAndRate.rate[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Dosage.doseAndRate.rate[x]:rateRatio",
        "path" : "Dosage.doseAndRate.rate[x]",
        "sliceName" : "rateRatio",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_DosePerDay"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.doseAndRate.rate[x]:rateRange",
        "path" : "Dosage.doseAndRate.rate[x]",
        "sliceName" : "rateRange",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Range",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRange_UnitOfTime"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.doseAndRate.rate[x]:rateQuantity",
        "path" : "Dosage.doseAndRate.rate[x]",
        "sliceName" : "rateQuantity",
        "short" : "投与速度(量/時間)を指定する",
        "definition" : "投与速度(量/時間)を指定する",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ]
      }
    ]
  }
}

```
