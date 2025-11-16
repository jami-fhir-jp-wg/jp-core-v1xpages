# JP Core Observation Radiology Findings Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Radiology Findings Profile**

## Resource Profile: JP Core Observation Radiology Findings Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Radiology_Findings
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_Radiology_Findings
* **項目**: *Title*
  * **内容**: JP Core Observation Radiology Findings Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright JED-Project、JAHIS、日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WGThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995+, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc

 
このプロファイルはDiagnosticReport_Radiologyリソースに関連する画像診断報告書の「所見」データを送受信するための共通の制約と拡張を定めたものである。 

このプロファイルはObservationリソースに対して、放射線画像診断報告書の所見データを送受信するための制約と拡張を定めたものである。 本プロファイルは、放射線画像検査の読影結果を記録、検索、および取得するために、Observationリソースを使用する際の、最低限の制約を記述したものである。Observationリソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 放射線画像検査に対する画像診断報告書の所見の保存
* Patientリソースから指定された日時、期間の、放射線画像検査に対して記述された画像診断報告書の所見の参照
* 放射線画像診断報告書の所見の条件に合致する症例の参照

## スコープ

本プロファイルでは上記想定シナリオにて用いられるObservationの用途がスコープであり、放射線画像診断報告書の所見を取り扱う際に必要な要件を定義している。 放射線画像診断報告書では所見の他にImpressionが記述されるが、これらは個別のObservationリソースとして表現される。したがって、原則として検査レポート本体に相当するJP Core DiagnosticReport Radiologyの.resultエレメントには所見を表すJP Core Observation Radiology FindingsとJP Core Observation Radiology Impressionが対で含まれることになる。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Radiology Profile](StructureDefinition-jp-diagnosticreport-radiology.md)
* Examples for this Profile: [Observation/jp-observation-radiology-findings-example-1](Observation-jp-observation-radiology-findings-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-radiology-findings)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-radiology-findings.csv), [Excel](StructureDefinition-jp-observation-radiology-findings.xlsx), [Schematron](StructureDefinition-jp-observation-radiology-findings.sch) 

### 必須要素

本プロファイルでは、次の要素を持たなければならない。

* status :検査項目情報の状態は必須である。
* code : このリソースは画像診断報告書の所見であることを示すため必須である。

### MustSupport

次のデータは送信システムに存在する場合はサポートされなければならなSいことを意味する（Must Support）。

* category : このリソースは確定する場合、第1カテゴリとしてimagingを指定する。
* identifier : リソースの識別子はデータが存在する場合、必須である。
* subject : このリソースが示す内視鏡を使用した観察結果がどの患者のものかを示すため、このプロファイルでは参照するpatientリソースが存在する場合、必須である。
* value[x] : string型で「所見」のテキストが含まれる。

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 注意事項

### category

本バージョンの実装ガイドではCategoryの第1コードとして[JP Core Simple Observation Category ValueSet][JP_SimpleObservationCategory_VS]から`imaging`を指定する。

### code

[JP Core Observation Radiolgoy Code ValueSet](ValueSet-jp-observation-radiology-code-vs.md)の中から`18782-3`, Radiology Study observation (narrative)を指定する。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

[common](StructureDefinition-jp-observation-common.md)の定義を継承する。 本プロファイルでは上位のDIagnosticReportからの参照で所見の内容にあたるvaluestringの検索が想定される。

#### Operation一覧

ObservationリソースのOperation一覧の定義はユースケースに依存せず共通であるため、共通情報プロファイルに記載されている。

[Observation共通情報プロファイル#Operation一覧](StructureDefinition-jp-observation-common.md#operation一覧)

### サンプル

* [**放射線読影レポート（所見）**](Observation-jp-observation-radiology-findings-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-radiology-findings",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Radiology_Findings",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_Radiology_Findings",
  "title" : "JP Core Observation Radiology Findings Profile",
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
  "description" : "このプロファイルはDiagnosticReport_Radiologyリソースに関連する画像診断報告書の「所見」データを送受信するための共通の制約と拡張を定めたものである。",
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
  "copyright" : "Copyright JED-Project、JAHIS、日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG  \nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995+, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc",
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
        "short" : "画像診断レポートの所見（findings）",
        "definition" : "放射線画像検査に対する画像診断レポートの所見の内容（findings）。",
        "comment" : "画像診断レポートの所見（findings）に対応するObservationプロファイル"
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "mustSupport" : true
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "comment" : "このObservationが生成されることになった画像検査に関するオーダ情報",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
          }
        ]
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "comment" : "このObservation（所見）が生成される元になった画像検査",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology"
            ]
          }
        ]
      },
      {
        "id" : "Observation.category:first",
        "path" : "Observation.category",
        "sliceName" : "first",
        "comment" : "このObservationを分類するコード。(imaging)が指定される。",
        "mustSupport" : true
      },
      {
        "id" : "Observation.category:first.coding.code",
        "path" : "Observation.category.coding.code",
        "fixedCode" : "imaging"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "comment" : "observation(所見)を表すLOINCコード。18782-3, Radiology Study observation (narrative)が指定される。"
      },
      {
        "id" : "Observation.code.coding.system",
        "path" : "Observation.code.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.code.coding.code",
        "path" : "Observation.code.coding.code",
        "fixedCode" : "18782-3"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "comment" : "このObservationの対象となる患者。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "comment" : "所見が生成された日時(DateTime)。",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "comment" : "所見が確定された日時(DateTime)。参照元のDiagnosticReportの日時と一致する必要がある。"
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "comment" : "所見を生成した医療者。通常は読影医。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "comment" : "所見の内容。",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Observation.note",
        "path" : "Observation.note",
        "comment" : "診断報告所の所見に記載されないコメント等。",
        "requirements" : "フリーテキストの追加情報を記載できるが、汎用的な利用は想定されない。"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "comment" : "レポートの所見に関連する計測値等をObservationで保持する場合、ここに指定する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"
            ]
          }
        ]
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "comment" : "この所見の元となった画像検査。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Radiology"
            ]
          }
        ]
      }
    ]
  }
}

```
