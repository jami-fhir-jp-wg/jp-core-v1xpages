# JP Core ImagingStudy Pathology Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ImagingStudy Pathology Profile**

## Resource Profile: JP Core ImagingStudy Pathology Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Pathology
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ImagingStudy_Pathology
* **項目**: *Title*
  * **内容**: JP Core ImagingStudy Pathology Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-08-12 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはImagingStudyリソースに対して、病理WSIのDICOM画像に関するデータを送受信するための制約と拡張を定めたものである。 

このプロファイルはImagingStudyリソースに対して、主に病理診断で撮影された顕微鏡画像に関わるデータを送受信するための制約と拡張を定めたものである。

## 背景および想定シナリオ

本プロファイルは、主に病理診断で撮影された顕微鏡画像、ならびに画像に関連する情報を、DICOM規格に準拠したデータとして取り扱うことを想定している。なおFHIR 4.0.1においては、Non-DICOMのデータを取り扱う際は、Mediaリソースの利用を想定している。

ImagingStudyリソースは、主としてDICOM規格の属性情報を表す。1つの検査は通常1つ以上のシリーズから構成され、それぞれのシリーズにはService-Object Pairインスタンス（SOPインスタンス）が一般的な属性情報として格納される。1つのシリーズには単一のモダリティが指定されるが、1つの検査は異なるモダリティによる複数のシリーズから構成されるケースがある。

* Patientリソースを検索条件とした病理診断の画像情報の参照
* 病理診断における顕微鏡画像の保存と参照
* 染色方法や部位別の画像シリーズの管理

## スコープ

ImagingStudyリソースはDICOMの検査、シリーズおよび画像に関連する情報を提供し、それらの情報を取得する方法を示す（native DICOMフォーマット、あるいはJPEGなど一般的な画像情報に変換したものなど）。ImagingStudyは単一のDICOM検査のすべての部分の情報を利用可能にするために用いられる。

最も単純なケースではImagingStudy は、DICOM query（例えばQIDO-RS）を行うことなく重要なDICOM情報へのアクセスを提供する。一方で、DICOMの実画像情報などのインスタンスはImagingStudyリソースには保存されないため、この情報を保存するためにはDICOM WADO-RSサーバやほかのストレージ機能を利用する必要がある。 （FHIRではREST APIを用いることが想定されており，親和性の観点からはDICOM web accessの利用が想定される。）

各属性の名前と値の表現（データ型）は、DICOM Part6 Data Dictionary に記載されている。 使用についての詳細な説明を含む、情報オブジェクトのコンテキストでの属性の使用は、DICOM Part3 Information Object Definitions に記載されている。 「検査中のインスタンス数」など、DICOMクエリ情報モデルで使用される属性は、DICOM Part4 Annex C に記載されている。

ImagingStudyは一つのDICOMの検査を参照する必要があり、またその検査のサブセットに対する参照にも利用できる。一方で、複数のImagingStudyリソースが同じDICOMの検査を参照することや、同じDICOMの検査内の異なるサブセット（シリーズ）を参照することもあり得る。

上記のようなDICOMに関連して用いられるImagingStudyの用途が本プロファイルでのスコープであり、ImagingStudyの情報項目の１つを取り扱う際に必要な要件を定義している。

## プロファイル定義

[プロファイル定義を参照][JP_ImagingStudy_Pathology]

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Pathology Profile](StructureDefinition-jp-diagnosticreport-pathology.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-imagingstudy-pathology)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-imagingstudy-pathology.csv), [Excel](StructureDefinition-jp-imagingstudy-pathology.xlsx), [Schematron](StructureDefinition-jp-imagingstudy-pathology.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-imagingstudy-pathology",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Pathology",
  "version" : "1.3.0-dev",
  "name" : "JP_ImagingStudy_Pathology",
  "title" : "JP Core ImagingStudy Pathology Profile",
  "status" : "active",
  "date" : "2026-08-12T13:21:20+00:00",
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
  "description" : "このプロファイルはImagingStudyリソースに対して、病理WSIのDICOM画像に関するデータを送受信するための制約と拡張を定めたものである。",
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
        "short" : "病理WSIのDICOM画像に関する情報。",
        "definition" : "病理WSIのDICOM画像に関する情報。"
      },
      {
        "id" : "ImagingStudy.identifier",
        "path" : "ImagingStudy.identifier",
        "short" : "DICOM画像全体を一意に識別するためのID【詳細参照】",
        "definition" : "DICOM画像全体を一意に識別するためのID。",
        "comment" : "Study Instance UIDの値を指定する。"
      },
      {
        "id" : "ImagingStudy.status",
        "path" : "ImagingStudy.status",
        "short" : "DICOM画像のステータス【詳細参照】",
        "definition" : "DICOM画像のステータス",
        "comment" : "登録済み | 利用可能 | 取消済み | エラーで入力 | 不明 http://hl7.org/fhir/ValueSet/imagingstudy-status|4.0.1"
      },
      {
        "id" : "ImagingStudy.modality",
        "path" : "ImagingStudy.modality",
        "short" : "DICOM画像で使用された撮影装置（モダリティ）【詳細参照】",
        "definition" : "DICOM画像で使用された撮影装置（モダリティ）",
        "comment" : "病理（WSI）を表すモダリティコード\"SM\"を指定する。"
      },
      {
        "id" : "ImagingStudy.modality.code",
        "path" : "ImagingStudy.modality.code",
        "fixedCode" : "SM"
      },
      {
        "id" : "ImagingStudy.subject",
        "path" : "ImagingStudy.subject",
        "short" : "DICOM画像の対象患者に関する情報【詳細参照】",
        "definition" : "DICOM画像の対象患者に関する情報。",
        "comment" : "JP Core Patientリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "ImagingStudy.encounter",
        "path" : "ImagingStudy.encounter",
        "short" : "このDICOM画像を取得するきっかけとなった情報【詳細参照】",
        "definition" : "このDICOM画像を取得するきっかけとなった情報。",
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
        "short" : "検査開始日時、もしくは撮影装置に患者情報が届いた/入力された日時【詳細参照】",
        "definition" : "検査開始日時、もしくは撮影装置に患者情報が届いた/入力された日時。",
        "comment" : "病理では、検体採取日時。"
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
        "comment" : "病理では、原則使用しない。",
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
        "id" : "ImagingStudy.interpreter",
        "path" : "ImagingStudy.interpreter",
        "short" : "画像を診断した医師【詳細参照】",
        "definition" : "画像を診断した医師。",
        "comment" : "通常、病理医。病理では原則使用しない。",
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
        "id" : "ImagingStudy.endpoint",
        "path" : "ImagingStudy.endpoint",
        "short" : "DICOMのリソースが存在する位置【詳細参照】",
        "definition" : "DICOMのリソースが存在する位置。",
        "comment" : "DICOM WADO-RS、DICOM WADO-URI、DICOM QIDO-RSなどを指定する。"
      },
      {
        "id" : "ImagingStudy.numberOfSeries",
        "path" : "ImagingStudy.numberOfSeries",
        "short" : "このDICOM画像検査に含まれるシリーズ数。",
        "definition" : "このDICOM画像検査に含まれるシリーズ数。"
      },
      {
        "id" : "ImagingStudy.numberOfInstances",
        "path" : "ImagingStudy.numberOfInstances",
        "short" : "このDICOM画像に含まれるイメージ（インスタンス）の数。",
        "definition" : "このDICOM画像に含まれるイメージ（インスタンス）の数。"
      },
      {
        "id" : "ImagingStudy.procedureReference",
        "path" : "ImagingStudy.procedureReference",
        "short" : "実施された処置に関する情報【詳細参照】",
        "definition" : "実施された処置に関する情報。",
        "comment" : "病理では省略してよい。使用する場合には、JP Core Procedureを参照する。",
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
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "ImagingStudy.location",
        "path" : "ImagingStudy.location",
        "short" : "ImagingStudyが実行された場所（画像がスキャンされた場所）を示すLocationリソースがある場合には、これを参照。",
        "definition" : "ImagingStudyが実行された場所（画像がスキャンされた場所）を示すLocationリソースがある場合には、これを参照。",
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
        "short" : "DICOM画像が依頼された理由を表す1つ以上のコード【詳細参照】",
        "definition" : "DICOM画像が依頼された理由を表す1つ以上のコード。",
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "ImagingStudy.reasonReference",
        "path" : "ImagingStudy.reasonReference",
        "short" : "DICOM画像の実施理由に関する情報【詳細参照】",
        "definition" : "DICOM画像の実施理由に関する情報。",
        "comment" : "JP Core DiagnosticReportリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Pathology"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.note",
        "path" : "ImagingStudy.note",
        "short" : "原則、未使用",
        "definition" : "原則、未使用"
      },
      {
        "id" : "ImagingStudy.description",
        "path" : "ImagingStudy.description",
        "short" : "DICOM画像に関する記述。",
        "definition" : "DICOM画像に関する記述。"
      },
      {
        "id" : "ImagingStudy.series",
        "path" : "ImagingStudy.series",
        "short" : "DICOM画像に含まれるシリーズ（大まかな画像のグループ）。",
        "definition" : "DICOM画像に含まれるシリーズ（大まかな画像のグループ）。"
      },
      {
        "id" : "ImagingStudy.series.uid",
        "path" : "ImagingStudy.series.uid",
        "short" : "シリーズを識別する一意に識別するためのUID【詳細参照】",
        "definition" : "シリーズを識別する一意に識別するためのUID。",
        "comment" : "Series Instance UID (0020,000E) の値を指定する。"
      },
      {
        "id" : "ImagingStudy.series.number",
        "path" : "ImagingStudy.series.number",
        "short" : "Series Instance UIDとは別に、ユーザー（または装置）が自由に決められるシリーズ番号。",
        "definition" : "Series Instance UIDとは別に、ユーザー（または装置）が自由に決められるシリーズ番号。"
      },
      {
        "id" : "ImagingStudy.series.modality",
        "path" : "ImagingStudy.series.modality",
        "short" : "このシリーズが取得された撮影装置（モダリティ）【詳細参照】",
        "definition" : "このシリーズが取得された撮影装置（モダリティ）。",
        "comment" : "病理（WSI）を表すモダリティコード\"SM\"を指定する。1シリーズ1モダリティで、1つのシリーズの中に複数のモダリティが混在することはない。"
      },
      {
        "id" : "ImagingStudy.series.modality.code",
        "path" : "ImagingStudy.series.modality.code",
        "fixedCode" : "SM"
      },
      {
        "id" : "ImagingStudy.series.description",
        "path" : "ImagingStudy.series.description",
        "short" : "このシリーズに関する記述。",
        "definition" : "このシリーズに関する記述。"
      },
      {
        "id" : "ImagingStudy.series.numberOfInstances",
        "path" : "ImagingStudy.series.numberOfInstances",
        "short" : "このシリーズに含まれる画像枚数。",
        "definition" : "このシリーズに含まれる画像枚数。"
      },
      {
        "id" : "ImagingStudy.series.endpoint",
        "path" : "ImagingStudy.series.endpoint",
        "short" : "このシリーズのリソースが存在する位置。",
        "definition" : "このシリーズのリソースが存在する位置。"
      },
      {
        "id" : "ImagingStudy.series.bodySite",
        "path" : "ImagingStudy.series.bodySite",
        "short" : "このシリーズの対象となる解剖学的部位【詳細参照】",
        "definition" : "このシリーズの対象となる解剖学的部位。",
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "ImagingStudy.series.laterality",
        "path" : "ImagingStudy.series.laterality",
        "short" : "解剖学的部位の左右【詳細参照】",
        "definition" : "解剖学的部位の左右。",
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "ImagingStudy.series.specimen",
        "path" : "ImagingStudy.series.specimen",
        "short" : "このシリーズの検体に関する情報【詳細参照】",
        "definition" : "このシリーズの検体に関する情報。",
        "comment" : "JP Core Specimenリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Pathology"
            ]
          }
        ]
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
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "ImagingStudy.series.performer.function",
        "path" : "ImagingStudy.series.performer.function",
        "short" : "このシリーズの実施医の役割【詳細参照】",
        "definition" : "このシリーズの実施医の役割。",
        "comment" : "病理では原則使用しない。"
      },
      {
        "id" : "ImagingStudy.series.performer.actor",
        "path" : "ImagingStudy.series.performer.actor",
        "short" : "このシリーズの撮影者、もしくは組織【詳細参照】",
        "definition" : "このシリーズの撮影者、もしくは組織。",
        "comment" : "病理では原則使用しない。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.series.instance",
        "path" : "ImagingStudy.series.instance",
        "short" : "シリーズに含まれるインスタンス（画像）単位の情報。",
        "definition" : "シリーズに含まれるインスタンス（画像）単位の情報。"
      },
      {
        "id" : "ImagingStudy.series.instance.uid",
        "path" : "ImagingStudy.series.instance.uid",
        "short" : "インスタンス（画像）のユニークID【詳細参照】",
        "definition" : "インスタンス（画像）のユニークID。",
        "comment" : "SOP Instance UID (0008,0018) に値が入っていれば、その値を指定する。"
      },
      {
        "id" : "ImagingStudy.series.instance.sopClass",
        "path" : "ImagingStudy.series.instance.sopClass",
        "short" : "SOPクラスUID【詳細参照】",
        "definition" : "SOPクラスUID。",
        "comment" : "病理では、主に以下の値が指定される。VL Whole Slide Microscopy Image Storage (VL全スライド顕微鏡画像保存): 1.2.840.10008.5.1.4.1.1.77.1.6"
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
