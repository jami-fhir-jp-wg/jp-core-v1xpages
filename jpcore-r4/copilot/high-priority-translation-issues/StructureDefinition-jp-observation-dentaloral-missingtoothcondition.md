# JP Core Observation DentalOral Missing Tooth Condition Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation DentalOral Missing Tooth Condition Profile**

## Resource Profile: JP Core Observation DentalOral Missing Tooth Condition Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_MissingToothCondition
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_DentalOral_MissingToothCondition
* **項目**: *Title*
  * **内容**: JP Core Observation DentalOral Missing Tooth Condition Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはObservationリソースに対して、口腔診査結果（口腔所見）の特定の欠損歯の処置データを送受信するための制約と拡張を定めたものである。 

本プロファイルは、口腔診査結果の特定の欠損歯の処置後等の状態について、情報の登録や検索、取得のために、FHIR Observationリソースを使用するにあたっての、最低限の制約を記述したものである。 Observation リソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* Patientリソースから指定された日時での口腔診査結果の特定の欠損歯の処置後等の状態の参照
* 関連する他のリソース（Observationリソースや、Patientリソース等）の参照

## スコープ

本プロファイルでは上記想定シナリオにて用いられるObservationの用途がスコープであり、特定の欠損歯の処置後等の状態を取り扱う際に、必要な要件を定義している。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core Observation DentalOral Tooth Existence Profile](StructureDefinition-jp-observation-dentaloral-toothexistence.md)
* Examples for this Profile: [Observation/jp-observation-dentaloral-missingtoothcondition-example-4](Observation-jp-observation-dentaloral-missingtoothcondition-example-4.md), [Observation/jp-observation-dentaloral-missingtoothcondition-example-5](Observation-jp-observation-dentaloral-missingtoothcondition-example-5.md) and [Observation/jp-observation-dentaloral-missingtoothcondition-example-6](Observation-jp-observation-dentaloral-missingtoothcondition-example-6.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-dentaloral-missingtoothcondition)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-dentaloral-missingtoothcondition.csv), [Excel](StructureDefinition-jp-observation-dentaloral-missingtoothcondition.xlsx), [Schematron](StructureDefinition-jp-observation-dentaloral-missingtoothcondition.sch) 

### 必須要素

本プロファイルでは、次の要素を持たなければならない。

* status : 口腔診査の進捗は必須とする
* category : このリソースが示す口腔診査の結果の欠損歯の処置状態を分類するための区分であり、必須とする
* code : Observation タイプ（欠損歯の処置状態）を示すため必須とする
* bodysite : 口腔診査の結果の特定の歯の位置を示すため必須とする
* subject : このリソースが示す口腔診査結果項目が、どの患者のものかを示すため、このプロファイルでは参照するpatientリソースの定義を必須とする

### Extensions定義

本プロファイル特有の拡張はない。

### 制約一覧

本プロファイルでは、以下の制約を満たさなければならない。

* hasMember要素は選択できない。`hasMember.empty()`

### サンプル

[公益社団法人 日本歯科医師会 「口腔状態モデルケースとコード化例」（2023年3月）](https://www.jda.or.jp/dentist/program/pdf/Oral-examination-Information-Standard-Code_v1.02-proportional.pdf)の記載例１２（欠損歯３本）を参考にサンプルデータを作成した。

* [**口腔診査結果４（欠損歯の処置状態）**](Observation-jp-observation-dentaloral-missingtoothcondition-example-4.md)
* [**口腔診査結果５（欠損歯の処置状態）**](Observation-jp-observation-dentaloral-missingtoothcondition-example-5.md)
* [**口腔診査結果６（欠損歯の処置状態）**](Observation-jp-observation-dentaloral-missingtoothcondition-example-6.md)

## その他、参考文献、リンク等

* [公益社団法人 日本歯科医師会 「口腔診査情報標準コード仕様 Ver.1.02」（2023年3月）](https://www.jda.or.jp/dentist/program/pdf/Oral-examination-Information-Standard-Code_v1.02.pdf)
* [公益社団法人 日本歯科医師会 「口腔状態モデルケースとコード化例」（2023年3月）](https://www.jda.or.jp/dentist/program/pdf/Oral-examination-Information-Standard-Code_v1.02-proportional.pdf)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-dentaloral-missingtoothcondition",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_DentalOral_MissingToothCondition",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_DentalOral_MissingToothCondition",
  "title" : "JP Core Observation DentalOral Missing Tooth Condition Profile",
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
  "description" : "このプロファイルはObservationリソースに対して、口腔診査結果（口腔所見）の特定の欠損歯の処置データを送受信するための制約と拡張を定めたものである。",
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
        "short" : "特定の欠損歯の処置状態のプロファイル",
        "definition" : "口腔審査結果レポートの特定の欠損歯の処置状態のプロファイル"
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "short" : "Observationのためのビジネス識別子  \r\n【JP Core仕様】当該口腔診査（検査項目）に対して、施設内で割り振られる一意の識別子。",
        "definition" : "Observationのためのビジネス識別子  \r\n【JP Core仕様】当該口腔診査（検査項目）に対して、施設内で割り振られる一意の識別子。",
        "comment" : "例：実施日に連番を付加した番号",
        "min" : 1
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "short" : "実施されるプラン、提案、依頼  【JP Core仕様】未使用",
        "definition" : "実施されるプラン、提案、依頼  【JP Core仕様】未使用",
        "comment" : "本プロファイル（特定の歯の有無・状態）は口腔診査レポートに紐付く前提のため、本プロファイル特有の定義はしない。"
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "short" : "参照されるイベントの一部分 【JP Core仕様】未使用",
        "definition" : "参照されるイベントの一部分 【JP Core仕様】未使用"
      },
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "short" : "結果の状態 【JP Core仕様】ステータス",
        "definition" : "結果の状態 【JP Core仕様】ステータス"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "short" : "Observationの種類（タイプ）の分類",
        "definition" : "Observationの種類（タイプ）の分類",
        "comment" : "【JP Core仕様】以下を指定する。\r\n第1コード：exam\r\n第2コード：LP89803-8 （Dental）\r\n第3コード：DO-1-03 （MissingToothCondition）",
        "min" : 3
      },
      {
        "id" : "Observation.category:first",
        "path" : "Observation.category",
        "sliceName" : "first",
        "short" : "このObservationに関する分類（JP_SimpleObservationCategory_VS）、必須項目",
        "definition" : "このObservationに関する分類（JP_SimpleObservationCategory_VS）、必須項目"
      },
      {
        "id" : "Observation.category:first.coding.code",
        "path" : "Observation.category.coding.code",
        "fixedCode" : "exam"
      },
      {
        "id" : "Observation.category:second",
        "path" : "Observation.category",
        "sliceName" : "second",
        "short" : "第2カテゴリはLOINCのコードLP89803-8固定で必須とする、ValueSetは指定しない",
        "definition" : "第2カテゴリはLOINCのコードLP89803-8固定で必須とする、ValueSetは指定しない",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Observation.category:second.coding.system",
        "path" : "Observation.category.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.category:second.coding.code",
        "path" : "Observation.category.coding.code",
        "min" : 1,
        "fixedCode" : "LP89803-8"
      },
      {
        "id" : "Observation.category:third",
        "path" : "Observation.category",
        "sliceName" : "third",
        "short" : "このObservationに関する詳細分類、JP_ObservationDetailedDentalCategory_VSより選択する、必須項目",
        "definition" : "このObservationに関する詳細分類、JP_ObservationDetailedDentalCategory_VSより選択する、必須項目",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationDetailedDentalCategory_VS"
        }
      },
      {
        "id" : "Observation.category:third.coding.system",
        "path" : "Observation.category.coding.system",
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationDentalCategory_CS"
      },
      {
        "id" : "Observation.category:third.coding.code",
        "path" : "Observation.category.coding.code",
        "min" : 1,
        "fixedCode" : "DO-1-03"
      },
      {
        "id" : "Observation.code.coding",
        "path" : "Observation.code.coding",
        "short" : "observation のタイプ（コードまたはタイプ）\r\n【JP Core仕様】54570-7（Oral/dental status）を指定する",
        "definition" : "observation のタイプ（コードまたはタイプ）\r\n【JP Core仕様】54570-7（Oral/dental status）を指定する"
      },
      {
        "id" : "Observation.code.coding.system",
        "path" : "Observation.code.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "Observation.code.coding.code",
        "path" : "Observation.code.coding.code",
        "min" : 1,
        "fixedCode" : "54570-7"
      },
      {
        "id" : "Observation.code.coding.display",
        "path" : "Observation.code.coding.display",
        "patternString" : "Oral/Dental Status"
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "short" : "観察対象者 【JP Core仕様】患者情報",
        "definition" : "観察対象者 【JP Core仕様】患者情報",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "short" : "subject 要素が実際のobservationの対象でない場合に、observation の対象物。  【JP Core仕様】未使用",
        "definition" : "subject 要素が実際のobservationの対象でない場合に、observation の対象物。  【JP Core仕様】未使用"
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "short" : "このobservationが行われる診療イベント",
        "definition" : "このobservationが行われる診療イベント",
        "comment" : "例：診療、歯科検診、身元不明者調査"
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "short" : "臨床的に関連する時刻または時間  【JP Core仕様】実施日時",
        "definition" : "臨床的に関連する時刻または時間  【JP Core仕様】実施日時",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "short" : "このバージョンが利用可能となった日時  【JP Core仕様】所見確定日時",
        "definition" : "このバージョンが利用可能となった日時  【JP Core仕様】所見確定日時"
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "observationに責任をもつ者",
        "definition" : "observationに責任をもつ者",
        "comment" : "例：歯科医師など"
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "実際の結果値  【JP Core仕様】component要素を利用して複数の結果を表現することを考慮しているため、本要素は使用しない",
        "definition" : "実際の結果値  【JP Core仕様】component要素を利用して複数の結果を表現することを考慮しているため、本要素は使用しない",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Observation.dataAbsentReason",
        "path" : "Observation.dataAbsentReason",
        "short" : "結果が欠損値である理由  【JP Core仕様】結果が存在しなかった場合、その理由",
        "definition" : "結果が欠損値である理由  【JP Core仕様】結果が存在しなかった場合、その理由"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "short" : "高、低、正常等の結果のカテゴリ分けした評価【JP Core仕様】未使用",
        "definition" : "高、低、正常等の結果のカテゴリ分けした評価【JP Core仕様】未使用"
      },
      {
        "id" : "Observation.note",
        "path" : "Observation.note",
        "short" : "結果に対するコメント  【JP Core仕様】未使用",
        "definition" : "結果に対するコメント  【JP Core仕様】未使用"
      },
      {
        "id" : "Observation.bodySite",
        "path" : "Observation.bodySite",
        "short" : "観察された身体部位  【JP Core仕様】特定の歯（歯式）を指定",
        "definition" : "観察された身体部位  【JP Core仕様】特定の歯（歯式）を指定",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DentalBodySite_VS"
        }
      },
      {
        "id" : "Observation.bodySite.extension:toothRoot",
        "path" : "Observation.bodySite.extension",
        "sliceName" : "toothRoot",
        "short" : "【JP Core仕様】特定の歯の歯根を指定",
        "definition" : "【JP Core仕様】特定の歯の歯根を指定",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_ToothRoot"
            ]
          }
        ]
      },
      {
        "id" : "Observation.bodySite.extension:toothSurface",
        "path" : "Observation.bodySite.extension",
        "sliceName" : "toothSurface",
        "short" : "【JP Core仕様】特定の歯の歯面を指定",
        "definition" : "【JP Core仕様】特定の歯の歯面を指定",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_ToothSurface"
            ]
          }
        ]
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "short" : "検査方法（目視、読影など",
        "definition" : "検査方法（目視、読影など"
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "short" : "観察（観測、検査）に使われた検体材料 【JP Core仕様】未使用",
        "definition" : "観察（観測、検査）に使われた検体材料 【JP Core仕様】未使用"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "comment" : "例：口腔内スキャナなど"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "short" : "observationグループに属する関連リソース 【JP Core仕様】欠損歯の処置状態は最終的な観察結果のため、他のObservationリソースを参照しない",
        "definition" : "observationグループに属する関連リソース 【JP Core仕様】欠損歯の処置状態は最終的な観察結果のため、他のObservationリソースを参照しない"
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "short" : "observationの発生源に関連する測定 【JP Core仕様】未使用",
        "definition" : "observationの発生源に関連する測定 【JP Core仕様】未使用"
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "複合的な結果 【JP Core仕様】欠損歯の処置状態",
        "definition" : "複合的な結果 【JP Core仕様】欠損歯の処置状態"
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "comment" : "2つのいずれかのコードを設定する。\r\n主コード（primary）は、細かい粒度の欠損歯の処置状態\r\n副コード（sub）は、粗い粒度の欠損歯の処置状態"
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
        "id" : "Observation.component.code.coding.code",
        "path" : "Observation.component.code.coding.code",
        "min" : 1
      },
      {
        "id" : "Observation.component.code.coding:primary",
        "path" : "Observation.component.code.coding",
        "sliceName" : "primary",
        "short" : "細かい粒度の欠損歯の処置状態",
        "definition" : "細かい粒度の欠損歯の処置状態",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DentalMissingTeethObservation_VS"
        }
      },
      {
        "id" : "Observation.component.code.coding:primary.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalMissingTeethObservation_CS"
      },
      {
        "id" : "Observation.component.code.coding:sub",
        "path" : "Observation.component.code.coding",
        "sliceName" : "sub",
        "short" : "粗い粒度の欠損歯の処置状態",
        "definition" : "粗い粒度の欠損歯の処置状態",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DentalSimpleMissingTeethObservation_VS"
        }
      },
      {
        "id" : "Observation.component.code.coding:sub.system",
        "path" : "Observation.component.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DentalSimpleMissingTeethObservation_CS"
      }
    ]
  }
}

```
