# JP Core Observation PhysicalExam Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation PhysicalExam Profile**

## Resource Profile: JP Core Observation PhysicalExam Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_PhysicalExam
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_PhysicalExam
* **項目**: *Title*
  * **内容**: JP Core Observation PhysicalExam Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはObservationリソースに対して、身体所見のデータを送受信するための制約と拡張を定めたものである。 

本プロファイル説明は、患者に付属する一項目分の身体所見情報について、情報の登録や検索、取得のために、FHIR Observationリソースを使用するにあたっての、最低限の制約を記述したものである。

Observationリソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* Patientリソースから指定された日時、期間での身体所見情報の参照
* Patientリソースから指定された診察方法に対する指定された期間での身体所見情報の参照

## スコープ

Observationはヘルスケアの中心的な要素であり、診断の支援、進捗状況の監視、ベースラインやパターンの決定、さらには基本情報の把握に使用される。ほとんどのObservationは、いくつかのメタデータを持つ単純な名前/値のペアのアサーションであるが、いくつかのObservationは、他のObservationを論理的にグループ化したり、あるいはマルチコンポーネントのObservationであったりする。

本プロファイルでは上記想定シナリオにて用いられるObservationの用途がスコープであり、患者基本情報の中でも特に身体所見に該当する情報項目の１つを取り扱う際に、必要な要件を定義している。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core Observation PhysicalExam Profile](StructureDefinition-jp-observation-physicalexam.md)
* Examples for this Profile: [Observation/jp-observation-physicalexam-example-1](Observation-jp-observation-physicalexam-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-physicalexam)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-physicalexam.csv), [Excel](StructureDefinition-jp-observation-physicalexam.xlsx), [Schematron](StructureDefinition-jp-observation-physicalexam.sch) 

#### 必須要素

本プロファイルでは、次の要素を持たなければならない。

* status : 身体所見情報項目の状態は必須である
* category : このリソースが示す身体所見情報項目を分類するための区分であり、このプロファイルでは必須とする
* code : このリソースは何の身体所見情報項目であるかを示すため必須である
* subject : このリソースが示す身体所見情報項目が、どの患者のものかを示すため、このプロファイルでは参照するpatientリソースの定義を必須とする

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

身体所見ユースケースのSearch Parameter一覧は共通情報プロファイルに記載されている。

検索時のcategoryパラメータは"exam"となる。

[Observation共通情報プロファイル#Search Parameter一覧](StructureDefinition-jp-observation-common.md#search-parameter一覧)

#### Operation一覧

ObservationリソースのOperation一覧の定義はユースケースに依存せず共通であるため、共通情報プロファイルに記載されている。

[Observation共通情報プロファイル#Operation一覧](StructureDefinition-jp-observation-common.md#operation一覧)

### サンプル

* [**身体所見（腹痛）**](Observation-jp-observation-physicalexam-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-physicalexam",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_PhysicalExam",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_PhysicalExam",
  "title" : "JP Core Observation PhysicalExam Profile",
  "status" : "active",
  "date" : "2025-07-30",
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
  "description" : "このプロファイルはObservationリソースに対して、身体所見のデータを送受信するための制約と拡張を定めたものである。",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "short" : "身体所見に関する測定や簡単な観察事実（assertion）",
        "definition" : "身体所見に関する測定や簡単な観察事実",
        "comment" : "身体所見に関するObservation（検査測定や観察事実）の制約プロフィール"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "comment" : "【JP Core仕様】基底仕様のカテゴリ「exam」固定とする"
      },
      {
        "id" : "Observation.category:first",
        "path" : "Observation.category",
        "sliceName" : "first"
      },
      {
        "id" : "Observation.category:first.coding.code",
        "path" : "Observation.category.coding.code",
        "fixedCode" : "exam"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "comment" : "【JP Core仕様】所見の有無を表すコード（固定値）",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_PhysicalExamCode_VS"
        }
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.code.coding:physicalExamCode",
        "path" : "Observation.code.coding",
        "sliceName" : "physicalExamCode",
        "short" : "身体所見項目コード。本ユースケースにおける項目コード推奨値をスライスにて示している【詳細参照】",
        "definition" : "身体所見項目コード。本ユースケースにおける項目コード推奨値をスライスにて示している。",
        "comment" : "推奨項目コードは必須ではない、派生先によるコード体系を作成し割り振ることを否定しない",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_PhysicalExamCode_VS"
        }
      },
      {
        "id" : "Observation.code.coding:physicalExamCode.system",
        "path" : "Observation.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_PhysicalExamCode_CS"
      },
      {
        "id" : "Observation.code.coding:physicalExamCode.code",
        "path" : "Observation.code.coding.code",
        "min" : 1,
        "fixedCode" : "physical-findings"
      },
      {
        "id" : "Observation.code.coding:physicalExamCode.display",
        "path" : "Observation.code.coding.display",
        "patternString" : "Physical Findings"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "comment" : "【JP Core仕様】患者",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "comment" : "【JP Core仕様】診察"
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "comment" : "【JP Core仕様】effectiveDateTime：医療者が確認した日時  \neffectivePeriod：医療者が確認した期間",
        "type" : [
          {
            "code" : "dateTime"
          },
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
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
        "id" : "Observation.value[x]:valueCodeableConcept",
        "path" : "Observation.value[x]",
        "sliceName" : "valueCodeableConcept",
        "short" : "所見の有無（Y or N）を指定する",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0136"
        }
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "comment" : "ICD-11"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "comment" : "MEDIS症状・所見マスターの「診察方法」",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationPhysicalExamMethod_VS"
        }
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "comment" : "【JP Core仕様】関連する参照リソースにJP_Observation_PhysicalExamを追加",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/MolecularSequence",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_PhysicalExam"
            ]
          }
        ]
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "comment" : "【JP Core仕様】導出元の参照リソースにJP_Observation_PhysicalExamを追加",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/DocumentReference",
              "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
              "http://hl7.org/fhir/StructureDefinition/Media",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://hl7.org/fhir/StructureDefinition/MolecularSequence",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_PhysicalExam"
            ]
          }
        ]
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "所見有り（valueCodeableConceptがY）の場合に、具体的な所見をコード、または文字列で記載する",
        "comment" : "【JP Core仕様】具体的な所見を記載する"
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "comment" : "【JP Core仕様】具体的な所見を表すコード（固定値）",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_PhysicalExamCode_VS"
        }
      },
      {
        "id" : "Observation.component.code.coding",
        "path" : "Observation.component.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component.code.coding:physicalExamCode",
        "path" : "Observation.component.code.coding",
        "sliceName" : "physicalExamCode",
        "short" : "身体所見項目コード。本ユースケースにおける項目コード推奨値をスライスにて示している【詳細参照】",
        "definition" : "身体所見項目コード。本ユースケースにおける項目コード推奨値をスライスにて示している。",
        "comment" : "推奨項目コードは必須ではない、派生先によるコード体系を作成し割り振ることを否定しない",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_PhysicalExamCode_VS"
        }
      },
      {
        "id" : "Observation.component.code.coding:physicalExamCode.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_PhysicalExamCode_CS"
      },
      {
        "id" : "Observation.component.code.coding:physicalExamCode.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1,
        "fixedCode" : "detailed-physical-findings"
      },
      {
        "id" : "Observation.component.code.coding:physicalExamCode.display",
        "path" : "Observation.component.code.coding.display",
        "patternString" : "Detailed Physical Findings"
      }
    ]
  }
}

```
