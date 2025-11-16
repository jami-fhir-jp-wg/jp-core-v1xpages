# JP Core Condition Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Profile**

## Resource Profile: JP Core Condition Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Condition
* **項目**: *Title*
  * **内容**: JP Core Condition Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このプロファイルはConditionリソースに対して、患者の健康状態に関するデータを送受信するための共通の制約と拡張を定めたものである。 

本プロファイルは、患者の健康状態とその臨床的な評価を表現するJP_Conditionリソースの記録・更新・検索を行う上で、準拠するべき必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## スコープ

* JP_Conditionリソースは、患者の健康上の懸念となるレベルに達した、身体的、精神的、社会的な**負**の状態(condition)や問題（problem／issue）、医療者による診断(diagnosis)、生じたイベント(event)、置かれている状況(situation)、臨床医学的概念(clinical concept)を表現する
* 健康上の**負の状態**を表すものであるため、"妊娠"のようにそれが正常なものである場合にはJP_Conditionの対象外である

## 想定シナリオ

本プロファイルは、以下のようなユースケースを想定する。

* JP_Conditionリソースの記録・更新・検索

## プロファイル定義

**Usages:**

* Derived from this Profile: [JP Core Condition Diagnosis Profile](StructureDefinition-jp-condition-diagnosis.md)
* Refer to this Profile: [JP Core Encounter Profile](StructureDefinition-jp-encounter.md), [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md), [JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md), [JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md)...Show 4 more,[JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md),[JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md),[JP Core Procedure Profile](StructureDefinition-jp-procedure.md)and[JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* Examples for this Profile: [Condition/jp-condition-example-1](Condition-jp-condition-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-condition)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-condition.csv), [Excel](StructureDefinition-jp-condition.xlsx), [Schematron](StructureDefinition-jp-condition.sch) 

### 必須要素

本プロファイルに準拠するためには、次の項目の値が存在しなければならない。

* subject : 本リソースを所有する患者

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Condition?identifier=http://myhospital.com/fhir/condition|123 |
| SHOULD | patient | reference | GET [base]/Condition?patient=Patient/123 |
| MAY | patient,onset-date | reference,date | GET [base]/Condition?patient=Patient/123&onset-date=ge2021-08-24 |
| MAY | patient,clinical-status | reference,token | GET [base]/Condition?patient=Patient/123&clinical-status=active |
| MAY | patient,verification-status | reference,token | GET [base]/Condition?patient=Patient/123&verification-status=confirmed |
| MAY | patient,category | reference,token | GET [base]/Condition??patient=Patient/123&category=food |

##### 必須検索パラメータ

本プロファイルに準拠するためには、以下の検索パラメータをサポートしなければならない（SHALL）

1. 検索パラメータidentifierを指定し、レコードIDなどの識別子によりConditionを検索

```
GET [base]/Condition?identifier={system|}[token]

```

例：

```
GET [base]/Condition?identifier=http://myhospital.com/fhir/condition|123

```

指定された識別子に一致するConditionリソースを含むBundleを検索する。

##### 推奨検索パラメータ

本プロファイルに準拠するためには、以下の検索パラメータをサポートすることが推奨される（SHOULD）

1. 検索パラメータpatientを指定し、該当するすべてのConditionを検索

```
GET [base]/Condition?patient={reference}

```

例：

```
GET [base]/Condition?patient=Patient/123

```

指定された患者のすべてのConditionリソースを含むBundleを検索する。

##### 追加検索パラメータ

オプションとして次の検索パラメータをサポートすることができる（MAY）

1. 検索パラメータpatientとdateを指定し、該当するすべてのConditionを検索
* dateに対する次の比較演算子のサポートを含む: gt,lt,ge,le
* AND検索のオプションのサポートを含む (例えば.date=[date]&date=[date]]&…)

```
   GET [base]/Condition?patient={reference}&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}

```

例：

```
   GET [base]/Condition?patient=Patient/123&date=ge2021-08-24

```

指定された患者および日付のすべてのConditionを含むBundleを検索する。
1. 検索パラメータpatientとclinical-statusを指定し、該当するすべてのConditionを検索
* OR検索のサポートを含む(例えば clinical-status={system|}[token],{system|}[token],…)

```
   GET [base]/Condition?patient={reference}&clinical-status={system|}[token]{,{system|}[token],...}

```

例：

```
   GET [base]/Condition?patient=Patient/123&clinical-status=active

```

```
   GET [base]/Condition?patient=Patient/123&clinical-status=http://hl7.org/fhir/ValueSet/condition-clinical|active

```

指定された患者およびステータスのすべてのConditionを含むBundleを検索する。
1. 検索パラメータpatientとverification-statusを指定し、該当するすべてのConditionを検索
* OR検索のサポートを含む(例えば verification-status={system|}[token],{system|}[token],…)

```
   GET [base]/Condition?patient={reference}&verification-status={system|}[token]{,{system|}[token],...}

```

例：

```
   GET [base]/Condition?patient=Patient/123&verification-status=confirmed

```

```
   GET [base]/Condition?patient=Patient/123&verification-status=http://hl7.org/fhir/ValueSet/condition-ver-status|confirmed

```

指定された患者およびステータスのすべてのConditionを含むBundleを検索する。
1. 検索パラメータpatientとcategoryを指定し、該当するすべてのConditionを検索
* OR検索のサポートを含む(例えば category={system|}[token],{system|}[token],…)

```
   GET [base]/Condition?patient={reference}&category={system|}[token]{,{system|}[token],...}

```

例：

```
   GET [base]/Condition?patient=Patient/123&category=claim-diagnosis

```

```
   GET [base]/Condition?patient=Patient/123&category=http://hl7.org/fhir/ValueSet/condition-category|claim-diagnosis

```

指定された患者およびステータスのすべてのConditionを含むBundleを検索する。

##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**病名（直腸癌）**](Condition-jp-condition-example-1.md)

## 注意事項

* Condition.codeについての補足。現時点では、患者の状態を包括的に含む適当な日本語用語集がないと考え、基底のValue Setを継承するにとどめている。そのため、本プロファイルを継承するプロファイルがその用途に応じて、MEDIS標準病名マスタやICD-11などをCode SystemとするValue Setを独自に設定することを想定している。

## その他、参考文献・リンク等

1. HL70421 Severity of Illness Code … JAHIS データ交換規約（共通編）Ver1.3 p.119[https://www.jahis.jp/files/user/04_JAHIS%20standard/22-003_JAHIS%20データ交換規約（共通編）Ver.1.3.pdf](https://www.jahis.jp/files/user/04_JAHIS%20standard/22-003_JAHIS%20データ交換規約（共通編）Ver.1.3.pdf)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-condition",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
  "version" : "1.3.0-dev",
  "name" : "JP_Condition",
  "title" : "JP Core Condition Profile",
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
  "description" : "このプロファイルはConditionリソースに対して、患者の健康状態に関するデータを送受信するための共通の制約と拡張を定めたものである。",
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
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition",
        "short" : "Detailed information about conditions, problems or diagnoses. 患者の臨床状態、問題、または診断に関する詳細な情報",
        "definition" : "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.  \n健康上の懸念となるレベルに達した、身体的、精神的、社会的な負の状態(condition)や問題（problem／issue）、医療者による診断(diagnosis)、生じたイベント(event)、置かれている状況(situation)、臨床的概念(clinical concept)。"
      },
      {
        "id" : "Condition.text",
        "path" : "Condition.text",
        "short" : "Text summary of the resource, for human interpretation. このリソースを人間が解釈するためのテキスト要約"
      },
      {
        "id" : "Condition.clinicalStatus",
        "path" : "Condition.clinicalStatus",
        "short" : "active | recurrence | relapse | inactive | remission | resolved （アクティブ | 再発 | 再燃 | インアクティブ | 寛解 | 完治）",
        "definition" : "The clinical status of the condition.  \nこの患者状態の臨床的ステータス（アクティブか否かなど）"
      },
      {
        "id" : "Condition.verificationStatus",
        "path" : "Condition.verificationStatus",
        "short" : "unconfirmed | provisional | differential | confirmed | refuted | entered-in-error（十分に確認されていない | 暫定的 | 鑑別的 | 十分な根拠で存在 | 十分な根拠で否定 | 誤記載）",
        "definition" : "The verification status to support the clinical status of the condition.  \n この患者状態が存在するかどうかの検証状況。"
      },
      {
        "id" : "Condition.category",
        "path" : "Condition.category",
        "short" : "problem-list-item | encounter-diagnosis（プロブレムリスト | 一時的な診断）"
      },
      {
        "id" : "Condition.severity",
        "path" : "Condition.severity",
        "short" : "Subjective severity of condition. この患者状態の重症度。このプロファイルは、HL70421 Severity of Illness Codeで表現",
        "definition" : "A subjective assessment of the severity of the condition as evaluated by the clinician.  \n医療者によって評価されたこの患者状態の重症度。",
        "comment" : "Coding of the severity with a terminology is preferred, where possible.  \n可能な限り、ターミノロジを用いて重症度をコーディングすることが好ましい。  \nこのプロファイルではHL70421 Severity of Illness Code（MI 軽度, MO 中度, SE 重度）を採用。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ConditionSeverity_VS"
        }
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "short" : "Identification of the condition, problem or diagnosis. この患者状態の識別コード"
      },
      {
        "id" : "Condition.bodySite",
        "path" : "Condition.bodySite",
        "short" : "Anatomical location, if relevant. もし関連するのであれば、その人体部位"
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
        "short" : "Who has the condition? 誰がこの状態を有するか",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "Condition.encounter",
        "path" : "Condition.encounter",
        "short" : "Encounter created as part of. この患者状態の記録が作成された受療の状況（外来、入院、救急、在宅など）",
        "definition" : "The Encounter during which this Condition was created or to which the creation of this record is tightly associated.  \nこの患者状態の記録やレコード作成に関連する受療の状況（外来、入院、救急、在宅など）",
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
        "id" : "Condition.onset[x]",
        "path" : "Condition.onset[x]",
        "short" : "Estimated or actual date,  date-time, or age. この患者状態のオンセット。推定もしくは実際の日付、日時、年齢",
        "definition" : "Estimated or actual date or date-time  the condition began, in the opinion of the clinician.  \n臨床医の判断における、本状態が始まったと推定される、または実際に始まった日または日時。",
        "comment" : "Age is generally used when the patient reports an age at which the Condition began to occur.  \n年齢は一般的に、患者が症状が発生し始めた年齢を報告したケースで使用される。"
      },
      {
        "id" : "Condition.abatement[x]",
        "path" : "Condition.abatement[x]",
        "short" : "When in resolution/remission. この状態はいつ治癒／寛解／軽快したか"
      },
      {
        "id" : "Condition.recordedDate",
        "path" : "Condition.recordedDate",
        "short" : "Date record was first recorded. この患者状態が初めて記録された日時",
        "definition" : "The recordedDate represents when this particular Condition record was created in the system, which is often a system-generated date.  \nこの患者状態の記録がシステムで作成された日時を表し、多くの場合、システムが生成した日付である。"
      },
      {
        "id" : "Condition.recorder",
        "path" : "Condition.recorder",
        "short" : "Who recorded the condition. 誰がこの患者状態を記録したか",
        "definition" : "Individual who recorded the record and takes responsibility for its content.  \nこの患者状態を記録しその内容に責任を持つ個人。",
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
        "id" : "Condition.asserter",
        "path" : "Condition.asserter",
        "short" : "Person who asserts this condition. この患者状態の情報源",
        "definition" : "Individual who is making the condition statement.  \nこの患者状態に関する情報の発生源または取得元。",
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
        "id" : "Condition.stage",
        "path" : "Condition.stage",
        "short" : "Stage/grade, usually assessed formally. この患者状態のステージやグレード。通常は正式に評価されたもの",
        "definition" : "Clinical stage or grade of a condition. May include formal severity assessments.  \n病状の臨床病期またはグレード。正式な重症度評価を含む場合がある。"
      },
      {
        "id" : "Condition.stage.assessment",
        "path" : "Condition.stage.assessment",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"
            ]
          }
        ]
      },
      {
        "id" : "Condition.evidence",
        "path" : "Condition.evidence",
        "short" : "Supporting evidence. 患者状態の存在に関する根拠",
        "definition" : "Supporting evidence / manifestations that are the basis of the Condition's verification status, such as evidence that confirmed or refuted the condition.  \n患者状態を確認または否定した証拠など、状態の検証ステータスの裏付けとなる症状や兆候。"
      },
      {
        "id" : "Condition.note",
        "path" : "Condition.note",
        "short" : "Additional information about the Condition. この患者状態に関する追加情報",
        "definition" : "Additional information about the Condition. This is a general notes/comments entry for description of the Condition, its diagnosis and prognosis.  \nこの患者状態に関する追加情報。これは、状態の説明、診断、予後に関するメモやコメントである。"
      }
    ]
  }
}

```
