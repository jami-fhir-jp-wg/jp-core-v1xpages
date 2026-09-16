# JP Core media Endoscopy Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core media Endoscopy Profile**

## Resource Profile: JP Core media Endoscopy Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Endoscopy
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Media_Endoscopy
* **項目**: *Title*
  * **内容**: JP Core media Endoscopy Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはMediaリソースに対して、主に内視鏡検査で取得または使用される画像、映像、音声に関わるデータを送受信するための制約と拡張を定めたものである。 

本プロファイルは、Mediaリソースを使用して、内視鏡検査で取得または使用される画像、映像、音声に関わる情報の登録や検索、取得するために最低限遵守すべき制約を取り纏めたものであり、本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。 なお、実際のコンテンツは、インラインまたは直接参照にて提供される。

## 背景および想定シナリオ

本プロファイルは、主に内視鏡検査で取得または使用されるNon-DICOMフォーマットの画像、映像、音声記録に関わるデータを取り扱うことを想定している。

* 診断、またはケア提供手順の記録を目的とした画像、映像、音声
* 診断レポートに含まれる画像

## スコープ

Mediaリソースには、画像、映像、音声が含まれ、これらは医療プロセスの一部として取得または使用される。

このリソースは、特定のタイプの [Observation]（値が音声、映像、または画像データである Observation）を取り込む。 このリソースは、情報の解釈に関連するメタデータを公開するため、このような形式の情報の好ましい表現である。 ただし、一部のレガシー環境では、メディア情報が代わりに Observation に表示されることがあり、システムはこの可能性を認識する必要がある。

Mediaリソースには、医療画像をDICOMフォーマットで含めることができる。これらの画像は、画像への直接参照をWADO-RSサーバーに提供するImagingStudyリソースを介してアクセス可能にすることもできる。

このような画像の場合、WADO-RSフレームワークは、画像を表現するために推奨される手段である。たとえば、WADO-RSサービスには、関連付けられた DICOMプレゼンテーション状態からの注釈と表示パラメータを使用して画像をレンダリングすることが含まれる場合がある。

一方、Mediaリソースを使用すると、WADO-RSサービスが利用できない境界を越えて画像を確実に転送できる。このため、医療画像も Mediaリソースで表すことができるが、Media.content.urlには画像のもとのWADO-RSサービスへの参照を提供する必要がある。

### 注記

* Mediaリソースは、FHIRの基底R5以降は、DocumentReferenceリソースに集約統合されている。Mediaリソースを使用する際は、将来的なDocumentReferenceリソースへのマッピングを考慮して実装することが強く推奨される。

## プロファイル定義

Usage: Refer to this Resource Profile: Examples for this Resource Profile: Media/jp-media-endoscopy-example-1

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Endoscopy Profile](StructureDefinition-jp-diagnosticreport-endoscopy.md)
* Examples for this Profile: [Media/jp-media-endoscopy-example-1](Media-jp-media-endoscopy-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-media-endoscopy)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-media-endoscopy.csv), [Excel](StructureDefinition-jp-media-endoscopy.xlsx), [Schematron](StructureDefinition-jp-media-endoscopy.sch) 

### 必須要素

次の要素は必須（**SHALL**）である。

* status : リソースの状態。原則、`completed`。
* content : メディアの実際のコンテンツーインラインまたはメディアソースファイルへの直接参照。

### Must Support

このプロファイルではMust Supportとなる要素はない。

### Extension定義

このプロファイルでは拡張定義は行っていない。

## 注意事項

Mediaリソースは、FHIRの基底R5以降は、DocumentReferenceリソースに集約統合されている。Mediaリソースを使用する際は、将来的なDocumentReferenceリソースへのマッピングを考慮して実装することが強く推奨される。

Mediaリソースには、いくつかのdate/timesが含まれている。

* Media.created[x]: 収集の日付(/時間)、または収集が発生した期間。
* Media.duration： メディアの長さ。記録が一時停止された場合、期間はcreatedPeriodと異なる場合がある。
* Media.content.creation：これはMedia.created[x]と一致するはずだが、部分的もしくは編集された記録のために異なる場合がある。このリソースは、attachment.data要素を介して画像情報を直接埋め込むことができる。ただし、通常はattachment.url要素を使用してBinaryリソースを指定することを推奨する。サーバーは多くの場合、潜在的に大きなアーティファクトにより適した専用のリポジトリにバイナリリソースを存続可能である。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### 検索パラメータ一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | `GET [base]/media?identifier=http://samplehospital.org/fhir/endoscopysystem/imaging-orders/202304250945280001` |
| MAY | patient | reference | `GET [base]/media?patient=123` |
| MAY | patient,modality | reference,token | `GET [base]/media?patient=123&modality=ES` |
| MAY | patient,created | reference,date | `GET [base]/media?patient=123&created=eq2021-06-25` |
| MAY | patient,modality,created | reference,token,date | `GET [base]/media?patient=123&modality=ES&created=eq2021-06-25` |

#### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。（**SHALL**）

* identifier

#### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**上部消化管検査画像**](Media-jp-media-endoscopy-example-1.md)

# その他、参考文献・リンク等

* 本プロファイルそのものの定義には影響しないが、消化器内視鏡検査レポートについては、[日本消化器内視鏡学会](https://jges.net/)が推進する[JED (Japan Endoscopy Database) Project](https://jedproject.jges.net/)に準拠していることが強く推奨される。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-media-endoscopy",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Endoscopy",
  "version" : "1.3.0-dev",
  "name" : "JP_Media_Endoscopy",
  "title" : "JP Core media Endoscopy Profile",
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
  "description" : "このプロファイルはMediaリソースに対して、主に内視鏡検査で取得または使用される画像、映像、音声に関わるデータを送受信するための制約と拡張を定めたものである。",
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
      "identity" : "dicom",
      "uri" : "http://nema.org/dicom",
      "name" : "DICOM Tag Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Media",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Media",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Media",
        "path" : "Media",
        "short" : "内視鏡検査で取得または使用される画像、映像、音声に関わる情報。",
        "definition" : "内視鏡検査で取得または使用される画像、映像、音声に関わる情報。"
      },
      {
        "id" : "Media.identifier",
        "path" : "Media.identifier",
        "short" : "製品またはシステムが管理する、施設内で画像（JPEG等）、映像（MPEG等）、音声ファイルなどのメディアを一意に識別するためのID。",
        "definition" : "製品またはシステムが管理する、施設内で画像（JPEG等）、映像（MPEG等）、音声ファイルなどのメディアを一意に識別するためのID。"
      },
      {
        "id" : "Media.basedOn",
        "path" : "Media.basedOn",
        "short" : "他のシステムから依頼されたオーダ情報。",
        "definition" : "他のシステムから依頼されたオーダ情報。",
        "comment" : "通常、依頼元となるServiceRequestリソースを参照する。他のシステムと連携していない場合は参照不要。"
      },
      {
        "id" : "Media.partOf",
        "path" : "Media.partOf",
        "short" : "参照されるイベントの一部。",
        "definition" : "参照されるイベントの一部。",
        "comment" : "使用する場合は、基底にある Definition、Requirement、Comments の内容を参考に使用する。"
      },
      {
        "id" : "Media.status",
        "path" : "Media.status",
        "short" : "メディアのステータス。",
        "definition" : "メディアのステータス。",
        "comment" : "”completed” を指定する。"
      },
      {
        "id" : "Media.type",
        "path" : "Media.type",
        "short" : "メディアの種類。",
        "definition" : "メディアの種類。",
        "comment" : "使用する場合は、メディアの種類を image, video, audio から選択する。"
      },
      {
        "id" : "Media.modality",
        "path" : "Media.modality",
        "short" : "メディアを取得・撮影した装置（モダリティ）。",
        "definition" : "メディアを取得・撮影した装置（モダリティ）。",
        "comment" : "使用する場合、ImagingStudy同様”ES”を指定することが望ましい。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS"
        }
      },
      {
        "id" : "Media.view",
        "path" : "Media.view",
        "short" : "メディアのイメージングビュー（例：横方向、前後方向など）。",
        "definition" : "メディアのイメージングビュー（例：横方向、前後方向など）。",
        "comment" : "内視鏡では省略してよい。将来的にニーズが出てきた場合には検討する。"
      },
      {
        "id" : "Media.subject",
        "path" : "Media.subject",
        "short" : "メディアの対象患者に関する情報。",
        "definition" : "メディアの対象患者に関する情報。",
        "comment" : "JP Core Patientリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "Media.encounter",
        "path" : "Media.encounter",
        "short" : "このメディアが生成されるきっかけとなった情報。",
        "definition" : "このメディアが生成されるきっかけとなった情報。",
        "comment" : "JP Core Encounterリソースを参照する。",
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
        "id" : "Media.created[x]",
        "path" : "Media.created[x]",
        "short" : "このメディアが生成された日時。",
        "definition" : "このメディアが生成された日時。",
        "comment" : "静止画の場合createdDateTime、ビデオ、音声の場合createdPeriodを指定する。"
      },
      {
        "id" : "Media.issued",
        "path" : "Media.issued",
        "short" : "DiagnosticReportのStatusがFinalになった日時（レポート確定日時）。",
        "definition" : "DiagnosticReportのStatusがFinalになった日時（レポート確定日時）。",
        "comment" : "内視鏡では、mediaが示すデータが単独でリソース化されることはない前提。"
      },
      {
        "id" : "Media.operator",
        "path" : "Media.operator",
        "short" : "内視鏡検査の実施医。",
        "definition" : "内視鏡検査の実施医。",
        "comment" : "内視鏡検査実施医の情報が入っているリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Media.reasonCode",
        "path" : "Media.reasonCode",
        "short" : "このメディアが生成された理由。",
        "definition" : "このメディアが生成された理由。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "Media.bodySite",
        "path" : "Media.bodySite",
        "short" : "このメディアの対象となる解剖学的部位。",
        "definition" : "このメディアの対象となる解剖学的部位。",
        "comment" : "内視鏡では省略してよい。将来的にニーズが出てきた場合には検討する。"
      },
      {
        "id" : "Media.deviceName",
        "path" : "Media.deviceName",
        "short" : "このメディアを生成した装置名。",
        "definition" : "このメディアを生成した装置名。",
        "comment" : "原則機種名（スコープ）を記載する。デジカメの場合Exifヘッダーの機種名とする。"
      },
      {
        "id" : "Media.device",
        "path" : "Media.device",
        "short" : "メディアの収集に使用されるデバイス。",
        "definition" : "メディアの収集に使用されるデバイス。",
        "comment" : "内視鏡では省略してよい。使用する場合には、参照するリソースで定義して使用する。"
      },
      {
        "id" : "Media.height",
        "path" : "Media.height",
        "short" : "画像の高さ（ピクセル単位）（写真/ビデオ）。",
        "definition" : "画像の高さ（ピクセル単位）（写真/ビデオ）。",
        "comment" : "使用する場合は、画像の高さ（ピクセル単位）（写真/ビデオ）を指定する。"
      },
      {
        "id" : "Media.width",
        "path" : "Media.width",
        "short" : "画像の幅（ピクセル単位）（写真/ビデオ）。",
        "definition" : "画像の幅（ピクセル単位）（写真/ビデオ）。",
        "comment" : "使用する場合は、画像の幅（ピクセル単位）（写真/ビデオ）を指定する。"
      },
      {
        "id" : "Media.frames",
        "path" : "Media.frames",
        "short" : "フレーム数。",
        "definition" : "フレーム数。",
        "comment" : "EUSの場合など、フレーム数が1より大きいメディア（単一のメディアで複数のスライスを取得する画像取得コンテキスト）を扱う場合に使用する。"
      },
      {
        "id" : "Media.duration",
        "path" : "Media.duration",
        "short" : "ビデオ映像・音声向けの、秒単位の録画・記録時間。",
        "definition" : "ビデオ映像・音声向けの、秒単位の録画・記録時間。"
      },
      {
        "id" : "Media.content",
        "path" : "Media.content",
        "short" : "埋め込まれたメディアの実際のコンテンツ、またはメディアソースファイルへの直接参照。",
        "definition" : "埋め込まれたメディアの実際のコンテンツ、またはメディアソースファイルへの直接参照。"
      },
      {
        "id" : "Media.note",
        "path" : "Media.note",
        "short" : "メディアについてのコメント。",
        "definition" : "メディアについてのコメント。"
      }
    ]
  }
}

```
