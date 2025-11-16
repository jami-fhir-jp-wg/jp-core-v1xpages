# JP Core MedicationDosage Injection DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationDosage Injection DataType**

## Data Type Profile: JP Core MedicationDosage Injection DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosage_Injection
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationDosage_Injection
* **項目**: *Title*
  * **内容**: JP Core MedicationDosage Injection DataType
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このデータタイプは注射用法の制約と拡張のうち共通部分を定めている。 

**Usages:**

* Use this DataType Profile: [JP Core MedicationDispense Injection Profile](StructureDefinition-jp-medicationdispense-injection.md), [JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md) and [JP Core MedicationStatement Injection Profile](StructureDefinition-jp-medicationstatement-injection.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationdosage-injection)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationdosage-injection.csv), [Excel](StructureDefinition-jp-medicationdosage-injection.xlsx), [Schematron](StructureDefinition-jp-medicationdosage-injection.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationdosage-injection",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosage_Injection",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationDosage_Injection",
  "title" : "JP Core MedicationDosage Injection DataType",
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
  "description" : "このデータタイプは注射用法の制約と拡張のうち共通部分を定めている。",
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
        "id" : "Dosage.extension:dosageComment",
        "path" : "Dosage.extension",
        "sliceName" : "dosageComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_DosageComment"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.extension:device",
        "path" : "Dosage.extension",
        "sliceName" : "device",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Device"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.extension:line",
        "path" : "Dosage.extension",
        "sliceName" : "line",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Line"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.extension:lineComment",
        "path" : "Dosage.extension",
        "sliceName" : "lineComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_LineComment"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.timing",
        "path" : "Dosage.timing",
        "short" : "投与タイミング",
        "definition" : "投与タイミングを記録する。"
      },
      {
        "id" : "Dosage.timing.code",
        "path" : "Dosage.timing.code",
        "comment" : "BIDなどは「施設特有の時間」として定義される。たとえば、施設がBIDを「つねに朝7時と夕方6時」であると指定することがある。この指定が不適切であれば、BIDというコードは使うべきではない。その代わり、HL7が定義したBIDのコードではなく、その施設特有のコードで明示的に示すべきであり、構造化された表現を使うべきである（この場合、2回のイベントの時刻を指定する必要がある）。  \n【JP Core仕様】頓用指示時にはJAMI処方・注射オーダ標準用法規格の表6 イベント区分、イベント詳細区分(“http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationAsNeededConditionJAMI_CS”)を推奨するが、MERIT-9 処方オーダ 表5 頓用指示(“http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationAsNeededConditionMERIT9_CS”) を使用してもよい。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationUsageInjection_VS"
        }
      },
      {
        "id" : "Dosage.site.extension:siteComment",
        "path" : "Dosage.site.extension",
        "sliceName" : "siteComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_SiteComment"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.site.extension:bodySite",
        "path" : "Dosage.site.extension",
        "sliceName" : "bodySite",
        "short" : "身体部位の位置に関する詳細",
        "definition" : "身体部位の位置に関する詳細情報。site概念がユースケースに必要な詳細を提供しない場合に使用される。",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite|5.2.0"]
          }
        ]
      },
      {
        "id" : "Dosage.route.extension:routeComment",
        "path" : "Dosage.route.extension",
        "sliceName" : "routeComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_RouteComment"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.method.extension:methodComment",
        "path" : "Dosage.method.extension",
        "sliceName" : "methodComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_MethodComment"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.doseAndRate.extension:rateComment",
        "path" : "Dosage.doseAndRate.extension",
        "sliceName" : "rateComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_RateComment"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.doseAndRate.dose[x]",
        "path" : "Dosage.doseAndRate.dose[x]",
        "short" : "1回投与量（体積）",
        "definition" : "1回投与量（体積）",
        "comment" : "この量は指定された薬剤の量を指定するものであって、各有効成分の量を指定するものではない。各成分の量はMedication resourceで伝えることができる。たとえば、有効成分が375mgである錠剤を1錠投与することを伝えたい場合、Medication resourceを利用して、XYZ成分が375mg含有しているという錠剤であることを文書化することができる。あるいは1回投与量が375mgであることを伝えるのであれば、Medication resourceをつかって単にそれが錠剤であることを示せばよい。もし、ドーパミンの静注を例に挙げて、400mgのドーパミンを500mlの注射溶液に混ぜて使うことを伝えたいのであれば、それをすべてMedication resourceで伝えることができる。もし、投与について即時に伝達することを意図していない（たとえば投与速度が示されていたり、投与時期に範囲があるような場合）のであれば、たとえば1回500mlを4時間以上かけて投与する予定を伝える場合にもMedication resourceで伝えることができる。  \n【JP Core仕様】1回の投与量（体積）を指定する。単位はUCUMを使用する。",
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
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_DosePerPeriod"
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
        "short" : "投与速度(流量)を指定する単位は流量を表す単位（e.g. 量/時間)を指定する",
        "definition" : "投与速度(流量)を指定する単位は流量を表す単位（e.g. 量/時間)を指定する",
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
