# JP Core Observation BodyMeasurement Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation BodyMeasurement Profile**

## Resource Profile: JP Core Observation BodyMeasurement Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_BodyMeasurement
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_BodyMeasurement
* **項目**: *Title*
  * **内容**: JP Core Observation BodyMeasurement Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはObservationリソースに対して、身体計測のデータを送受信するための制約と拡張を定めたものである。 

本プロファイル説明は、患者に付属する一項目分の身体計測情報について、情報の登録や検索、取得のために、FHIR Observationリソースを使用するにあたっての、最低限の制約を記述したものである。 Observationリソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* Patientリソースからの指定された日時、期間での患者身体計測情報の参照
* Patientリソースからの指定された患者身体計測情報項目に対する指定された期間での身体計測情報の参照
* Patientリソースからの標準値を外れた患者身体計測情報の参照
* 指定された期間や患者身体計測情報項目に対し、条件に合致する身体計測情報または関連する他のリソース（Observationリソースや、Patientリソース等）の参照

## スコープ

Observationはヘルスケアの中心的な要素であり、診断の支援、進捗状況の監視、ベースラインやパターンの決定、さらには基本情報の把握に使用される。ほとんどのObservationは、いくつかのメタデータを持つ単純な名前/値のペアのアサーションであるが、いくつかのObservationは、他の Observationを論理的にグループ化したり、あるいはマルチコンポーネントのObservationであったりする。

本プロファイルでは上記想定シナリオにて用いられるObservationの用途がスコープであり、患者基本情報の中でも特に身体計測に該当する情報項目の１つを取り扱う際に、必要な要件を定義している。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core Observation BodyMeasurement Profile](StructureDefinition-jp-observation-bodymeasurement.md)
* Examples for this Profile: [Observation/jp-observation-bodyMeasurement-example-1](Observation-jp-observation-bodyMeasurement-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-bodymeasurement)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-bodymeasurement.csv), [Excel](StructureDefinition-jp-observation-bodymeasurement.xlsx), [Schematron](StructureDefinition-jp-observation-bodymeasurement.sch) 

#### 必須要素

本プロファイルでは、次の要素を持たなければならない。

* status : 患者身体計測情報の状態は必須である
* category : このリソースが示す身体計測情報項目を分類するための区分であり必須とする
* code : このリソースは何の身体計測情報項目であるかを示すため必須とする
* subject : このリソースが示す身体計測情報項目が、どの患者のものかを示すため、参照するpatientリソースの定義を必須とする

#### Must Support

このプロファイルでは MustSupport要素定義は行っていない。

### Extension定義

このプロファイルでは拡張定義は行っていない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

身体計測ユースケースのSearch Parameter一覧は共通情報プロファイルに記載されている。

検索時のcategoryパラメータは"vital-sign"となる。

[Observation共通情報プロファイル#Search Parameter一覧](StructureDefinition-jp-observation-common.md#search-parameter一覧)

#### Operation一覧

ObservationリソースのOperation一覧の定義はユースケースに依存せず共通であるため、共通情報プロファイルに記載されている。

[Observation共通情報プロファイル#Operation一覧](StructureDefinition-jp-observation-common.md#operation一覧)

### サンプル

* [**身体所見（腹痛）**](Observation-jp-observation-bodyMeasurement-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-bodymeasurement",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_BodyMeasurement",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_BodyMeasurement",
  "title" : "JP Core Observation BodyMeasurement Profile",
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
  "description" : "このプロファイルはObservationリソースに対して、身体計測のデータを送受信するための制約と拡張を定めたものである。",
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
        "short" : "身体計測に関する測定や簡単な観察事実（assertion）",
        "definition" : "患者の身体計測に関する測定と簡単な観察事実（assertion）。",
        "comment" : "身体計測に関するObservation（検査測定や観察事実）の制約プロフィール"
      },
      {
        "id" : "Observation.category:first",
        "path" : "Observation.category",
        "sliceName" : "first"
      },
      {
        "id" : "Observation.category:first.coding.code",
        "path" : "Observation.category.coding.code",
        "fixedCode" : "body-measurement"
      },
      {
        "id" : "Observation.category:second",
        "path" : "Observation.category",
        "sliceName" : "second",
        "comment" : "MEDISの看護実践用語標準マスター＜看護観察編＞の大分類１．バイタルサイン・基本情報、中分類2．身体計測の「焦点」",
        "min" : 0,
        "max" : "*",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationBodyMeasurementCategory_CS"
            }
          ]
        },
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationBodyMeasurementCategory_VS"
        }
      },
      {
        "id" : "Observation.category:second.coding.system",
        "path" : "Observation.category.coding.system",
        "patternUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationBodyMeasurementCategory_CS"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "comment" : "MEDISの看護実践用語標準マスター＜看護観察編＞の大分類１．バイタルサイン・基本情報、中分類2．身体計測の「観察名称」",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationBodyMeasurementCode_VS"
        }
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
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "comment" : "【JP Core仕様】関連する参照リソースにJP_Observation_BodyMeasurementを追加",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/MolecularSequence",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_BodyMeasurement"
            ]
          }
        ]
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "comment" : "【JP Core仕様】導出元の参照リソースにJP_Observation_BodyMeasurementを追加",
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
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_BodyMeasurement"
            ]
          }
        ]
      }
    ]
  }
}

```
