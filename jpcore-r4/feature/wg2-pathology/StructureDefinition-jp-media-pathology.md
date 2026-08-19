# JP Core Media Pathology Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Media Pathology Profile**

## Resource Profile: JP Core Media Pathology Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Pathology
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Media_Pathology
* **項目**: *Title*
  * **内容**: JP Core Media Pathology Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-08-19 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはMediaリソースに対して、病理で取得または使用される画像に関わるデータを送受信するための制約と拡張を定めたものである。 

本プロファイルは、Mediaリソースを使用して、病理で取得または使用される画像に関わるデータを送受信するために、最低限遵守すべき制約と拡張を取り纏めたものである。Mediaリソースに対して本プロファイルに準拠する場合に必須となる要素や、参照先、用語、固定値を定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 病理検査で取得または使用される画像情報の記録
* 施設内で管理される画像メディアの識別
* オーダ情報に基づいて取得された病理画像の参照
* 患者に関する病理画像情報の参照

## スコープ

Mediaリソースを使用して表現した病理画像には、施設内で画像を一意に識別するためのID、画像の対象患者、画像の種類、画像を取得した装置、実際のコンテンツまたはメディアソースファイルへの参照などが含まれる。

本プロファイルでは、メディアの種類として画像を扱う。type.coding.codeには、`image`を指定する。modalityは、メディアを取得または撮影した装置を表し、JP_DICOMModality_VSから指定する。病理で使用する場合、臓器画像は`XC`、顕微鏡画像は`GM`を指定する。

対象患者は、JP Core Patientリソースを参照する。オーダ情報を参照する場合は、JP Core ServiceRequest CommonリソースまたはCarePlanリソースを参照する。通常、依頼元となるServiceRequestリソースを参照する。他のシステムと連携していない場合は、参照不要である。

病理では、view、encounter、created[x]、operator、deviceName、frames、durationは原則使用しない。reasonCode、bodySite、deviceは省略してよい。写真ごとに部位が設定されている場合は、bodySiteを指定する。画像の高さおよび幅を使用する場合は、写真のピクセル単位の値を指定する。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Pathology Profile](StructureDefinition-jp-diagnosticreport-pathology.md)
* Examples for this Profile: [Media/JP-Media-Pathology-Example-01](Media-JP-Media-Pathology-Example-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-media-pathology)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-media-pathology.csv), [Excel](StructureDefinition-jp-media-pathology.xlsx), [Schematron](StructureDefinition-jp-media-pathology.sch) 

### 必須要素

次のデータ項目は必須（データが存在しなければならない）である。

Media リソースは、次の要素を持たなければならない。

* status : メディアのステータス。`completed` を指定する。
* content : 埋め込まれたメディアの実際のコンテンツ、またはメディアソースファイルへの直接参照。

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

##### 必須検索パラメータ

本プロファイルで必須（**SHALL**）として定義された検索項目はない。

##### 推奨検索パラメータ

本プロファイルで推奨（**SHOULD**）として定義された検索項目はない。

##### 追加検索パラメータ

本プロファイルで追加定義された検索パラメータはない。

#### Operation一覧

本プロファイルで追加定義されたOperationはない。

#### Operation 詳細

本プロファイルで追加定義されたOperationはない。

## 注意事項

本プロファイルは、病理で取得または使用される画像に関わる情報を表す。 画像の識別には、identifierを使用する。

basedOnは、通常、依頼元となるServiceRequestリソースを参照する。 参照先は、JP_ServiceRequest_CommonまたはCarePlanである。 他のシステムと連携していない場合は参照不要である。

partOfを使用する場合は、参照されるイベントの一部として扱う。 使用時は、基底のDefinition、Requirement、Commentsの内容を参考にする。

typeを使用する場合は、メディアの種類として`image`を使用する。 type.coding.codeは、`image`に固定される。

modalityを使用する場合は、JP_DICOMModality_VSから指定する。 臓器画像は`XC`、顕微鏡画像は`GM`を指定する。

viewは、病理では原則使用しない。 将来的にニーズが出てきた場合に検討する。

subjectは、メディアの対象患者に関する情報を表す。 参照先は、JP_Patientである。

encounterは、このメディアが生成されるきっかけとなった情報を表す。 病理では原則使用しない。

created[x]は、このメディアが生成された日時を表す。 病理では原則使用しない。

issuedは、DiagnosticReportのStatusがFinalになった日時を表す。 レポート確定日時として扱う。

operatorは、画像を取得した人を表す。 病理では未使用である。

reasonCodeは、このメディアが生成された理由を表す。 病理では省略してよい。

bodySiteは、このメディアの対象となる解剖学的部位を表す。 病理では省略してよい。 写真毎に部位が設定されている場合は指定する。

deviceNameは、このメディアを生成した装置名を表す。 病理では原則使用しない。

deviceは、メディアの収集に使用されるデバイスを表す。 病理では省略してよい。

heightは、画像の高さをピクセル単位で表す。 使用する場合は、写真の画像の高さを指定する。

widthは、画像の幅をピクセル単位で表す。 使用する場合は、写真の画像の幅を指定する。

framesは、フレーム数を表す。 病理では原則使用しない。

durationは、ビデオ映像または音声向けの録画・記録時間を秒単位で表す。 病理では原則使用しない。

noteは、メディアについてのコメントを表す。

## その他、参考文献・リンク等

本プロファイル固有の参考文献・リンク等は定義されていない。   

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-media-pathology",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Pathology",
  "version" : "1.3.0-dev",
  "name" : "JP_Media_Pathology",
  "title" : "JP Core Media Pathology Profile",
  "status" : "active",
  "date" : "2026-08-19T04:30:44+00:00",
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
  "description" : "このプロファイルはMediaリソースに対して、病理で取得または使用される画像に関わるデータを送受信するための制約と拡張を定めたものである。",
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
        "short" : "病理で取得または使用される画像に関わる情報。",
        "definition" : "病理で取得または使用される画像に関わる情報。"
      },
      {
        "id" : "Media.identifier",
        "path" : "Media.identifier",
        "short" : "システムが管理する、施設内で画像（JPEG等）、のメディアを一意に識別するためのID",
        "definition" : "システムが管理する、施設内で画像（JPEG等）、のメディアを一意に識別するためのID"
      },
      {
        "id" : "Media.basedOn",
        "path" : "Media.basedOn",
        "short" : "他のシステムから依頼されたオーダ情報。【詳細参照】",
        "definition" : "他のシステムから依頼されたオーダ情報。",
        "comment" : "通常、依頼元となるServiceRequestリソースを参照する。他のシステムと連携していない場合は参照不要。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common",
              "http://hl7.org/fhir/StructureDefinition/CarePlan"
            ]
          }
        ]
      },
      {
        "id" : "Media.partOf",
        "path" : "Media.partOf",
        "short" : "参照されるイベントの一部。【詳細参照】",
        "definition" : "参照されるイベントの一部。",
        "comment" : "使用する場合は、基底にある Definition、Requirement、Comments の内容を参考に使用する。"
      },
      {
        "id" : "Media.status",
        "path" : "Media.status",
        "short" : "メディアのステータス。【詳細参照】",
        "definition" : "メディアのステータス。",
        "comment" : "\"completed\" を指定する。"
      },
      {
        "id" : "Media.type",
        "path" : "Media.type",
        "short" : "メディアの種類。【詳細参照】",
        "definition" : "メディアの種類。",
        "comment" : "使用する場合は、\"image\"を使用する。"
      },
      {
        "id" : "Media.type.coding.code",
        "path" : "Media.type.coding.code",
        "fixedCode" : "image"
      },
      {
        "id" : "Media.modality",
        "path" : "Media.modality",
        "short" : "メディアを取得・撮影した装置（モダリティ）。【詳細参照】",
        "definition" : "メディアを取得・撮影した装置（モダリティ）。",
        "comment" : "使用する場合、臓器画像は\"XC\"、顕微鏡画像は\"GM\"を指定する。",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS"
        }
      },
      {
        "id" : "Media.view",
        "path" : "Media.view",
        "short" : "メディアのイメージングビュー。【詳細参照】",
        "definition" : "メディアのイメージングビュー。",
        "comment" : "病理では原則使用しない。将来的にニーズが出てきた場合には検討する。"
      },
      {
        "id" : "Media.subject",
        "path" : "Media.subject",
        "short" : "メディアの対象患者に関する情報。【詳細参照】",
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
        "short" : "このメディアが生成されるきっかけとなった情報。【詳細参照】",
        "definition" : "このメディアが生成されるきっかけとなった情報。",
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "Media.created[x]",
        "path" : "Media.created[x]",
        "short" : "このメディアが生成された日時。【詳細参照】",
        "definition" : "このメディアが生成された日時。",
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "Media.issued",
        "path" : "Media.issued",
        "short" : "DiagnosticReportのStatusがFinalになった日時（レポート確定日時）。",
        "definition" : "DiagnosticReportのStatusがFinalになった日時（レポート確定日時）。"
      },
      {
        "id" : "Media.operator",
        "path" : "Media.operator",
        "short" : "画像を取得した人。【詳細参照】",
        "definition" : "画像を取得した人。",
        "comment" : "病理では未使用。"
      },
      {
        "id" : "Media.reasonCode",
        "path" : "Media.reasonCode",
        "short" : "このメディアが生成された理由。【詳細参照】",
        "definition" : "このメディアが生成された理由。",
        "comment" : "病理では省略してよい。"
      },
      {
        "id" : "Media.bodySite",
        "path" : "Media.bodySite",
        "short" : "このメディアの対象となる解剖学的部位。【詳細参照】",
        "definition" : "このメディアの対象となる解剖学的部位。",
        "comment" : "病理では省略してよい。写真毎に部位が設定されている場合は指定する。"
      },
      {
        "id" : "Media.deviceName",
        "path" : "Media.deviceName",
        "short" : "このメディアを生成した装置名。【詳細参照】",
        "definition" : "このメディアを生成した装置名。",
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "Media.device",
        "path" : "Media.device",
        "short" : "メディアの収集に使用されるデバイス。【詳細参照】",
        "definition" : "メディアの収集に使用されるデバイス。",
        "comment" : "病理では省略してよい。"
      },
      {
        "id" : "Media.height",
        "path" : "Media.height",
        "short" : "画像の高さ（ピクセル単位）（写真/ビデオ）。【詳細参照】",
        "definition" : "画像の高さ（ピクセル単位）（写真/ビデオ）。",
        "comment" : "使用する場合は、画像の高さ（ピクセル単位）（写真）を指定する。"
      },
      {
        "id" : "Media.width",
        "path" : "Media.width",
        "short" : "画像の幅（ピクセル単位）（写真/ビデオ）。【詳細参照】",
        "definition" : "画像の幅（ピクセル単位）（写真/ビデオ）。",
        "comment" : "使用する場合は、画像の幅（ピクセル単位）（写真）を指定する。"
      },
      {
        "id" : "Media.frames",
        "path" : "Media.frames",
        "short" : "フレーム数。【詳細参照】",
        "definition" : "フレーム数。",
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "Media.duration",
        "path" : "Media.duration",
        "short" : "ビデオ映像・音声向けの、秒単位の録画・記録時間。【詳細参照】",
        "definition" : "ビデオ映像・音声向けの、秒単位の録画・記録時間。",
        "comment" : "病理では原則使用しない。"
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
