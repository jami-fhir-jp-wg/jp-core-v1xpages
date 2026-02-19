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

本プロファイルは、患者に関連する家族の主要な健康状態を登録する家族歴に関する情報の登録や検索、取得のために、FHIR FamilyMemberHistoryリソースを使用するにあたって準拠するべき必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

臨床における家族歴の正確性には幅があり、用途により大きく3つの分類が想定される。

1. 基本的な家族歴(Family Member History)
* 病名は、「喘息」のように正確な場合もあれば、「癌（部位不明）」のように、あまり正確でない場合もある。
* 関係性も、「叔母（長女）の幸子」と人物を特定できる場合もあれば、「次男」としかわからない場合もある。日常の診療では家族の個人名まで聴取されることは少なく、長女や次男などの続柄で記録される場合が多い。
* 関連する家族全員が聴取されることは少なく、断片的な病歴になることが多い。
* しかし、遺伝子解析やその他の分析に有用な厳密な家族歴を把握するための基礎資料になる。

1. ジェノグラム(Genogram,家族図)
* 介護、障害者支援などの福祉、医療、教育の分野で、援助者が利用者を支援する方策を考えるために作成される。家族内支援のキーパーソンを見つけたりするための資料として活用されている。そのため、非血縁の内縁の妻、養子なども記載される。
* 社会的な背景（遺産相続の問題など）から同胞内の出生順（長男、長女、次男、次女など）を表現する必要性がある。
* 社会的な関係性である別居、離婚なども表現する対象となるが、統一的な仕様は策定されていない。

1. 遺伝学的血統図(Genetic Pedigree)
* 遺伝学的家系図記載法の国際的な規則に基づいた厳密な運用によるもの。特に癌については親族内の全員で癌に関連する病歴がないことも含めた詳細を聞く必要がある。
* 血縁関係以外の家族は基本的に対象外である。

基本的な家族歴、ジェノグラムにおいて必要とされる「同胞内出生順」（長男、長女、次男、次女など）について拡張し、表現する。

JP_FamilyMemberHistoryインスタンスへの参照をListリソースインスタンスに結合することで、個人の家族歴全体を表現することができる。

## スコープ

* 本プロファイルは、基本的な家族歴とジェノグラムを対象とする。
* 遺伝学的血統図は対象外である。本実装ガイド（Version 1.2.0）の範囲外であるが、 参考として[Genetic Pedigreeプロファイル](https://hl7.org/fhir/R4/familymemberhistory-genetic.html)を参照すること。

## 想定シナリオ

本プロファイルは、家族歴情報を標準化して **記録・更新・検索** できるようにすることを目的としている。

* **医師が家族歴を記録・更新・検索する**
 診療前に医師は電子カルテから患者の家族歴（ `FamilyMemberHistory` ）を検索し、遺伝性リスク（例：2型糖尿病、家族性高血圧、家族性脂質異常症）を把握。診断・治療計画（遺伝子検査の適応判定、生活習慣指導、薬物療法の選択）に即座に活用できる。診療中に新たに判明した家族歴情報を **更新** し、他の医療スタッフと共有する。
* **看護師が家族歴を記録・更新・検索する**
 入院・外来時の問診や看護評価の過程で、看護師は患者・家族から取得した家族歴情報（`FamilyMemberHistory`）に **記録**。既存の家族歴に変更があれば、看護師が **更新** を行い、他の医療従事者が参照できるようにする。また、患者の転院や退院時に家族歴を **検索** し、継続的なケア計画に反映させる。

## プロファイル定義

**Usages:**

* Examples for this Profile: [FamilyMemberHistory/jp-familymemberhistory-example-1](FamilyMemberHistory-jp-familymemberhistory-example-1.md), [FamilyMemberHistory/jp-familymemberhistory-example-2](FamilyMemberHistory-jp-familymemberhistory-example-2.md), [鈴木 花子（内縁の妻）、キーパーソン](FamilyMemberHistory-jp-familymemberhistory-example-3.md) and [母方のおば（次女）](FamilyMemberHistory-jp-familymemberhistory-example-4.md)
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

JP Core FamilymMemberHistoryプロファイルで使用される拡張は次の通りである。

* 拡張: 同胞内出生順
  * 説明: 同胞内出生順の複合拡張
  * URL: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder
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

オプションとして次の検索パラメータをサポートすることができる（MAY）

1. 検索パラメータpatientとstatusの組みを指定し、該当するすべてのFamilyMemberHistoryを検索
* OR検索のサポートを含む(例えば status=[token],[token],…)


  例：


  指定された患者のすべてのFamilyMemberHistoryを含むBundleを返却する。

##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**家族歴（母親）**](FamilyMemberHistory-jp-familymemberhistory-example-1.md)
* [**家族歴（息子、長男）**][jp-familymemberhistory-example-2]
* [**家族歴（内縁の妻）**][jp-familymemberhistory-example-3]
* [**家族歴（母方のおば）**][jp-familymemberhistory-example-4]

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
        "id" : "FamilyMemberHistory.extension",
        "path" : "FamilyMemberHistory.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "FamilyMemberHistory.extension:SiblingOrder",
        "path" : "FamilyMemberHistory.extension",
        "sliceName" : "SiblingOrder",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder"
            ]
          }
        ]
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
