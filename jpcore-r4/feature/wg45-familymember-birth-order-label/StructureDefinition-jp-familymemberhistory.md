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

 
このプロファイルはFamilyMemberHistoryリソースに対して、患者の家族歴のデータを送受信するための共通の制約と拡張を定めたものである。 

本プロファイルは、患者に関連する家族の重要な健康状態（家族歴）を登録・検索・取得するために、FHIR FamilyMemberHistory リソースを使用するにあたっての最低限の制約を記述したものである。本プロファイルに準拠する場合に必須となる要素、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景及び想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 患者の遺伝性リスクの把握を目的とした、患者に関連する家族の疾患情報の記録・更新
* 看護・介護・福祉における療養支援やケア計画のための家族関係の把握
* 家族の氏名や生年月日が判明しない状況での、家族の兄弟姉妹内の出生順呼称（長男、長女、二男、二女など）による補足
* 複数の FamilyMemberHistory を List リソースに集約した、患者の家族歴全体の参照

## スコープ

本プロファイルは、患者に関連する家族の重要な健康状態の記録である家族歴を対象とする。家族歴の精度には幅があり、疾患名が「気管支喘息」のように明確な場合もあれば、「癌（部位不明）」のように不確定な場合もある。また、続柄には血縁者に加え、養子・継子・内縁のパートナーなどの非血縁者も含まれる。

このような基本的な家族歴は、患者の背景理解や療養支援に有用であるとともに、より厳密な家族歴を作成するための基礎資料にもなる。また、日本の診療現場では家族を氏名ではなく、家族の兄弟姉妹内の出生順に基づく呼称で把握することが多いため、本プロファイルでは続柄（relationship）を補足する情報として、この呼称を拡張（BirthOrderLabel）により表現する。

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

本プロファイルに準拠するためには、次の要素の値が存在しなければならない。

* `patient` : 本リソースが対象とする患者
* `relationship` : 患者と家族との続柄（父、母、兄弟姉妹など）
*  

| | | | |
| :--- | :--- | :--- | :--- |
| `status`: 家族歴の記録状態（partial | completed | entered-in-error | health-unknown） |

 

### 実装ガイダンス

#### 記録単位

`FamilyMemberHistory` は、患者に関連する個人1人につき1リソースとして記録する。

#### 続柄 relationship の記録

患者と対象となる家族構成員との関係は `FamilyMemberHistory.relationship` に記録する。
 `relationship` には、HL7 V3 RoleCode の FamilyMember ValueSet を使用する。

#### 出生順呼称 BirthOrderLabel の記録

家族内で用いられる「長男」「二男」「長女」「二女」などの出生順に基づく呼称は、`BirthOrderLabel` 拡張で記録する。

出生順呼称は、患者との続柄そのものを置き換えるものではない。患者との関係は `relationship` で表現し、出生順呼称は対象となる家族構成員に関する補足情報として記録する。

出生順呼称は、必ずしも客観的に算出された生物学的出生順位、戸籍上の記載、または遺伝学的血統図における出生順と一致するとは限らない。日常診療で患者または情報提供者から申告された家族内呼称を記録することを想定する。

**実装例：母方のおば（次女）の場合**

以下の例は、患者の母方のおば（`relationship` = `MAUNT`：母方のおば）が、母の兄弟姉妹の中で「次女」と呼称されている場合の実装を示す。

```
{
  "resourceType": "FamilyMemberHistory",
  "status": "partial",
  "patient": {
    "reference": "Patient/jp-patient-example-1",
    "display": "山田 太郎"
  },
  "relationship": {
    "coding": [{
      "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
      "code": "MAUNT",
      "display": "母方のおば"
    }]
  },
  "extension": [{
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_BirthOrderLabel",
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrderLabel_CS",
        "code": "daughter-2",
        "display": "second daughter"
      }],
      "text": "次女"
    }
  }],
  "sex": {
    "coding": [{
      "system": "http://hl7.org/fhir/administrative-gender",
      "code": "female"
    }]
  }
}

```

上記例では、`relationship` に `MAUNT`（母方のおば）を記録し、`extension` に `BirthOrderLabel` 拡張を追加して「次女」（`daughter-2`）を補足情報として記録している。これにより、患者との続柄と家族内での出生順呼称を区別して表現できる。

#### 疾患情報 condition の記録

対象となる家族構成員の疾患情報は `condition` 要素に記録する。
 疾患をコード化できる場合は `condition.code.coding` に記録し、必要に応じて `condition.code.text` に自由記載を行う。

#### 補足情報 note の使用

血縁関係、法的関係、同居関係、内縁関係など、`relationship` と出生順呼称のみでは十分に表現できない情報は、必要に応じて `note` に記録する。

#### 複数の家族歴の集約

複数の `FamilyMemberHistory` インスタンスをまとめて扱う場合は、`List` リソース等を用いて患者の家族歴全体を集約できる。

### 拡張定義

JP Core FamilyMemberHistoryプロファイルで使用される拡張は次の通りである。

* 拡張: 出生順呼称
  * 説明: FamilyMemberHistory.relationshipで表現される続柄を補足し、家族内で用いられる出生順に基づく呼称（長男、二男、長女、二女など）を表現する。
  * URL: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_BirthOrderLabel
  * 値の型: CodeableConcept
  * Binding: JP_BirthOrderLabel_VS(preferred)

### 用語定義

#### 続柄

`relationship` には HL7 V3 RoleCode の FamilyMember ValueSet を使用する。

#### 出生順呼称

出生順呼称には、JP_BirthOrderLabel_CS および JP_BirthOrderLabel_VS を使用する。

| | | |
| :--- | :--- | :--- |
| 続柄 | HL7 V3 FamilyMember ValueSet | http://terminology.hl7.org/ValueSet/v3-FamilyMember |
| 出生順呼称 | JP BirthOrderLabel CodeSystem | http://jpfhir.jp/fhir/core/CodeSystem/JP_BirthOrderLabel_CS |
| 出生順呼称 | JP BirthOrderLabel ValueSet | http://jpfhir.jp/fhir/core/ValueSet/JP_BirthOrderLabel_VS |

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/FamilyMemberHistory?identifier=http://myhospital.com/fhir/familymemberhistory|123 |
| SHOULD | patient | reference | GET [base]/FamilyMemberHistory?patient=Patient/123 |
| MAY | patient,relationship | reference,token | GET [base]/FamilyMemberHistory?patient=Patient/123&relationship=FAMMEMB |
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
* [**内縁のパートナー**](FamilyMemberHistory-jp-familymemberhistory-example-3.md)
* [**母方のおば（次女）**](FamilyMemberHistory-jp-familymemberhistory-example-4.md)
* [**家族歴一覧**][jp-familymemberhistory-example-list]

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
  "description" : "このプロファイルはFamilyMemberHistoryリソースに対して、患者の家族歴のデータを送受信するための共通の制約と拡張を定めたものである。",
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
        "short" : "Information about patient's relatives, relevant for patient. 患者に関連する家族の情報（家族歴）",
        "definition" : "Significant health conditions for a person related to the patient relevant in the context of care for the patient.  \n患者の診療に関連する、患者家族の重要な健康状態に関する情報。"
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
        "id" : "FamilyMemberHistory.extension:BirthOrderLabel",
        "path" : "FamilyMemberHistory.extension",
        "sliceName" : "BirthOrderLabel",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_BirthOrderLabel"
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
