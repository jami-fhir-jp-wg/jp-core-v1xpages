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
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはFamilyMemberHistoryリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。 

患者のケアの文脈において関連性のある、患者に関連する個人の重要な健康状態。

## 背景及び想定シナリオ

臨床における家族歴の正確性には幅がある。基本的な家族歴は、医師が患者の遺伝性リスクを把握するために、疾患を中心に記録するものである。病名は「喘息」のように正確な場合もあれば「癌（部位不明）」のように不正確な場合もあり、患者の氏名や全員の生年月日が把握できず、「おば」や「長男」などの続柄として不完全で断片的に記録される。しかし、このような限定的な情報であっても、遺伝子解析やその他の分析に有用な厳密な家族歴を把握するための基礎資料となる。

また、看護師を中心に療養・介護・福祉等の支援体制を目的とした家族図（ジェノグラム、Genogram）も作成される。患者への支援方策を検討する際に、血縁関係のみならず養子や内縁のパートナーといった非血縁者を含めた家族構成、および同胞内の出生順（長男、長女、次男など）を記録することで、家族内の役割と支援体制を把握できる。

遺伝学的血統図（Genetic Pedigree）は、遺伝学的家系図記載法の国際的規則に基づいた厳密な運用によるもので、血縁関係を中心とした遺伝リスク評価に特化している。

本プロファイルは、家族歴（`FamilyMemberHistory`）を、医療・介護・福祉などで、記録・更新・検索できるようにすることを目的とする。

主な利用用途

* 医療：遺伝性リスク把握、疾患関連情報の記録・更新
* 看護・介護・福祉：療養支援、支援体制整備、ケア計画の策定に必要な家族関係の把握と共有

## スコープ

### 対象

本プロファイルは、患者に関連する家族歴情報のうち、基本的な家族歴とジェノグラムを対象とする。

医療者は同胞内出生順（長男、長女、次男、次女など）で家族歴を記録しており、本プロファイルではこれを拡張により表現する。

複数の FamilyMemberHistory インスタンスを List リソースで集約することで、患者の家族歴全体を統合的に表現できる。

### 対象外

遺伝学的血統図は本プロファイルの対象外である。遺伝学的解析に特化した厳密な血統図については、[Genetic Pedigreeプロファイル](https://hl7.org/fhir/R4/familymemberhistory-genetic.html)を参照のこと。

## プロファイル定義

**Usages:**

* Examples for this Profile: [FamilyMemberHistory/jp-familymemberhistory-example-1](FamilyMemberHistory-jp-familymemberhistory-example-1.md), [FamilyMemberHistory/jp-familymemberhistory-example-2](FamilyMemberHistory-jp-familymemberhistory-example-2.md), [鈴木 花子](FamilyMemberHistory-jp-familymemberhistory-example-3.md) and [FamilyMemberHistory/jp-familymemberhistory-example-4](FamilyMemberHistory-jp-familymemberhistory-example-4.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-familymemberhistory)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-familymemberhistory.csv), [Excel](StructureDefinition-jp-familymemberhistory.xlsx), [Schematron](StructureDefinition-jp-familymemberhistory.sch) 

### 必須要素

本プロファイルに準拠するためには、次の項目の値が存在しなければならない。

* patient : 本リソースを有する患者
* relationship : 患者と家族との続柄（父、母、兄弟など）
* status : 家族歴のステータス（部分的 | 完全 | 記録エラー | 健康状態不明）

### Extensions定義

JP Core FamilyMemberHistoryプロファイルで使用される拡張は次の通りである。

#### モデリング上の注意（運用ルール）

* `FamilyMemberHistory`は、患者に関連する個人を`relationship`要素で指定し、その個人1人につき1リソース作成する。
* 本プロファイルで扱う「同胞（`sibling`）」は、戸籍法施行規則に基づき、完全同胞および半同胞に加え、養子縁組・継子等の法的親子関係に基づく非血縁の兄弟姉妹関係が含まれる。
* 同胞は`relationship`要素を起点とした関係性であり、`FamilyMemberHistory.relationship`に対する拡張として表現する。
* また、同胞内出生順（`SiblingOrder`）
* 非血縁関係が含まれるため、遺伝学的血統図にはそのまま利用できないが、基礎資料になる。 遺伝学的血統図は関連する血縁関係の家族全員の生年月日が必要である。しかし、基礎的な家族歴では、氏名や生年月日が不明な場合が多く、同一人物の追跡も困難になる。
* 本拡張（`SiblingOrder`）は `siblingBirthOrder`（整数）および `siblingBirthOrderByGender`（長男・次女など）を`relationship`要素と組み合わせて保持することで、血統図の自動配置（同胞の並び順の決定）と、追加聴取による家系情報の更新（差分修正）を容易にする。
* 家族歴を記録する理由（契機）は、`reasonCode`要素に記述する。
* 患者に関連する家族の病名は、`condition`要素に記述する。`condition.code.text`要素に自由記載もでき、`condition.code.coding`要素にコードを付与してもよい。
* 関連する家族が聴取したい病名に罹患していない旨を記録する場合は、`note`要素に記述する。

* 拡張: 同胞内出生順
  * 説明: 同胞内出生順の複合拡張
  * URL: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_Relatiohship_SiblingOrder
  * 値の型: Extension
* 拡張: 同胞内出生順（整数）
  * 説明: 同胞内における社会的な出生順（整数値）
  * URL: siblingBirthOrder
  * 値の型: integer
* 拡張: 性別同胞内出生順名称（コード値）
  * 説明: 同胞内における性別の社会的な出生順名称（コード値）。国内では、長男、長女、次男、次女など。国際化対応は、designationで出身国の用語を追加定義することで表現可能。
  * URL: SiblingBirthOrderByGender
  * 値の型: CodeableConcept

### 用語定義

#### 続柄（relationship）日本語翻訳時の注意点

* 「おじ」「おば」の漢字は、両親より年上の時は「伯父」「伯母」、年下の時は「叔父」「叔母」の２つあり、V3RoleCodeの`UNCLE`は「おじ」, `AUNT`は「おば」と平仮名を使用した。
* 「養子」の漢字は総称と男性の両方に使われるため、`CHLDADOPT`を「養子」、 `SONADOPT`を「養子（男子）」とした。

| | | |
| :--- | :--- | :--- |
| 続柄 | relathionship | http://terminology.hl7.org/ValueSet/v3-FamilyMember |
| 性別同胞内出生順名称 | SiblingBirthOrderByGender | http://jpfhir.jp/fhir/core/CodeSystem/JP_SiblingBirthOrderByGender_CS |

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

オプションとして次の検索パラメータをサポートできる（MAY）

1. 検索パラメータpatientとstatusの組みを指定し、該当するすべてのFamilyMemberHistoryを検索
* OR検索のサポートを含む(例えば status=[token],[token],…)


  例：


  指定された患者のすべてのFamilyMemberHistoryを含むBundleを返却する。

##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**母親**](FamilyMemberHistory-jp-familymemberhistory-example-1.md)
* [**息子（長男）**](FamilyMemberHistory-jp-familymemberhistory-example-2.md)
* [**内縁の妻**](FamilyMemberHistory-jp-familymemberhistory-example-3.md)
* [**母方のおば（次女）**](FamilyMemberHistory-jp-familymemberhistory-example-4.md)

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
  "copyright" : "Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
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
        "id" : "FamilyMemberHistory.relationship.extension:SiblingOrder",
        "path" : "FamilyMemberHistory.relationship.extension",
        "sliceName" : "SiblingOrder",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_Relationship_SiblingOrder"
            ]
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
