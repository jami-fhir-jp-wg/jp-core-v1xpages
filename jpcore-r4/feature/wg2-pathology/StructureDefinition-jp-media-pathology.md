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
  * **内容**: Active ( 2026-08-12 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはMediaリソースに対して、病理で取得または使用される画像に関わるデータを送受信するための制約と拡張を定めたものである。 

このプロファイルはMediaリソースに対して、主に病理診断で取得または使用されるNon-DICOMフォーマットの画像、映像、音声記録に関わるデータを送受信するための制約と拡張を定めたものである。

## 背景および想定シナリオ

本プロファイルは、主に病理診断で取得または使用されるNon-DICOMフォーマットの画像、映像、音声記録に関わるデータを取り扱うことを想定している。

* 診断、またはケア提供手順の記録を目的とした画像、映像、音声
* 診断レポートに含まれる画像
* 病理診断における顕微鏡画像（Non-DICOM形式）
* デジタル病理画像（WSI: Whole Slide Imaging）
* 肉眼写真や標本写真

## スコープ

このプロファイルでは、上記想定シナリオにて用いられるMediaの用途がスコープであり、病理診断において画像や映像を取り扱う際に必要な要件を定義している。

病理診断においてMediaリソースで取り扱われることが想定される画像の種類は以下の通りである：

* HE染色画像
* 特殊染色画像
* 免疫組織化学染色画像
* 肉眼写真
* 標本写真（マクロ写真）
* デジタル病理画像（WSI）

## プロファイル定義

[プロファイル定義を参照][JP_Media_Pathology]

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Pathology Profile](StructureDefinition-jp-diagnosticreport-pathology.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-media-pathology)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-media-pathology.csv), [Excel](StructureDefinition-jp-media-pathology.xlsx), [Schematron](StructureDefinition-jp-media-pathology.sch) 

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
  "date" : "2026-08-12T12:53:42+00:00",
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
        "comment" : "使用する場合、臓器画像は\"XC\"、顕微鏡画像は\"GM\"を指定する。"
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
