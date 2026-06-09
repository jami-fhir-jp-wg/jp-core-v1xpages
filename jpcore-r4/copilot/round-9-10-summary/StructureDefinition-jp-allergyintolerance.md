# JP Core AllergyIntolerance Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core AllergyIntolerance Profile**

## Resource Profile: JP Core AllergyIntolerance Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_AllergyIntolerance
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_AllergyIntolerance
* **項目**: *Title*
  * **内容**: JP Core AllergyIntolerance Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはAllergyIntoleranceリソースに対して、患者のアレルギー不耐症に関するデータを送受信するための制約と拡張を定めるものである。 

本プロファイルは、患者のアレルギー不耐症とその臨床的な評価を表現するJP_AllergyIntoleranceリソースの記録・更新・検索を行う上で、準拠するべき必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## スコープ

* JP_AllergyIntoleranceリソースは患者のアレルギー不耐症を表現する。具体的には、特定の物質または物質群への将来の暴露に対して有害反応を起こす傾向、または患者に対する潜在的なリスクを表現する
* アレルギー不耐症の対象物質は、医薬品（適切な用量で正しく投与された場合）、化学物質、食べ物、植物や動物に由来する物質、または昆虫刺傷からの毒などである

## 想定シナリオ

本プロファイルは、以下のようなユースケースを想定する。

* JP_AllergyIntoleranceリソースの記録・更新・検索

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)
* Examples for this Profile: [AllergyIntolerance/jp-allergyintolerance-example-1](AllergyIntolerance-jp-allergyintolerance-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-allergyintolerance)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-allergyintolerance.csv), [Excel](StructureDefinition-jp-allergyintolerance.xlsx), [Schematron](StructureDefinition-jp-allergyintolerance.sch) 

### 必須要素

本プロファイルに準拠するためには、次の項目の値が存在しなければならない。

* patient: 本リソースを所有する患者

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/AllergyIntolerance?identifier=http://myhospital.com/fhir/allergyintolerance|123 |
| SHOULD | patient | reference | GET [base]/AllergyIntolerance?patient=Patient/123 |
| MAY | patient,date | reference,date | GET [base]/AllergyIntolerance?patient=Patient/123&date=ge2021-08-24 |
| MAY | patient,clinical-status | reference,token | GET [base]/AllergyIntolerance?patient=Patient/123&clinical-status=active |
| MAY | patient,verification-status | reference,token | GET [base]/AllergyIntolerance?patient=Patient/123&verification-status=confirmed |
| MAY | patient,type | reference,token | GET [base]/AllergyIntolerance?patient=Patient/123&type=allergy |
| MAY | patient,category | reference,token | GET [base]/AllergyIntolerance?patient=Patient/123&category=food |
| MAY | patient,criticality | reference,token | GET [base]/AllergyIntolerance?patient=Patient/123&criticality=high |

##### 必須検索パラメータ

本プロファイルに準拠するためには、以下の検索パラメータをサポートしなければならない（**SHALL**）

1. 検索パラメータidentifierを指定し、レコードIDなどの識別子によりAllergyIntoleranceを検索

```
GET [base]/AllergyIntolerance?identifier={system|}[token]

```

例：

```
GET [base]/AllergyIntolerance?identifier=http://myhospital.com/fhir/allergyintolerance|123

```

指定された識別子に一致するAllergyIntoleranceリソースを含むBundleを検索する。

##### 推奨検索パラメータ

本プロファイルに準拠するためには、以下の検索パラメータをサポートすることが推奨される（SHOULD）

1. 検索パラメータpatientを指定し、該当するすべてのAllergyIntoleranceを検索

```
GET [base]/AllergyIntolerance?patient={reference}

```

例：

```
GET [base]/AllergyIntolerance?patient=Patient/123

```

指定された患者のすべてのAllergyIntoleranceを含むBundleを返却する。

##### 追加検索パラメータ

オプションとして次の検索パラメータをサポートすることができる（MAY）

1. 検索パラメータpatientとdateの組みを指定し、該当するすべてのAllergyIntoleranceを検索
* dateに対する次の比較演算子のサポートを含む: gt,lt,ge,le
* AND検索のオプションのサポートを含む (例えば.date=[date]&date=[date]]&…)

```
 GET [base]/AllergyIntolerance?patient={reference}&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}

```

例：

```
 GET [base]/AllergyIntolerance?patient=Patient/123&date=ge2021-08-24

```

指定された患者および日付のすべてのAllergyIntoleranceを含むBundleを返却する。
1. 検索パラメータpatientとclinical-statusの組みを指定し、該当するすべてのAllergyIntoleranceを検索
* OR検索のサポートを含む(例えば clinical-status={system|}[token],{system|}[token],…)

```
 GET [base]/AllergyIntolerance?patient={reference}&clinical-status={system|}[token]{,{system|}[token],...}

```

例：

```
 GET [base]/AllergyIntolerance?patient=Patient/123&clinical-status=active

```

```
 GET [base]/AllergyIntolerance?patient=Patient/123&clinical-status=http://hl7.org/fhir/ValueSet/allergyintoleranceclinical|active

```

指定された患者およびステータスのすべてのAllergyIntoleranceを含むBundleを返却する。
1. 検索パラメータpatientとverification-status組みを指定し、該当するすべてのAllergyIntoleranceを検索
* OR検索のサポートを含む(例えば verification-status={system|}[token],{system|}[token],…)

```
 GET [base]/AllergyIntolerance?patient={reference}&verification-status={system|}[token]{,{system|}[token],...}

```

例：

```
 GET [base]/AllergyIntolerance?patient=Patient/123&verification-status=confirmed

```

```
 GET [base]/AllergyIntolerance?patient=Patient/123&verification-status=http://hl7.org/fhir/ValueSet/allergyintoleranceverification|confirmed

```

指定された患者およびステータスのすべてのAllergyIntoleranceを含むBundleを返却する。
1. 検索パラメータpatientとtype組みを指定し、該当するすべてのAllergyIntoleranceを検索
* OR検索のサポートを含む(例えば type=[token],{[token],…)

```
 GET [base]/AllergyIntolerance?patient={reference}&type=[token]{,[token],...}

```

例：

```
 GET [base]/AllergyIntolerance?patient=Patient/123&type=allergy

```

```
 GET [base]/AllergyIntolerance?patient=Patient/123&type=http://hl7.org/fhir/ValueSet/allergy-intolerance-type|allergy

```

指定された患者およびステータスのすべてのAllergyIntoleranceを含むBundleを返却する。
1. 検索パラメータpatientとcategory組みを指定し、該当するすべてのAllergyIntoleranceを検索
* OR検索のサポートを含む(例えば category=[token],[token],…)

```
 GET [base]/AllergyIntolerance?patient={reference}&category=[token]{,[token],...}

```

例：

```
 GET [base]/AllergyIntolerance?patient=Patient/123&category=food

```

```
 GET [base]/AllergyIntolerance?patient=Patient/123&category=http://hl7.org/fhir/ValueSet/condition-category|food

```


指定された患者およびステータスのすべてのAllergyIntoleranceを含むBundleを返却する。

1. 検索パラメータpatientとcriticality組みを指定し、該当するすべてのAllergyIntoleranceを検索
* OR検索のサポートを含む(例えば criticality=[token],[token],…)


  例：


  指定された患者およびステータスのすべてのAllergyIntoleranceを含むBundleを返却する。

##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**食物アレルギー（小麦）**](AllergyIntolerance-jp-allergyintolerance-example-1.md)

## 注意事項

* 例えば、患者に「既知のアレルギー・なし」が記録されている状態で、新規に「カニアレルギー・あり」の記録を追加する際には「既知のアレルギー・なし」の記録を削除すべきである。同様に、患者に「カニアレルギー・あり」が記録されている状態で「既知のアレルギー・なし」を記録しようとした際には、システムはこの矛盾を検出するべきである。
* アレルギーの否定を表現する方法について。本プロファイルが継承するプロファイル（AllergyIntolerance R4.0.1）では「既知のアレルギー・なし」を表現するために、No known allergy（SNOMED-CT:716186003）等を用いることが例示されている。一方で、本プロファイルの要素であるcodeのバインド先として例示するJP Core AllergyIntolerance Value Setには「既知のアレルギー・なし」等に相当する表現がない。そのため、本プロファイルを継承するプロファイルが、JP Core AllergyIntolerance Value Setを利用する場合には、否定されたアレルギーを表現するために、アレルギーの有無を区別する要素を追加するなどの措置を取ることを想定している。なお、本プロファイルはこのValue Setの利用を要求・推奨するものではないため、他のValue Setを使う選択肢もある。
* いずれについても詳細は、[Negated Allergies and Intolerances](https://hl7.org/fhir/R4/allergyintolerance.html#9.1.3.3)を参照のこと。   

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-allergyintolerance",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_AllergyIntolerance",
  "version" : "1.3.0-dev",
  "name" : "JP_AllergyIntolerance",
  "title" : "JP Core AllergyIntolerance Profile",
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
  "description" : "このプロファイルはAllergyIntoleranceリソースに対して、患者のアレルギー不耐症に関するデータを送受信するための制約と拡張を定めるものである。",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "AllergyIntolerance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AllergyIntolerance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AllergyIntolerance",
        "path" : "AllergyIntolerance",
        "short" : "Allergy or Intolerance (generally: Risk of adverse reaction to a substance). アレルギー不耐症 (特定の物質への曝露で生じた有害反応)",
        "definition" : "Risk of harmful or undesirable, physiological response which is unique to an individual and associated with exposure to a substance.  \nこのリソースは患者のアレルギー不耐症を表現する。具体的には、特定の物質または物質群へのに曝露よって生じる有害反応の傾向や、潜在的なリスクを表現する。"
      },
      {
        "id" : "AllergyIntolerance.text",
        "path" : "AllergyIntolerance.text",
        "short" : "Text summary of the resource, for human interpretation. このリソースを人間が解釈するためのテキスト要約"
      },
      {
        "id" : "AllergyIntolerance.clinicalStatus",
        "path" : "AllergyIntolerance.clinicalStatus",
        "short" : "active | inactive | resolved (アクティブ | 非アクティブ | 解決済み)",
        "definition" : "The clinical status of the allergy or intolerance.  \nこのアレルギー不耐症のステータス。"
      },
      {
        "id" : "AllergyIntolerance.verificationStatus",
        "path" : "AllergyIntolerance.verificationStatus",
        "short" : "unconfirmed | confirmed | refuted | entered-in-error (未確認 | 確認済み | 否定された | 入力エラー)",
        "definition" : "Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).  \n特定された物質（医薬品を含む）が有害反応を誘発する確実性の度合い。"
      },
      {
        "id" : "AllergyIntolerance.type",
        "path" : "AllergyIntolerance.type",
        "short" : "allergy | intolerance - Underlying mechanism (if known) （アレルギー | 不耐症）",
        "definition" : "Identification of the underlying physiological mechanism for the reaction risk.  \n有害反応を誘発する生理的なメカニズムが特定できる場合にアレルギーか不耐性かを区別する。"
      },
      {
        "id" : "AllergyIntolerance.category",
        "path" : "AllergyIntolerance.category",
        "short" : "food | medication | environment | biologic (食品 | 薬品 | 環境 | 生体)",
        "definition" : "Category of the identified substance.  \n同定された物質のカテゴリー。"
      },
      {
        "id" : "AllergyIntolerance.criticality",
        "path" : "AllergyIntolerance.criticality",
        "short" : "low | high | unable-to-assess (低い | 高い | 評価できない)",
        "definition" : "Estimate of the potential clinical harm, or seriousness, of the reaction to the identified substance.  \n同定された物質が誘発する有害反応の臨床的な重要度。"
      },
      {
        "id" : "AllergyIntolerance.code",
        "path" : "AllergyIntolerance.code",
        "short" : "Code that identifies the allergy or intolerance. このアレルギー不耐症の識別コード",
        "definition" : "Code for an allergy or intolerance statement (either a positive or a negated/excluded statement). This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk (e.g., \"Latex\"), an allergy or intolerance condition (e.g., \"Latex allergy\"), or a negated/excluded code for a specific substance or class (e.g., \"No latex allergy\") or a general or categorical negated statement (e.g., \"No known allergy\", \"No known drug allergies\"). Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'. If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.   \nアレルギー不耐症を識別するためのコード（肯定または否定・除外の両者を含む）。このコードは、アレルゲンとなる物資（例:Latex）、状態としてのアレルギー不耐性（例:Latex allergy）、特定の物質やクラスに対する否定・除外コード（例: No latex allergy）、物質やクラス全般に対する否定・除外コード（例: No known allergy, No known drug allergies）などが考えられる。  \n注: 特定の有害反応を誘発する物質は、原因として特定された物質と異なっていてもよいが、整合がとれていなければならない。たとえば、より具体的な物質（ブランド薬など）や、特定された物質を含む複合製品の場合がある。  \nAllergyIntolerance.codeのみを処理し、AllergyIntolerance.reaction.substanceを無視しても、臨床的に安全でなければならない。  \n受信システムがAllergyIntolerance.reaction.substanceがAllergyIntolerance.codeのセマンティックスコープ内に（前者が後者の意味的な下位概念にあること）を確認できない場合、受信システムはAllergyIntolerance.reaction.substanceを無視する必要がある。",
        "comment" : "このプロファイルを利用するにあたっては注意事項も参照のこと。[JP Core Allergyintoleranceプロファイル 注意事項](StructureDefinition-jp-allergyintolerance.html#%E6%B3%A8%E6%84%8F%E4%BA%8B%E9%A0%85)",
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_AllergyIntolerance_VS"
        }
      },
      {
        "id" : "AllergyIntolerance.patient",
        "path" : "AllergyIntolerance.patient",
        "short" : "Who the sensitivity is for. このアレルギー不耐症を有する患者",
        "definition" : "The patient who has the allergy or intolerance.  \nこのアレルギー不耐症を有する患者。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.encounter",
        "path" : "AllergyIntolerance.encounter",
        "short" : "Encounter when the allergy or intolerance was asserted. このアレルギー不耐症が判明した受療の状況（外来、入院、救急、在宅など）",
        "definition" : "The encounter when the allergy or intolerance was asserted.  \nこのアレルギー不耐症が判明した受療の状況（外来、入院、救急、在宅など）",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.onset[x]",
        "path" : "AllergyIntolerance.onset[x]",
        "short" : "When allergy or intolerance was identified. アレルギー不耐症が出現した時期",
        "definition" : "Estimated or actual date, date-time, or age when allergy or intolerance was identified.  \nこのアレルギー不耐症が確認された、もしくは推定された時期（日付、日時、年齢）"
      },
      {
        "id" : "AllergyIntolerance.recordedDate",
        "path" : "AllergyIntolerance.recordedDate",
        "short" : "Date first version of the resource instance was recorded. このアレルギー不耐症が初めて記録された日時",
        "definition" : "The recordedDate represents when this particular AllergyIntolerance record was created in the system, which is often a system-generated date. このアレルギー不耐症の記録がシステムで作成された日時を表し、多くの場合、システムが生成した日付である。"
      },
      {
        "id" : "AllergyIntolerance.recorder",
        "path" : "AllergyIntolerance.recorder",
        "short" : "Who recorded the sensitivity. 誰がこのアレルギー不耐症を記録したか",
        "definition" : "Individual who recorded the record and takes responsibility for its content.  \nこのアレルギー不耐症を記録しその内容に責任を持つ個人。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.asserter",
        "path" : "AllergyIntolerance.asserter",
        "short" : "Source of the information about the allergy. このアレルギー不耐症の情報源",
        "definition" : "The source of the information about the allergy that is recorded.  \nこのアレルギー不耐症に関する情報の発生源または取得元。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole"
            ]
          }
        ]
      },
      {
        "id" : "AllergyIntolerance.lastOccurrence",
        "path" : "AllergyIntolerance.lastOccurrence",
        "short" : "Date(/time) of last known occurrence of a reaction. このアレルギー不耐症が最も直近に発生した日時",
        "definition" : "Represents the date and/or time of the last known occurrence of a reaction event.  \n最も直近に発生した日時を表す。"
      },
      {
        "id" : "AllergyIntolerance.note",
        "path" : "AllergyIntolerance.note",
        "short" : "Additional text not captured in other fields. 他のフィールド要素では記述できない追加テキスト",
        "definition" : "Additional narrative about the propensity for the Adverse Reaction, not captured in other fields.  \n他のフィールド要素では表現できない、このアレルギー不耐症に関する追加的な記述。"
      },
      {
        "id" : "AllergyIntolerance.reaction",
        "path" : "AllergyIntolerance.reaction",
        "short" : "Adverse Reaction Events linked to exposure to substance. このアレルゲンへの曝露に関連する有害反応",
        "definition" : "Details about each adverse reaction event linked to exposure to the identified substance.  \n同定された物質への曝露に関連する個々の有害反応に関する詳細情報。"
      },
      {
        "id" : "AllergyIntolerance.reaction.substance",
        "path" : "AllergyIntolerance.reaction.substance",
        "short" : "Specific substance or pharmaceutical product considered to be responsible for event. 有害反応の原因と考えられる特定の物質または医薬品",
        "definition" : "Identification of the specific substance (or pharmaceutical product) considered to be responsible for the Adverse Reaction event. Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. For instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and ignore the 'reaction.substance'.  If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, then the receiving system should ignore AllergyIntolerance.reaction.substance.  \n有害反応の原因と考えられる物質（または医薬品）。  \n注：特定の有害反応を誘発する物質は、原因として特定された物質と異なっていてもよいが、整合がとれていなければならない。たとえば、より具体的な物質（ブランド薬など）や、特定された物質を含む複合製品の場合がある。  \nAllergyIntolerance.codeのみを処理し、AllergyIntolerance.reaction.substanceを無視しても、臨床的に安全でなければならない。  \n受信システムがAllergyIntolerance.reaction.substanceがAllergyIntolerance.codeのセマンティックスコープ内に（前者が後者の意味的な下位概念にあること）を確認できない場合、受信システムはAllergyIntolerance.reaction.substanceを無視する必要がある。"
      },
      {
        "id" : "AllergyIntolerance.reaction.manifestation",
        "path" : "AllergyIntolerance.reaction.manifestation",
        "short" : "Clinical symptoms/signs associated with the Event. この有害反応に関連する症状や兆候",
        "definition" : "Clinical symptoms and/or signs that are observed or associated with the adverse reaction event.  \nこの有害反応に関連する症状や兆候。"
      },
      {
        "id" : "AllergyIntolerance.reaction.description",
        "path" : "AllergyIntolerance.reaction.description",
        "short" : "Description of the event as a whole. この有害反応に関する全般的な記述",
        "definition" : "Text description about the reaction as a whole, including details of the manifestation if required.  \n必要であれば症状兆候の詳細も含めた、有害反応全体に関するテキストによる記述。"
      },
      {
        "id" : "AllergyIntolerance.reaction.onset",
        "path" : "AllergyIntolerance.reaction.onset",
        "short" : "Date(/time) when manifestations showed. この有害反応がみられた日時",
        "definition" : "Record of the date and/or time of the onset of the Reaction.  \nこの有害反応の開始の日付もしくは日時の記録。"
      },
      {
        "id" : "AllergyIntolerance.reaction.severity",
        "path" : "AllergyIntolerance.reaction.severity",
        "short" : "mild | moderate | severe (of event as a whole) （軽度 | 中度 | 重度）",
        "definition" : "Clinical assessment of the severity of the reaction event as a whole, potentially considering multiple different manifestations.  \n有害反応の重症度の全体としての臨床的な評価で、潜在的には複数の異なる症状兆候を考慮して決める。"
      },
      {
        "id" : "AllergyIntolerance.reaction.exposureRoute",
        "path" : "AllergyIntolerance.reaction.exposureRoute",
        "short" : "How the subject was exposed to the substance. 患者がこの物質にどのように曝露したか",
        "definition" : "Identification of the route by which the subject was exposed to the substance.  \n患者がどのような経路でこの物質に曝露したかの同定。"
      },
      {
        "id" : "AllergyIntolerance.reaction.note",
        "path" : "AllergyIntolerance.reaction.note",
        "short" : "Text about event not captured in other fields. 他のフィールド要素では記述できない追加テキスト",
        "definition" : "Additional text about the adverse reaction event not captured in other fields.  \n他のフィールド要素では記述できない、有害反応に関する追加テキスト。"
      }
    ]
  }
}

```
