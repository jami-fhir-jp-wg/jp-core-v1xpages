# JP Core Observation VitalSigns Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation VitalSigns Profile**

## Resource Profile: JP Core Observation VitalSigns Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_VitalSigns
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_VitalSigns
* **項目**: *Title*
  * **内容**: JP Core Observation VitalSigns Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはObservationリソースに対して、バイタルサインのデータを送受信するための制約と拡張を定めたものである。 

本プロファイル説明は、患者に付属する一項目分のバイタルサイン情報について、情報の登録や検索、取得のために、FHIR Observationリソースを使用するにあたっての、最低限の制約を記述したものである。 Observation リソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* Patientリソースから指定された日時、期間での患者バイタルサイン情報の参照
* Patientリソースから指定された患者バイタルサイン項目に対する指定された期間でのバイタルサイン情報の参照
* Patientリソースから標準値を外れた患者バイタルサイン情報の参照
* 指定された期間や患者バイタルサイン項目に対し、条件に合致するバイタルサイン情報、または関連する他のリソース（Observationリソースや、Patientリソース等）の参照。

## スコープ

Observationはヘルスケアの中心的な要素であり、診断の支援、進捗状況の監視、ベースラインやパターンの決定、さらには基本情報の把握に使用される。ほとんどのObservationは、いくつかのメタデータを持つ単純な名前/値のペアのアサーションであるが、いくつかのObservationは、他の Observationを論理的にグループ化したり、あるいはマルチコンポーネントのObservationであったりする。

本プロファイルでは上記想定シナリオにて用いられるObservationの用途がスコープであり、患者基本情報の中でも特に患者バイタルサインに該当する情報項目の１つを取り扱う際に、必要な要件を定義している。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core Observation VitalSigns Profile](StructureDefinition-jp-observation-vitalsigns.md)
* Examples for this Profile: [Observation/jp-observation-vitalsigns-example-1](Observation-jp-observation-vitalsigns-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-vitalsigns)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-vitalsigns.csv), [Excel](StructureDefinition-jp-observation-vitalsigns.xlsx), [Schematron](StructureDefinition-jp-observation-vitalsigns.sch) 

### 必須要素

本プロファイルは、次の要素を持たなければならない。

* status : 患者バイタルサイン情報項目の状態は必須である
* category : このリソースが示す患者バイタルサイン情報項目を分類するための区分であり、このプロファイルでは必須とする
* code : このリソースは何の患者バイタルサイン情報項目であるかを示すため必須である
* subject : このリソースが示す患者バイタルサイン情報項目が、どの患者のものかを示すため、このプロファイルでは参照するpatientリソースの定義を必須とする

### Extension定義

このプロファイルでは拡張定義は行っていない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

バイタルサインユースケースのSearch Parameter一覧は共通情報プロファイルに記載されている。

検索時のcategoryパラメータは"vital-sign"となる。

[Observation共通情報プロファイル#Search Parameter一覧](StructureDefinition-jp-observation-common.md#search-parameter一覧)

#### Operation一覧

ObservationリソースのOperation一覧の定義はユースケースに依存せず共通であるため、共通情報プロファイルに記載されている。

[Observation共通情報プロファイル#Operation一覧](StructureDefinition-jp-observation-common.md#operation一覧)

### サンプル

* [**バイタル（呼吸数）**](Observation-jp-observation-vitalsigns-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-vitalsigns",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_VitalSigns",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_VitalSigns",
  "title" : "JP Core Observation VitalSigns Profile",
  "status" : "active",
  "date" : "2024-12-30",
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
  "description" : "このプロファイルはObservationリソースに対して、バイタルサインのデータを送受信するための制約と拡張を定めたものである。",
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
        "short" : "バイタルサインに関する測定や簡単な観察事実（assertion）",
        "definition" : "バイタルサインに関する測定と簡単な観察事実（assertion）。",
        "comment" : "バイタルサインに関するObservation（検査測定や観察事実）の制約プロフィール"
      },
      {
        "id" : "Observation.category:first",
        "path" : "Observation.category",
        "sliceName" : "first"
      },
      {
        "id" : "Observation.category:first.coding.code",
        "path" : "Observation.category.coding.code",
        "fixedCode" : "vital-signs"
      },
      {
        "id" : "Observation.category:second",
        "path" : "Observation.category",
        "sliceName" : "second",
        "comment" : "MEDISの看護実践用語標準マスター＜看護観察編＞の大分類１．バイタルサイン・基本情報、中分類１．バイタルサインの「焦点」",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationVitalSignsCategory_VS"
        }
      },
      {
        "id" : "Observation.category:second.coding.system",
        "path" : "Observation.category.coding.system",
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationVitalSignsCategory_CS"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "comment" : "MEDISの看護実践用語標準マスター＜看護観察編＞の大分類１．バイタルサイン・基本情報、中分類１．バイタルサインの「観察名称」",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationVitalSignsCode_VS"
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
        "comment" : "【JP Core仕様】関連する参照リソースにJP_Observation_VitalSignsを追加",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/MolecularSequence",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_VitalSigns"
            ]
          }
        ]
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "comment" : "【JP Core仕様】導出元の参照リソースにJP_Observation_VitalSignsを追加",
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
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_VitalSigns"
            ]
          }
        ]
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationVitalSignsCode_VS"
        }
      }
    ]
  }
}

```
