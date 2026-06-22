# JP Core ImagingStudy Endoscopy Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ImagingStudy Endoscopy Profile**

## Resource Profile: JP Core ImagingStudy Endoscopy Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Endoscopy
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ImagingStudy_Endoscopy
* **項目**: *Title*
  * **内容**: JP Core ImagingStudy Endoscopy Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはImagingStudyリソースに対して、主に内視鏡検査で撮影された画像に関わるデータを送受信するための制約と拡張を定めたものである。 

本プロファイルは、ImagingStudyリソースを使用して、内視鏡検査における患者に付属する画像に関わる情報について、情報の登録や検索、取得するために最低限遵守すべき制約を取り纏めたものであり、本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、主に内視鏡検査で撮影された画像、ならびに画像に関連する情報を、DICOM規格に準拠したデータとして取り扱うことを想定している。なおFHIR 4.0.1においては、Non-DICOMのデータを取り扱う際は、Mediaリソースの利用を想定している。
 ImagingStudyリソースは、主としてDICOM規格の属性情報を表す。1つの検査は通常1つ以上のシリーズから構成され、それぞれのシリーズにはService-Object Pairインスタンス（SOPインスタンス）が一般的な属性情報として格納される。1つのシリーズには単一のモダリティが指定されるが、1つの検査は異なるモダリティによる複数のシリーズから構成されるケースがある。

* Patientリソースを検索条件とした内視鏡検査の画像情報の参照
* ImagingStudyリソースから指定したモダリティを検索条件とした内視鏡検査の画像情報の参照
* ImagingStudyリソースから指定した撮影日時を検索条件とした内視鏡検査の画像情報の参照

### 注記

Non-DICOMリソースを取り扱う場合には、現時点ではHL7 FHIR JP CoreでMediaプロファイルを定義していないため、FHIR基底のMediaプロファイルを参照すること。

## スコープ

ImagingStudyリソースはDICOMの検査、シリーズおよび画像に関連する情報を提供し、それらの情報を取得する方法を示す（native DICOMフォーマット、あるいはJPEGなど一般的な画像情報に変換したものなど）。ImagingStudyは単一のDICOM検査のすべての部分の情報を利用可能にするために用いられる。

このリソースは、その要素の DICOM属性へのマッピングを提供する。 DICOM属性は32ビットのタグで識別され、括弧内にカンマで区切られた 2つの4桁の16進数値の標準形式(例(0008,103E))で表現される。

各属性の名前と値の表現（データ型）は、DICOM Part6 Data Dictionary に記載されている。 使用についての詳細な説明を含む、情報オブジェクトのコンテキストでの属性の使用は、DICOM Part3 Information Object Definitions に記載されている。 「検査中のインスタンス数」など、DICOMクエリ情報モデルで使用される属性は、DICOM Part4 Annex C に記載されている。

最も単純なケースではImagingStudy は、DICOM query（例えばQIDO-RS）を行うことなく重要なDICOM情報へのアクセスを提供する。一方で、DICOMの実画像情報などのインスタンスはImagingStudyリソースには保存されないため、この情報を保存するためにはDICOM WADO-RSサーバやほかのストレージ機能を利用する必要がある。 （FHIRではREST APIを用いることが想定されており，親和性の観点からはDICOM web accessの利用が想定される。）

ImagingStudyは一つのDICOMの検査を参照する必要があり、またその検査のサブセットに対する参照にも利用できる。一方で、複数のImagingStudyリソースが同じDICOMの検査を参照することや、同じDICOMの検査内の異なるサブセット（シリーズ）を参照することもあり得る。

上記のようなDICOMに関連して用いられるImagingStudyの用途が本プロファイルでのスコープであり、ImagingStudyの情報項目の１つを取り扱う際に必要な要件を定義している。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Endoscopy Profile](StructureDefinition-jp-diagnosticreport-endoscopy.md)
* Examples for this Profile: [ImagingStudy/jp-imagingstudy-endoscopy-example-1](ImagingStudy-jp-imagingstudy-endoscopy-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-imagingstudy-endoscopy)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-imagingstudy-endoscopy.csv), [Excel](StructureDefinition-jp-imagingstudy-endoscopy.xlsx), [Schematron](StructureDefinition-jp-imagingstudy-endoscopy.sch) 

### 必須要素

次の要素は必須（**SHALL**）である。

* status : リソースの状態。（基底のValueSetから選択：registered/available/cancelled/entered-in-error/unknown）
* subject : JP Core Patientを参照する。

#### 必須項目

ImagingStudyリソースは、次の要素を持たなければならない。(**SHALL**)

* status : 検査項目情報の状態は必須である。
* subject : このリソースが示す検査項目がどの患者のものかを示すため、参照するpatientリソース定義を必須とした。

#### Must Support

次の要素に関する情報が送信システムに存在する場合、その要素がサポートされなければならないことを意味する。（**Must Support**）

* identifier : DICOMフォーマットのデータが存在する場合、DICOMタグのStudy Instance UID（0020,000D）が保持される必要がある。
* series.modality : DICOMフォーマットのデータが存在する場合、シリーズが取得されたモダリティを示す。DICOMでは必須情報となっており、DICOMタグ（0008,0060）の情報が格納される。内視鏡検査の場合は"ES"が指定される。
* series.instance.uid : DICOMフォーマットのデータ（インスタンス）のユニークIDを示す。DICOMタグ（0008,0018）の情報を格納する。
* series.instance.sopClass : SOPクラスUID。DICOMタグ（0008,0016）の情報を格納する。内視鏡の場合、通常以下のいずれかが指定される。

### Extension定義

このプロファイルでは拡張定義は行っていない。

## 注意事項

### マッピング

ImagingStudyはDICOM tagとの対応が重要である。各エレメントとDICOM tagのマッピングについては[Resource ImagingStudy - Mappings - DICOM Tag Mapping](https://hl7.org/fhir/R4/imagingstudy-mappings.html#dicom)を参照すること。

### reasonCode

消化器内視鏡検査のDICOMフォーマットのデータを扱う際、ImagingStudy.reasonCodeには[JP Core ReasonCode JED ValueSet](https://jpfhir.jp/fhir/core/ValueSet/JP_ReasonCodesJed_VS.html)をbindした。これは [日本消化器内視鏡学会](https://www.jges.net/)が推進する[JED (Japan Endoscopy Database) Project](https://jedproject.jges.net/)で定義されている[JED用語集](https://jedproject.jges.net/about/terms-about/)のコード集であり、このうち、基本用語集の"検査目的"、"治療目的"のコード値を設定することを強く推奨する。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | `GET [base]/ImagingStudy?identifier=urn:ietf:rfc:3986|2.16.124.999999.9999.1154777499.30246.19789.3503430045` |
| SHOULD | patient | reference | `GET [base]/ImagingStudy?patient=123` |
| SHOULD | patient, modality | reference, token | `GET [base]/ImagingStudy?patient=123&modality=ES` |
| SHOULD | patient,started | reference, date | `GET [base]/ImagingStudy?patient=123&started=eq2021-06-25` |
| SHOULD | patient, started, modality | reference, date, token | `GET [base]/ImagingStudy?patient=123&started=eq2021-06-18&modality=ES` |

なお検索パラメターmodalityは[定義済み検索パラメーター](https://www.hl7.org/fhir/R4/searchparameter-registry.html)にseries.modalityを対象として定義されているため、ImagingStudy.modalityを対象としていないことに注意すること。 またImagingStudy.modalityには値が入っていない可能性がある点にも留意すること。

#### 操作詳細

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。（**SHALL**）

* identifier

##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**上部消化管内視鏡検査画像**](ImagingStudy-jp-imagingstudy-endoscopy-example-1.md)

## その他、参考文献・リンク等

消化器内視鏡検査レポートについては、[日本消化器内視鏡学会](https://www.jges.net/)が推進する[JED (Japan Endoscopy Database) Project](https://jedproject.jges.net/)に準拠していることが強く推奨される。 また、消化器内視鏡検査のDICOMフォーマットのデータを扱う際、ImagingStudy.reasonCodeにはJED Projectで定義されている[JED基本情報用語](https://jedproject.jges.net/about/terms-about/)の"検査目的"、"治療目的"のコード値を設定することを強く推奨する。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-imagingstudy-endoscopy",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Endoscopy",
  "version" : "1.3.0-dev",
  "name" : "JP_ImagingStudy_Endoscopy",
  "title" : "JP Core ImagingStudy Endoscopy Profile",
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
  "description" : "このプロファイルはImagingStudyリソースに対して、主に内視鏡検査で撮影された画像に関わるデータを送受信するための制約と拡張を定めたものである。",
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
      "identity" : "dicom",
      "uri" : "http://nema.org/dicom",
      "name" : "DICOM Tag Mapping"
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
  "type" : "ImagingStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ImagingStudy",
        "path" : "ImagingStudy",
        "short" : "内視鏡を使用したDICOM画像検査に関する情報"
      },
      {
        "id" : "ImagingStudy.identifier",
        "path" : "ImagingStudy.identifier",
        "short" : "DICOM画像検査全体を一意に識別するためのID【詳細参照】",
        "definition" : "DICOM画像検査全体を一意に識別するためのID。",
        "comment" : "Study Instance UIDの値を指定する。",
        "mustSupport" : true
      },
      {
        "id" : "ImagingStudy.status",
        "path" : "ImagingStudy.status",
        "short" : "DICOM画像検査のステータス",
        "definition" : "DICOM画像検査のステータス。"
      },
      {
        "id" : "ImagingStudy.modality",
        "path" : "ImagingStudy.modality",
        "short" : "DICOM画像検査で使用された撮影装置（モダリティ）【詳細参照】",
        "definition" : "DICOM画像検査で使用された撮影装置（モダリティ）。",
        "comment" : "内視鏡を表すモダリティコード”ES”を指定する。複数モダリティを使用した場合には、該当するモダリティコードを並記する。",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS"
        }
      },
      {
        "id" : "ImagingStudy.subject",
        "path" : "ImagingStudy.subject",
        "short" : "DICOM画像検査の対象患者に関する情報【詳細参照】",
        "definition" : "DICOM画像検査の対象患者に関する情報。",
        "comment" : "JP Core Patientリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "ImagingStudy.encounter",
        "path" : "ImagingStudy.encounter",
        "short" : "このDICOM画像検査を実施するきっかけとなった情報【詳細参照】",
        "definition" : "このDICOM画像検査を実施するきっかけとなった情報。",
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
        "id" : "ImagingStudy.started",
        "path" : "ImagingStudy.started",
        "short" : "検査開始日時、もしくは撮影装置に患者情報が届いた/入力された日時",
        "definition" : "検査開始日時、もしくは撮影装置に患者情報が届いた/入力された日時。"
      },
      {
        "id" : "ImagingStudy.basedOn",
        "path" : "ImagingStudy.basedOn",
        "short" : "他のシステムから依頼されたオーダ情報【詳細参照】",
        "definition" : "他のシステムから依頼されたオーダ情報。",
        "comment" : "通常、依頼元となるServiceRequestリソースを参照する。他のシステムと連携していない場合は参照不要。"
      },
      {
        "id" : "ImagingStudy.referrer",
        "path" : "ImagingStudy.referrer",
        "short" : "依頼医師【詳細参照】",
        "definition" : "依頼医師。",
        "comment" : "ServiceRequestから参照できるため必須ではない。画像についていない情報を無理に生成してreferrerに入力する必要はない。使用する場合には、JP Core Practitionerリソースを参照する。",
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
        "id" : "ImagingStudy.interpreter",
        "path" : "ImagingStudy.interpreter",
        "short" : "画像を診断した医師【詳細参照】",
        "definition" : "画像を診断した医師。",
        "comment" : "通常、読影医。内視鏡では省略してよい。使用する場合には、JP Core Practitionerリソースを参照する。",
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
        "id" : "ImagingStudy.endpoint",
        "path" : "ImagingStudy.endpoint",
        "short" : "このDICOM画像検査リソースが存在する位置【詳細参照】",
        "definition" : "このDICOM画像検査リソースが存在する位置。",
        "comment" : "基本的には1つ指定する。"
      },
      {
        "id" : "ImagingStudy.numberOfSeries",
        "path" : "ImagingStudy.numberOfSeries",
        "short" : "このDICOM画像検査に含まれるシリーズ数",
        "definition" : "このDICOM画像検査に含まれるシリーズ数。"
      },
      {
        "id" : "ImagingStudy.numberOfInstances",
        "path" : "ImagingStudy.numberOfInstances",
        "short" : "このDICOM画像検査に含まれるイメージ（インスタンス）の数",
        "definition" : "このDICOM画像検査に含まれるイメージ（インスタンス）の数。"
      },
      {
        "id" : "ImagingStudy.procedureReference",
        "path" : "ImagingStudy.procedureReference",
        "short" : "実施された処置に関する情報【詳細参照】",
        "definition" : "実施された処置に関する情報。",
        "comment" : "内視鏡では省略してよい。使用する場合には、JP Core Procedureを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Procedure"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.procedureCode",
        "path" : "ImagingStudy.procedureCode",
        "short" : "実施された処置を表すコード【詳細参照】",
        "definition" : "実施された処置を表すコード。",
        "comment" : "内視鏡では省略してよい。",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://playbook.radlex.org/playbook/SearchRadlexAction"
        }
      },
      {
        "id" : "ImagingStudy.location",
        "path" : "ImagingStudy.location",
        "short" : "DICOM画像検査が実施された場所【詳細参照】",
        "definition" : "DICOM画像検査が実施された場所。",
        "comment" : "使用する場合には、JP Core Locationリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
          }
        ]
      },
      {
        "id" : "ImagingStudy.reasonCode",
        "path" : "ImagingStudy.reasonCode",
        "short" : "DICOM画像検査が依頼された理由を表す1つ以上のコード【詳細参照】",
        "definition" : "DICOM画像検査が依頼された理由を表す1つ以上のコード。",
        "comment" : "JED (Japan Endoscopy Database) Projectで定義されている検査種別については、JED基本情報用語の”検査目的”、”治療目的”のコードを使用することを強く推奨する。",
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ReasonCodesJed_VS"
        }
      },
      {
        "id" : "ImagingStudy.reasonReference",
        "path" : "ImagingStudy.reasonReference",
        "short" : "DICOM画像検査の実施理由に関する情報【詳細参照】",
        "definition" : "DICOM画像検査の実施理由に関する情報。",
        "comment" : "使用する場合には、JP Core DiagnosticReport Endoscopyリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Endoscopy"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.note",
        "path" : "ImagingStudy.note",
        "short" : "description要素に関するコメント",
        "definition" : "description要素に関するコメント。"
      },
      {
        "id" : "ImagingStudy.description",
        "path" : "ImagingStudy.description",
        "short" : "DICOM画像検査に関する記述【詳細参照】",
        "definition" : "DICOM画像検査に関する記述。",
        "comment" : "JAHIS 内視鏡DICOM画像データ規約の(0008,1030)の記載例に合わせ、検査種別を記載することを推奨する。"
      },
      {
        "id" : "ImagingStudy.series",
        "path" : "ImagingStudy.series",
        "short" : "DICOM画像検査に含まれるシリーズ（大まかな画像のグループ）",
        "definition" : "DICOM画像検査に含まれるシリーズ（大まかな画像のグループ）。"
      },
      {
        "id" : "ImagingStudy.series.uid",
        "path" : "ImagingStudy.series.uid",
        "short" : "シリーズを一意に識別するためのUID【詳細参照】",
        "definition" : "シリーズを一意に識別するためのUID。",
        "comment" : "Series Instance UID (0020,000E) の値を指定する。"
      },
      {
        "id" : "ImagingStudy.series.number",
        "path" : "ImagingStudy.series.number",
        "short" : "Series Instance UIDとは別に、ユーザー（または装置）が自由に決められるシリーズ番号",
        "definition" : "Series Instance UIDとは別に、ユーザー（または装置）が自由に決められるシリーズ番号。"
      },
      {
        "id" : "ImagingStudy.series.modality",
        "path" : "ImagingStudy.series.modality",
        "short" : "このシリーズが取得された撮影装置（モダリティ）【詳細参照】",
        "definition" : "このシリーズが取得された撮影装置（モダリティ）。",
        "comment" : "内視鏡を表すモダリティコード”ES”を指定する。1シリーズ1モダリティで、1つのシリーズの中に複数のモダリティが混在することはない。",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DICOMModality_VS"
        }
      },
      {
        "id" : "ImagingStudy.series.description",
        "path" : "ImagingStudy.series.description",
        "short" : "このシリーズに関する記述",
        "definition" : "このシリーズに関する記述。"
      },
      {
        "id" : "ImagingStudy.series.numberOfInstances",
        "path" : "ImagingStudy.series.numberOfInstances",
        "short" : "このシリーズに含まれる画像枚数",
        "definition" : "このシリーズに含まれる画像枚数。"
      },
      {
        "id" : "ImagingStudy.series.endpoint",
        "path" : "ImagingStudy.series.endpoint",
        "short" : "このシリーズのリソースが存在する位置",
        "definition" : "このシリーズのリソースが存在する位置。"
      },
      {
        "id" : "ImagingStudy.series.bodySite",
        "path" : "ImagingStudy.series.bodySite",
        "short" : "このシリーズの対象となる解剖学的部位【詳細参照】",
        "definition" : "このシリーズの対象となる解剖学的部位。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "ImagingStudy.series.laterality",
        "path" : "ImagingStudy.series.laterality",
        "short" : "解剖学的部位の左右【詳細参照】",
        "definition" : "解剖学的部位の左右。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "ImagingStudy.series.specimen",
        "path" : "ImagingStudy.series.specimen",
        "short" : "このシリーズの検体に関する情報【詳細参照】",
        "definition" : "このシリーズの検体に関する情報。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "ImagingStudy.series.started",
        "path" : "ImagingStudy.series.started",
        "short" : "このシリーズの開始日時【詳細参照】",
        "definition" : "このシリーズの開始日時。",
        "comment" : "Series Date (0008,0021)、およびSeries Time (0008,0031)（いずれもType3）に値が入っていれば、その値を指定する。"
      },
      {
        "id" : "ImagingStudy.series.performer",
        "path" : "ImagingStudy.series.performer",
        "short" : "このシリーズの実施医【詳細参照】",
        "definition" : "このシリーズの実施医。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "ImagingStudy.series.performer.function",
        "path" : "ImagingStudy.series.performer.function",
        "short" : "このシリーズの実施医の役割【詳細参照】",
        "definition" : "このシリーズの実施医の役割。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "ImagingStudy.series.performer.actor",
        "path" : "ImagingStudy.series.performer.actor",
        "short" : "このシリーズの撮影者、もしくは組織【詳細参照】",
        "definition" : "このシリーズの撮影者、もしくは組織。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "ImagingStudy.series.instance",
        "path" : "ImagingStudy.series.instance",
        "short" : "シリーズに含まれるインスタンス（画像）単位の情報",
        "definition" : "シリーズに含まれるインスタンス（画像）単位の情報。"
      },
      {
        "id" : "ImagingStudy.series.instance.uid",
        "path" : "ImagingStudy.series.instance.uid",
        "short" : "インスタンス（画像）のユニークID【詳細参照】",
        "definition" : "インスタンス（画像）のユニークID。",
        "comment" : "SOP Instance UID (0008,0018) に入力されている値を指定する。",
        "mustSupport" : true
      },
      {
        "id" : "ImagingStudy.series.instance.sopClass",
        "path" : "ImagingStudy.series.instance.sopClass",
        "short" : "SOPクラスUID【詳細参照】",
        "definition" : "SOPクラスUID。",
        "comment" : "内視鏡では、主に以下の値が指定される。  \n　VL Endoscopic Image Storage:1.2.840.10008.5.1.4.1.1.77.1.1  \n　Secondary Capture Image Storage:1.2.840.10008.5.1.4.1.1.7",
        "mustSupport" : true,
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/uv/imaging-service-request-ig/ValueSet/dicom-sop-classes"
        }
      },
      {
        "id" : "ImagingStudy.series.instance.number",
        "path" : "ImagingStudy.series.instance.number",
        "short" : "SOP Instance UIDとは別に、ユーザー（または装置）が自由に決められるインスタンス（画像）ごとの番号【詳細参照】",
        "definition" : "SOP Instance UIDとは別に、ユーザー（または装置）が自由に決められるインスタンス（画像）ごとの番号。",
        "comment" : "Instance Number (0020,0013) に値が入っていた場合は、その値を指定する。"
      },
      {
        "id" : "ImagingStudy.series.instance.title",
        "path" : "ImagingStudy.series.instance.title",
        "short" : "画像に関する説明【詳細参照】",
        "definition" : "画像に関する説明。",
        "comment" : "部門システム側で説明を付ける場合は、その説明を指定してもよい。"
      }
    ]
  }
}

```
