# JP Core FamilyMemberHistory Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Profile**

## Resource Profile: JP Core FamilyMemberHistory Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_FamilyMemberHistory
* **項目**: *Title*
  * **内容**: JP Core FamilyMemberHistory Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このプロファイルはFamilyMemberHistoryリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。 

本プロファイルは、JP_FamilyMemberHistoryリソースの記録・更新・検索を行う上で、準拠するべき必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## スコープ

* JP_FamilyMemberHistoryは、FHIRワークフロー仕様のイベントリソースの１つである。
* 本プロファイルは、対象者に関連する特定の個人の重要な健康状態を記録する。この情報は、さまざまなレベルの正確さで知ることができる。正確な状態（喘息）がわかっている場合もあれば、あまり正確でない場合（ある種のがん）もある。同様に、人物を特定できる場合もあれば（e.g. 私の叔母（母方の長女）である幸子）、その人物が叔父であることだけがわかっている場合もある。
* 本プロファイルは、特定の家族の「初歩的な」家族史を把握するために使用される単純な構造を表している。しかし、遺伝子解析やその他の分析に有用な、より厳密な歴史を把握するための基礎とすることもできる。 - 例として、[Genetic Pedigree](https://hl7.org/fhir/r4/familymemberhistory-genetic.html)プロファイルを参照すること。
* JP_FamilyMemberHistoryインスタンスへの参照をListリソースインスタンスに結合することで、個人の家族歴全体を表現することができる。

## 想定シナリオ

本プロファイルは、以下のようなユースケースを想定する。

* JP_FamilyMemberHistoryリソースの記録・更新・検索

## プロファイル定義

**Usages:**

* Examples for this Profile: [FamilyMemberHistory/jp-familymemberhistory-example-1](FamilyMemberHistory-jp-familymemberhistory-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-familymemberhistory)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-familymemberhistory.csv), [Excel](StructureDefinition-jp-familymemberhistory.xlsx), [Schematron](StructureDefinition-jp-familymemberhistory.sch) 

### 必須要素

本プロファイルに準拠するためには、次の項目の値が存在しなければならない。

* patient : 本リソースを有する患者
* relationship : 患者と家族との関係の種類（父、母、兄弟など）
* status : 家族歴のステータス（部分的 | 完全 | 記録エラー | 健康状態不明）

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/FamilyMemberHistory?identifier=http://myhospital.com/fhir/gamilymemberhistory|123 |
| SHOULD | patient | reference | GET [base]/FamilyMemberHistory?patient=Patient/123 |
| MAY | patient,relationship | reference,reference | GET [base]/FamilyMemberHistory?patient=Patient/123&relationship=FAMMEMB |
| MAY | patient,status | reference,token | GET [base]/FamilyMemberHistory?patient=Patient/123&status=completed |

##### 必須検索パラメータ

本プロファイルに準拠するためには、以下の検索パラメータをサポートしなければならない（**SHALL**）

1. 検索パラメータidentifierを指定し、レコードIDなどの識別子によりFamilyMemberHistoryを検索

```
GET [base]/FamilyMemberHistory?identifier={system|}[token]

```

例：

```
GET [base]/FamilyMemberHistory?identifier=http://myhospital.com/fhir/familymemberhistory|123

```

指定された識別子に一致するFamilyMemberHistoryリソースを含むBundleを検索する。

##### 推奨検索パラメータ

1. 検索パラメータpatientを指定し、該当するすべてのFamilyMemberHistoryを検索

```
GET [base]/FamilyMemberHistory?patient={reference}

```

例：

```
GET [base]/FamilyMemberHistory?patient=Patient/123

```

指定された患者のすべてのFamilyMemberHistoryを含むBundleを返却する。

##### 追加検索パラメータ

オプションとして次の検索パラメータをサポートすることができる（MAY）

1. 検索パラメータpatientとstatusの組みを指定し、該当するすべてのFamilyMemberHistoryを検索
* OR検索のサポートを含む(例えば status=[token],[token],…)


  例：


  指定された患者のすべてのFamilyMemberHistoryを含むBundleを返却する。

##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**家族歴（母親）**](FamilyMemberHistory-jp-familymemberhistory-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-familymemberhistory",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory",
  "version" : "1.3.0-dev",
  "name" : "JP_FamilyMemberHistory",
  "title" : "JP Core FamilyMemberHistory Profile",
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
  "description" : "このプロファイルはFamilyMemberHistoryリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "FamilyMemberHistory",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "FamilyMemberHistory",
        "path" : "FamilyMemberHistory",
        "short" : "Information about patient's relatives, relevant for patient. 患者の家族に関する情報のうち、患者に関連する情報（家族歴）",
        "definition" : "Significant health conditions for a person related to the patient relevant in the context of care for the patient.  \n患者の診療に関連する、患者家族の疾患に関する情報。"
      },
      {
        "id" : "FamilyMemberHistory.patient",
        "path" : "FamilyMemberHistory.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "FamilyMemberHistory.reasonReference",
        "path" : "FamilyMemberHistory.reasonReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/DocumentReference",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_AllergyIntolerance",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common"
            ]
          }
        ]
      }
    ]
  }
}

```
