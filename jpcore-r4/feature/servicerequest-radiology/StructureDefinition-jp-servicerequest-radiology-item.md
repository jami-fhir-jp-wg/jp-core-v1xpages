# JP Core ServiceRequest Radiology Item Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Radiology Item Profile**

## Resource Profile: JP Core ServiceRequest Radiology Item Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Radiology_Item
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ServiceRequest_Radiology_Item
* **項目**: *Title*
  * **内容**: JP Core ServiceRequest Radiology Item Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-10-06 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
本プロファイルはJP_ServiceRequest_Commonプロファイルから派生したもので、放射線検査オーダのボディ情報（個々の放射線検査の内容）を表現するための制約を記述したものである。個々の放射線検査の内容はJP_ServiceRequest_Radiology_Itemで表現する。 

## スコープ

本プロファイルはJP_ServiceRequest_Commonプロファイルから派生したもので、放射線検査オーダのボディ情報（個々の放射線検査の内容）を表現するための定義である。ServiceRequestリソースに対して本プロファイルに準拠する場合に必須となる要素や、用語、検索パラメータを定義する。

放射線検査項目の粒度は、JJ1017の検査項目単位とする。

オーダリングシステムで医師等が発行する放射線検査オーダは、一般に次の2階層で構成される。

* オーダ単位のヘッダー情報（オーダ番号、オーダ種別、依頼者、依頼日時、対象患者、予約日時など）
* 個々の放射線検査の内容（モダリティ、検査部位、検査プロトコル、検査目的など）

本プロファイルは後者を表現する。

ServiceRequestはオーダ種別（処方、注射、検体検査、放射線検査など）ごとに派生プロファイルを定義する方針である。本プロファイルは放射線検査オーダを対象とし、categoryでオーダ種別を区別する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定する。

* オーダエントリシステムで医師等が発行した放射線検査オーダを、放射線部門システムなどへ送信する際に、オーダ単位の情報（オーダ番号、オーダ種別、依頼者、依頼日時、対象患者、予約日時など）を表現する
* 放射線検査オーダの一覧を、オーダ種別や予約日付によって検索・表示する
* 放射線検査で発生した画像情報は[ImagingStudy](StructureDefinition-jp-imagingstudy-radiology.md)として格納され、その basedOn から本プロファイルのインスタンスを参照する
* 放射線診断レポートは[DiagnosticReport](StructureDefinition-jp-diagnosticreport-radiology.md)として格納され、その basedOn から本プロファイルのインスタンスを参照する

## 関連するリソースとの関係性

本プロファイルでは、配下のJP_ServiceRequest_Radiology_Requestingとの関連を要素の制約として定義しない。関連付けの方法は、注意事項の「ServiceRequest_Radiology_Requestingとの関連付け」を参照のこと。

## プロファイル定義

**Usages:**

* Examples for this Profile: [ServiceRequest/jp-servicerequest-radiology-item-example-1](ServiceRequest-jp-servicerequest-radiology-item-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-servicerequest-radiology-item)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-servicerequest-radiology-item.csv), [Excel](StructureDefinition-jp-servicerequest-radiology-item.xlsx), [Schematron](StructureDefinition-jp-servicerequest-radiology-item.sch) 

## 制約

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| prr-1 | Rule | (base) | code要素がある時にだけ、orderDetail要素は存在 | orderDetail.empty() or code.exists |

## 必須要素

次のデータ項目は必須（SHALL）である。

* status : オーダの状態
* intent : オーダの意図（"order" を指定する）
* subject : 対象患者
* category : オーダの分類 
* category[orderCategory] : オーダ種別（JP_ServiceRequestOrderCategory_VSから放射線検査オーダは "imaging" を指定する）
 
* code : DICOMのモダリティコードまたは、モダリティ（JJ1017指針の種別（モダリティ）コード。例：X線単純撮影）
* requisition : オーダ番号（ローカルコード）
* requester : オーダ依頼医

## MustSupport

JP Core としては原則 MustSupport を定義しない方針であるが、検査に際して必要性の高い内容であるため、supportingInfo については MustSupport とする（要SWG確認）。

* アレルギー → AllergyIntolerance
* 腎機能・体重 → Observation
* 妊娠 → Condition
* 体内金属（インプラント、ペースメーカーなど）→ Device
* 上記で表現できないもの（入れ墨など）→ DocumentReference

## Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

### 検索例

* オーダ番号（ローカルコード）による検索

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-servicerequest-radiology-item",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Radiology_Item",
  "version" : "1.3.0-dev",
  "name" : "JP_ServiceRequest_Radiology_Item",
  "title" : "JP Core ServiceRequest Radiology Item Profile",
  "status" : "active",
  "date" : "2026-10-06",
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
  "description" : "本プロファイルはJP_ServiceRequest_Commonプロファイルから派生したもので、放射線検査オーダのボディ情報（個々の放射線検査の内容）を表現するための制約を記述したものである。個々の放射線検査の内容はJP_ServiceRequest_Radiology_Itemで表現する。",
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
        "short" : "放射線検査オーダのボディ情報",
        "definition" : "放射線検査オーダのボディ情報（個々の放射線検査の内容）を表現する。放射線検査項目の粒度は、JJ1017の検査項目単位とする。"
      },
      {
        "id" : "ServiceRequest.identifier",
        "path" : "ServiceRequest.identifier",
        "comment" : "この要素は、発注者（HL7 v2 では 'Placer' ）とリクエストに応じて観察、行為等を実施した者（HL7 v2 では 'Filler' ）を区別するために用いられる。【JP Core仕様】オーダリングシステムがオーダー単位に付番する識別番号＋枝番を格納する。親はオーダー番号、子はオーダー番号＋枝番とする。"
      },
      {
        "id" : "ServiceRequest.basedOn",
        "path" : "ServiceRequest.basedOn",
        "comment" : "【JP Core仕様】元となるサービスリクエスト（放射線検査オーダのヘッダー情報）を参照する。",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.requisition",
        "path" : "ServiceRequest.requisition",
        "short" : "オーダ番号（ローカルコード）",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "comment" : "【JP Core仕様】本プロファイルでは \"order\" 固定とする。",
        "patternCode" : "order"
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "ServiceRequest.category:orderCategory",
        "path" : "ServiceRequest.category",
        "sliceName" : "orderCategory",
        "short" : "オーダ種別",
        "comment" : "【JP Core仕様】オーダ種別を格納する。放射線検査オーダは \"imaging\" を指定する。",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "short" : "オーダー内容を示すコード（JJ1017コード）",
        "comment" : "【JP Core仕様】JJ1017コード（JJ1017-16M: 前方16桁）は必須。code.display には検査を識別できる名称を記述する（JJ1017指針に従う、あるいはローカルで定義する）。",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "short" : "対象患者",
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
        "comment" : "【JP Core仕様】この検査が関連しているEncounterリソース。JP_Encounter（固定）。"
      },
      {
        "id" : "ServiceRequest.occurrence[x]",
        "path" : "ServiceRequest.occurrence[x]",
        "short" : "オーダーの予約日時",
        "comment" : "【JP Core仕様】実施日時が確定しているものを記述する。予約不要、または日付未定の予約は記述しない（occurrence 要素ごと省略する）。日付が決まった時点で update して値を入れる。"
      },
      {
        "id" : "ServiceRequest.requester",
        "path" : "ServiceRequest.requester",
        "short" : "オーダー依頼医",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.performerType",
        "path" : "ServiceRequest.performerType",
        "comment" : "【JP Core仕様】放射線検査では実施時に登録されるため、依頼時は原則設定されない。"
      },
      {
        "id" : "ServiceRequest.performer",
        "path" : "ServiceRequest.performer",
        "comment" : "【JP Core仕様】放射線検査では実施時に登録されるため、依頼時は原則設定されない。"
      },
      {
        "id" : "ServiceRequest.reasonCode",
        "path" : "ServiceRequest.reasonCode",
        "comment" : "【JP Core仕様】日本では病名・検査目的・依頼理由が自由文で書かれるのが一般的。CodeableConcept は coding のほかに text 要素を持てるため、コード化されていないテキストも表現できる。病名は coding、検査目的は text とし、検査目的と依頼理由を分けたい場合は reasonCode 自体を複数持つ（0..*）。"
      },
      {
        "id" : "ServiceRequest.reasonReference",
        "path" : "ServiceRequest.reasonReference",
        "comment" : "【JP Core仕様】病名等の理由を提供するリソースへの参照。可能な限り Observation や Condition リソースへの参照を使用する。"
      },
      {
        "id" : "ServiceRequest.supportingInfo",
        "path" : "ServiceRequest.supportingInfo",
        "definition" : "造影剤アレルギー・腎機能・妊娠・体内金属等の付帯情報を記述する。",
        "comment" : "【JP Core仕様】アレルギーは JP_AllergyIntolerance、腎機能・体重は JP_Observation_Common、妊娠は JP_Condition、体内金属（インプラント、ペースメーカー等）は Device、上記で表現できないもの（入れ墨等）は DocumentReference にテキストで格納する。問診票は QuestionnaireResponse の利用も検討される。新しいリソース種別が出てくる可能性があるため Resource を末尾に残し閉じない。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_AllergyIntolerance",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Device",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DocumentReference",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/Resource"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.specimen",
        "path" : "ServiceRequest.specimen",
        "comment" : "【JP Core仕様】画像検査では原則不要。"
      },
      {
        "id" : "ServiceRequest.bodySite",
        "path" : "ServiceRequest.bodySite",
        "comment" : "【JP Core仕様】JJ1017の大部位または小部位によって表現する。JJ1017の部位リスト参照、または JP Core 独自定義は継続検討。"
      },
      {
        "id" : "ServiceRequest.note",
        "path" : "ServiceRequest.note",
        "comment" : "【JP Core仕様】依頼時のフリーコメント運用のため使用する。"
      }
    ]
  }
}

```
