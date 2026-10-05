# JP Core ServiceRequest Order Laboratory Item Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Laboratory Item Profile**

## Resource Profile: JP Core ServiceRequest Order Laboratory Item Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Laboratory_Item
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ServiceRequest_Order_Laboratory_Item
* **項目**: *Title*
  * **内容**: JP Core ServiceRequest Order Laboratory Item Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-09-23 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはServiceRequestリソースに対して、検体検査の依頼に含まれる個別の検査項目を表現するための制約を定めたものである。 

## スコープ

このプロファイルは、検体検査の依頼に含まれる個別の検査項目を表現する。

検査項目の粒度は、JLAC10（または JLAC11）の検査項目単位とする。結果として返される[JP_Observation_LabResult](StructureDefinition-jp-observation-labresult.md)と同じ粒度である。

## 依頼単位（Order Requesting）との関係

依頼者から見た依頼単位（生化学セットなど）は JP_ServiceRequest_OrderRequesting プロファイル（追加予定）で表現し、検査部門から見た検査項目単位は本プロファイルで表現する。

**JP Core では、依頼単位と個別検査項目との関係付けの方法を規定しない。** 関係付けが必要な場合は、本プロファイルを継承する個別仕様（ユースケースごとの実装ガイド）で定義する。参考までに、FHIR では子（個別検査項目）の `basedOn` から親（依頼単位）を参照する片方向の参照が一般的である。

依頼単位を送信せず、本プロファイルのインスタンスだけを並べて送信してもよい。例えば、依頼単位のコードが施設内のローカルコードしかない場合や、診療報酬上の包括（丸め）のために依頼単位を分解して送信する場合である。

## 依頼から検査結果までの流れ

1. 依頼者が検査を依頼し、個別検査項目ごとに本プロファイルのインスタンスを作成する
1. 検体を採取する。採取済みの検体に対する依頼では`specimen`から[JP_Specimen_Common](StructureDefinition-jp-specimen-common.md)を参照する。依頼時点で未採取の場合は、Specimen 側から ServiceRequest を参照する
1. 検査結果は[JP_Observation_LabResult](StructureDefinition-jp-observation-labresult.md)で報告し、その`basedOn`から本プロファイルのインスタンスを参照する

本プロファイルの `code` と JP_Observation_LabResult の `code` に同じコード体系（JLAC10）を使用すると、依頼と結果を突合しやすくなる。

## プロファイル定義

**Usages:**

* Examples for this Profile: [ServiceRequest/jp-servicerequest-order-laboratory-item-example-1](ServiceRequest-jp-servicerequest-order-laboratory-item-example-1.md) and [ServiceRequest/jp-servicerequest-order-laboratory-item-example-2](ServiceRequest-jp-servicerequest-order-laboratory-item-example-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-servicerequest-order-laboratory-item)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-servicerequest-order-laboratory-item.csv), [Excel](StructureDefinition-jp-servicerequest-order-laboratory-item.xlsx), [Schematron](StructureDefinition-jp-servicerequest-order-laboratory-item.sch) 

## このプロファイルで追加した制約

基本プロファイルである[JP Core ServiceRequest Common プロファイル](StructureDefinition-jp-servicerequest-common.md)に対して、次の制約を追加している。

| | | |
| :--- | :--- | :--- |
| identifier | 1.. | 検査項目単位で一意に識別する必要があるため |
| intent | order 固定 | intent はオーダの種類を表す要素であり、依頼単位と検査項目の区別には使わないため |
| code | 1.. | 依頼内容を示さないサービスリクエストは意味をなさないため |
| code.text | 1.. | 標準コードとローカルコードで表示名が異なる場合があり、共通の表示名が必要なため |
| subject | 1.. かつ Reference([JP_Patient](StructureDefinition-jp-patient.md)) のみ | 検体検査の対象は患者に限られるため |

## 主な要素の指定方法

| | |
| :--- | :--- |
| identifier | 依頼オーダ番号に検査項目を識別する情報を組み合わせる。[JP_Observation_LabResult](StructureDefinition-jp-observation-labresult.md)の identifier の生成規則を参考にする |
| status | 依頼が確定していれば`active`。取消は`revoked`、完了は`completed` |
| intent | `order` |
| priority | 下表を参照 |
| code | JLAC10（または JLAC11）とローカルコード。いずれか一方は必須 |
| code.text | 検査項目の名称（「γ-GTP」など） |
| subject | 対象患者（[JP_Patient](StructureDefinition-jp-patient.md)） |
| occurrence[x] | 検体採取の予定日時。未定なら設定せず、決まった時点で更新する |
| specimen | 採取済みの検体に対する依頼の場合のみ、[JP_Specimen_Common](StructureDefinition-jp-specimen-common.md)を参照する |

### priority（緊急度）

priority の値セット（[RequestPriority](http://hl7.org/fhir/R4/valueset-request-priority.html)）は binding が required のため、値は変更できない。HL7 v2 と同じ体系である。日本の運用との対応は次を目安とする。

| | | |
| :--- | :--- | :--- |
| routine | 通常 | 省略時は routine とみなす |
| urgent | 至急 |   |
| asap | ― | urgent より優先し、stat ほどではない依頼。該当する運用がない場合は使用しなくてよい |
| stat | 緊急 | 最優先で実施する |

## 補足

* 検索パラメータは[JP Core ServiceRequest Common プロファイル](StructureDefinition-jp-servicerequest-common.md)と共通である
* 依頼単位との関係付けは JP Core では規定しない。`basedOn` による参照は、個別仕様で用いる場合の参考例にとどまる

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-servicerequest-order-laboratory-item",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Laboratory_Item",
  "version" : "1.3.0-dev",
  "name" : "JP_ServiceRequest_Order_Laboratory_Item",
  "title" : "JP Core ServiceRequest Order Laboratory Item Profile",
  "status" : "active",
  "date" : "2026-09-23",
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
  "description" : "このプロファイルはServiceRequestリソースに対して、検体検査の依頼に含まれる個別の検査項目を表現するための制約を定めたものである。",
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
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest",
        "short" : "検体検査の個別検査項目【詳細参照】",
        "definition" : "検体検査の依頼に含まれる、個々の検査項目のサービスリクエスト。",
        "comment" : "【JP Core仕様】このプロファイルは検体検査を対象とする。\n検査項目の粒度は、結果として返される Observation（JP_Observation_LabResult）と同じ JLAC の検査項目単位とする。複数の検査項目をまとめた依頼単位（セットオーダ、パネルオーダ）は JP_ServiceRequest_OrderRequesting プロファイル（追加予定）で表現する。\nJP Core では、依頼単位と個別検査項目との関係付けの方法を規定しない。関係付けが必要な場合は、本プロファイルを継承する個別仕様（ユースケースごとの実装ガイド）で定義する。"
      },
      {
        "id" : "ServiceRequest.id",
        "path" : "ServiceRequest.id",
        "short" : "論理ID"
      },
      {
        "id" : "ServiceRequest.meta",
        "path" : "ServiceRequest.meta",
        "short" : "リソースに関するメタデータ"
      },
      {
        "id" : "ServiceRequest.meta.id",
        "path" : "ServiceRequest.meta.id",
        "short" : "要素間参照のための一意なID"
      },
      {
        "id" : "ServiceRequest.meta.versionId",
        "path" : "ServiceRequest.meta.versionId",
        "short" : "バージョン固有の識別子"
      },
      {
        "id" : "ServiceRequest.meta.lastUpdated",
        "path" : "ServiceRequest.meta.lastUpdated",
        "short" : "リソースのバージョンが最後に変更された日時"
      },
      {
        "id" : "ServiceRequest.meta.source",
        "path" : "ServiceRequest.meta.source",
        "short" : "リソースの出所"
      },
      {
        "id" : "ServiceRequest.meta.profile",
        "path" : "ServiceRequest.meta.profile",
        "short" : "準拠を宣言するプロファイル"
      },
      {
        "id" : "ServiceRequest.meta.security",
        "path" : "ServiceRequest.meta.security",
        "short" : "リソースに適用されるセキュリティラベル"
      },
      {
        "id" : "ServiceRequest.meta.tag",
        "path" : "ServiceRequest.meta.tag",
        "short" : "リソースに適用されるタグ"
      },
      {
        "id" : "ServiceRequest.implicitRules",
        "path" : "ServiceRequest.implicitRules",
        "short" : "このコンテンツが作成されたルールのセット"
      },
      {
        "id" : "ServiceRequest.text",
        "path" : "ServiceRequest.text",
        "short" : "このリソースを人間が解釈するためのテキスト要約"
      },
      {
        "id" : "ServiceRequest.contained",
        "path" : "ServiceRequest.contained",
        "short" : "インラインリソース"
      },
      {
        "id" : "ServiceRequest.modifierExtension",
        "path" : "ServiceRequest.modifierExtension",
        "short" : "無視できない拡張"
      },
      {
        "id" : "ServiceRequest.identifier",
        "path" : "ServiceRequest.identifier",
        "short" : "個別検査項目の業務ID【詳細参照】",
        "definition" : "個別検査項目に割り当てられた識別子。",
        "comment" : "【JP Core仕様】このプロファイルでは必須とする。\n依頼オーダ番号だけでは検査項目を一意に識別できないため、依頼オーダ番号に検査項目を識別する情報（HL7 v2 の OBR-4「検査項目ID」、OBX-3「検査項目」に相当）を組み合わせた識別子を設定する。組み立て方は JP_Observation_LabResult の identifier の生成規則を参考にすること。",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.basedOn",
        "path" : "ServiceRequest.basedOn",
        "short" : "このリクエストの元になるリクエストへの参照【詳細参照】",
        "comment" : "【JP Core仕様】JP Core では、個別検査項目と依頼単位（追加予定の JP_ServiceRequest_OrderRequesting）との関係付けに basedOn を使用するか否かを規定しない。\n参考（informative）：個別仕様で関係付ける場合、子（本プロファイル）の basedOn から親（依頼単位）を参照する片方向の参照が FHIR での一般的な表現である。"
      },
      {
        "id" : "ServiceRequest.requisition",
        "path" : "ServiceRequest.requisition",
        "short" : "サービスリクエストの複合ID（別名 グループID）【詳細参照】",
        "comment" : "【JP Core仕様】JP Core では、個別検査項目と依頼単位との関係付けに requisition を使用するか否かを規定しない。関係付けの方法は、本プロファイルを継承する個別仕様で定義する。"
      },
      {
        "id" : "ServiceRequest.status",
        "path" : "ServiceRequest.status",
        "short" : "オーダの状態【詳細参照】",
        "comment" : "【JP Core仕様】依頼が確定し検査を実施すべき状態では active を設定する。依頼が取り消された場合は revoked、検査が完了した場合は completed を設定する。\n(draft | active | on-hold | revoked | completed | entered-in-error | unknown)"
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "short" : "サービスリクエストの意図（order 固定）【詳細参照】",
        "comment" : "【JP Core仕様】このプロファイルでは order に固定する。\nintent はオーダの種類を表す要素であり、依頼単位と個別検査項目の親子を区別するためには使用しない。",
        "patternCode" : "order"
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "short" : "検査の区分【詳細参照】",
        "comment" : "【JP Core仕様】検体検査であることを示す区分を設定する。使用するコード表は個別仕様で定めてよい。"
      },
      {
        "id" : "ServiceRequest.priority",
        "path" : "ServiceRequest.priority",
        "short" : "緊急度（routine | urgent | asap | stat）【詳細参照】",
        "comment" : "【JP Core仕様】値セット（RequestPriority）は required であり、値は変更できない。日本の運用との対応は次を目安とする。\n・routine：通常\n・urgent：至急\n・stat：緊急（最優先で実施する）\n・asap：urgent より優先し、stat ほどではない依頼。日本の運用で該当する区分がない場合は使用しなくてよい。\n省略した場合は routine とみなす。"
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "short" : "検査項目のコード【詳細参照】",
        "definition" : "依頼された個別の検査項目を識別するコード。",
        "comment" : "【JP Core仕様】このプロファイルでは必須とする。\n標準コードとして JLAC10（または JLAC11）を使用する。結果として返される Observation（JP_Observation_LabResult）の code と同じコード体系を使用すると、依頼と結果の突合が容易になる。",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.code.id",
        "path" : "ServiceRequest.code.id",
        "short" : "要素間参照のための一意なID"
      },
      {
        "id" : "ServiceRequest.code.extension",
        "path" : "ServiceRequest.code.extension",
        "short" : "実装によって定義される追加コンテンツ"
      },
      {
        "id" : "ServiceRequest.code.coding",
        "path" : "ServiceRequest.code.coding",
        "short" : "検査項目のコード（標準コード、ローカルコード）【詳細参照】",
        "comment" : "【JP Core仕様】標準コードとローカルコードの両方を設定できる。いずれか一方は設定すること。JLAC10 と JLAC11 など複数の標準コードを設定できるよう、上限は設けない。"
      },
      {
        "id" : "ServiceRequest.code.text",
        "path" : "ServiceRequest.code.text",
        "short" : "検査項目の名称",
        "definition" : "検査項目の表示名。オーダ票や報告書に記載する名称。",
        "comment" : "【JP Core仕様】このプロファイルでは必須とする。\n標準コードとローカルコードで coding.display が異なる場合があるため、共通の表示名として設定する。",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "short" : "検査の対象患者【詳細参照】",
        "definition" : "オーダの対象となる患者。",
        "comment" : "【JP Core仕様】このプロファイルでは、Patient に限定し、必須とする。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "ServiceRequest.encounter",
        "path" : "ServiceRequest.encounter",
        "comment" : "【JP Core仕様】入院・外来の区別、所在場所、担当診療科の情報に使用する。\n通常は設定されるが、ユースケースにより使用しない場合を考慮し、必須としない。"
      },
      {
        "id" : "ServiceRequest.occurrence[x]",
        "path" : "ServiceRequest.occurrence[x]",
        "short" : "検体採取の予定日時【詳細参照】",
        "definition" : "依頼された検査を実施すべき日時または期間。",
        "comment" : "【JP Core仕様】検体採取の予定日時を設定する。予定日が決まっていない場合は設定せず、決まった時点で更新する。"
      },
      {
        "id" : "ServiceRequest.requester",
        "path" : "ServiceRequest.requester",
        "short" : "依頼者【詳細参照】",
        "definition" : "オーダを発行した依頼者（オーダ発行者）。",
        "comment" : "【JP Core仕様】依頼単位を分解して個別検査項目として送信する場合は、依頼単位と同じ依頼者を設定する。"
      },
      {
        "id" : "ServiceRequest.performerType",
        "path" : "ServiceRequest.performerType",
        "short" : "実施部門・職種【詳細参照】",
        "comment" : "【JP Core仕様】検査を実施する部門（検体検査部門、外注検査など）や職種を設定する。"
      },
      {
        "id" : "ServiceRequest.specimen",
        "path" : "ServiceRequest.specimen",
        "short" : "検体【詳細参照】",
        "comment" : "【JP Core仕様】採取済みの検体に対して依頼する場合に、その検体（JP_Specimen_Common）を参照する。\n依頼時点で検体が未採取の場合は設定せず、Specimen リソース側から ServiceRequest を参照する。"
      },
      {
        "id" : "ServiceRequest.bodySite",
        "path" : "ServiceRequest.bodySite",
        "comment" : "【JP Core仕様】検体検査では、JLAC10 の材料コードなど code に検体や部位が含まれることが多いため、通常は使用しない。code から部位が分からない場合にのみ使用する。"
      }
    ]
  }
}

```
