# JP Core DiagnosticReport Pathology Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DiagnosticReport Pathology Profile**

## Resource Profile: JP Core DiagnosticReport Pathology Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Pathology
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DiagnosticReport_Pathology
* **項目**: *Title*
  * **内容**: JP Core DiagnosticReport Pathology Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-08-12 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはDiagnosticReportリソースに対して、病理分野の診断レポートのデータを送受信するための制約と拡張を定めたものである。 

このプロファイルはDiagnosticReportリソースを使用して、病理診断の根拠となる内容や、顕微鏡検査中に撮影された画像などのデータを共通の「報告書(レポート)」として記録、検索、取得するために、最低限遵守すべき制約を取り纏めたものである。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* オーダをもとに実施された病理診断レポートの保存
* 他のリソースからの病理診断レポートの参照
* 組織診断、細胞診断の結果の記録と参照
* 病理画像の記録と参照
* 検体情報との関連付け

## スコープ

DiagnosticReportリソースを使用して表現した病理診断レポートには、診断内容に加え、いくつかの所見、顕微鏡検査中に撮影された画像、テキストおよびコード化された解釈、テンプレート化された報告書などが含まれる。

典型的な利用方法としては、PDFやxml形式で作成された報告書をDiagnosticReport.presentedForm要素に格納するとともに、DiagnosticReport.result要素が参照する[JP Core Observation Pathology][JP_Observation_Pathology]リソースに観察結果（診断、所見など）の情報を、DiagnosticReport.conclusion要素に診断要約を記載する。検査中に撮影された画像や動画は、DICOM形式であればimagingStudyを参照、DICOM以外の形式であればDiagnosticReport.media要素にMediaリソースへのリンクとして保持する。

### 注記

病理診断においては、検体情報（Specimen）が重要な要素となるため、DiagnosticReport.specimen要素を使用して検体情報を関連付けることを強く推奨する。

## 関連するプロファイル

本プロファイルは、以下のリソースとの組み合わせで使用されることが想定される。

* [JP Core Observation Pathology][JP_Observation_Pathology]：病理診断による観察結果
* [JP Core ImagingStudy Pathology][JP_ImagingStudy_Pathology]：病理診断で撮影されたDICOM画像
* [JP Core Media Pathology][JP_Media_Pathology]：病理診断で撮影されたNon-DICOM画像
* [JP Core Specimen][JP_Specimen]：検体情報
* [JP Core Patient][JP_Patient]：患者情報
* [JP Core Practitioner][JP_Practitioner]：病理医情報

## プロファイル定義

[プロファイル定義を参照][JP_DiagnosticReport_Pathology]

**Usages:**

* Refer to this Profile: [JP Core ImagingStudy Pathology Profile](StructureDefinition-jp-imagingstudy-pathology.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-diagnosticreport-pathology)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-diagnosticreport-pathology.csv), [Excel](StructureDefinition-jp-diagnosticreport-pathology.xlsx), [Schematron](StructureDefinition-jp-diagnosticreport-pathology.sch) 

病理診断レポート（JP Core DiagnosticReport Pathology Profile）の利用にあたっては、以下の点に注意すること。

## 必須要素と推奨事項

### MustSupport

このプロファイルでは、以下の要素がMustSupportとして定められている。

* basedOn : オーダ情報への参照
* category : レポートの分野（病理）を示すコード
* subject : 対象患者情報
* effectiveDateTime : 診断レポートの作成日時
* issued : レポート確定日時
* performer : 病理診断を実施した医師
* resultsInterpreter : 診断レポートの確定者
* specimen : 検体情報への参照
* result : 病理診断による観察結果（診断、所見など）の情報
* imagingStudy : レポートに添付されるDICOM画像の参照先
* media.link : レポートに添付される非DICOM画像の参照先
* conclusion : 病理診断の要約結論
* conclusionCode : 病理診断レポートの要約結論を表すコード
* presentedForm : レポート本体（全体のイメージあるいは所見等のテキスト）

## 注意事項

### text

JP Core V1.2からは、診断、所見などの観察結果についてはDomainResourceのtext要素ではなく、原則としてresult要素が参照するObservationリソースに格納する方針に改めたので注意されたい。

従って、V1.2以降では、.text要素に記述した内容はレポートの内容に対する簡易的な表示には利用されるが、サーバ上での検索性は担保されない可能性を考慮して実装することを推奨する。 また、所見（findings）や診断の結果（diagnosis）は対応するObservationリソースに内容が保持されるので、全文検索等の目的で構造化された情報を利用する場合はこれらを参照すること。

![](observation_pathology_structure.png)

### category

病理分野のDiagnosticReportでは.category要素の第1コードは「LP29708-2」（Pathology）とすること。

### code

病理分野の診断レポートを分類するためのコードを設定する。JP_DocumentCodes_Pathology_VSから適切なコードを選択すること（例：「33717-0」（病理診断報告書））。

### specimen

病理診断においては検体情報が重要な要素となるため、specimen要素を使用して検体情報を関連付けることを強く推奨する。JP Core Specimenリソースを参照すること。

### result

病理診断による観察結果（診断、所見など）を記録するObservationリソースを参照する。JP Core Observation Pathologyプロファイルを適用したObservationリソースを使用すること。

病理診断では、以下のような階層構造での情報記録を推奨する：

* 最終診断
* 肉眼所見
* 組織所見
* 特殊染色所見
* 免疫組織化学所見

### imagingStudy

病理診断でDICOM形式の顕微鏡画像を使用する場合、JP Core ImagingStudy Pathologyプロファイルを適用したImagingStudyリソースを参照する。

### media

病理診断でDICOM以外の形式の画像を使用する場合、JP Core Media Pathologyプロファイルを適用したMediaリソースを参照する。

### 時間の指定

病理診断レポートにおいて時間に関連する要素は以下のとおりである：

* effectiveDateTime：病理診断を実施した日時
* issued：病理診断レポートが確定された日時

### 参照画像

ImagingStudyやmediaは多少オーバーラップするが、使用される目的が異なる。用途に応じて使い分けること。DiagnosticReportではDICOM画像への参照としてImagingStudyが利用され、キー画像としてmediaが参照される。

## 利用方法

### 必須検索パラメータ

病理診断レポートの検索で必須となるパラメータ：

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| SHALL | identifier | token | レポートID | DiagnosticReport.identifier | GET [base]/DiagnosticReport?identifier=12345 |
| SHALL | patient | reference | 対象患者 | DiagnosticReport.subject | GET [base]/DiagnosticReport?patient=Patient/123 |
| SHOULD | category | token | レポート種別 | DiagnosticReport.category | GET [base]/DiagnosticReport?category=LP29708-2 |
| SHOULD | code | token | レポートを示すコード | DiagnosticReport.code | GET [base]/DiagnosticReport?code=33717-0 |
| SHOULD | date | date | レポート作成日 | DiagnosticReport.effectiveDateTime | GET [base]/DiagnosticReport?date=2025-08-14 |
| SHOULD | status | token | レポートのステータス | DiagnosticReport.status | GET [base]/DiagnosticReport?status=final |
| MAY | specimen | reference | 検体情報 | DiagnosticReport.specimen | GET [base]/DiagnosticReport?specimen=Specimen/123 |
| MAY | result | reference | 観察結果 | DiagnosticReport.result | GET [base]/DiagnosticReport?result=Observation/123 |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-diagnosticreport-pathology",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Pathology",
  "version" : "1.3.0-dev",
  "name" : "JP_DiagnosticReport_Pathology",
  "title" : "JP Core DiagnosticReport Pathology Profile",
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
  "description" : "このプロファイルはDiagnosticReportリソースに対して、病理分野の診断レポートのデータを送受信するための制約と拡張を定めたものである。",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DiagnosticReport",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DiagnosticReport",
        "path" : "DiagnosticReport",
        "short" : "病理にて作成された診断レポート。",
        "definition" : "病理にて作成された診断レポート。"
      },
      {
        "id" : "DiagnosticReport.identifier",
        "path" : "DiagnosticReport.identifier",
        "short" : "システムが管理する、施設内で診断レポートを一意に識別するためのID【詳細参照】",
        "definition" : "システムが管理する、施設内で診断レポートを一意に識別するためのID。",
        "comment" : "病理では標本番号（受付番号、病理番号）＋版数を指定する。"
      },
      {
        "id" : "DiagnosticReport.basedOn",
        "path" : "DiagnosticReport.basedOn",
        "short" : "他のシステムから依頼されたオーダ情報【詳細参照】",
        "definition" : "他のシステムから依頼されたオーダ情報。",
        "comment" : "通常、依頼元となるServiceRequestリソースを参照する。他のシステムと連携していない場合は参照不要。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.status",
        "path" : "DiagnosticReport.status",
        "short" : "診断レポートのステータス【詳細参照】",
        "definition" : "診断レポートのステータス。",
        "comment" : "preliminary（中間）|final（確定済、承認済）|appended（追加）|amended（修正）|corrected（訂正）"
      },
      {
        "id" : "DiagnosticReport.category",
        "path" : "DiagnosticReport.category",
        "short" : "診断レポートの分野を表すコード【詳細参照】",
        "definition" : "診断レポートの分野を表すコード。",
        "comment" : "Value Set：JPCore_DiagnosticReport_Categoryの中から「LP7839-6」（Pathology（病理））を指定する。"
      },
      {
        "id" : "DiagnosticReport.code",
        "path" : "DiagnosticReport.code",
        "short" : "病理分野の診断レポートを分類するためのコード【詳細参照】",
        "definition" : "病理分野の診断レポートを分類するためのコード。",
        "comment" : "Value Set：JPCore_DocumentCodeの中から適切な病理分野の報告書のコードを指定する。例：組織診は「11526-1」（病理検査報告書）、細胞診は「47526-9」（細胞診報告書）、剖検は「18743-5」（剖検報告書）を指定する。"
      },
      {
        "id" : "DiagnosticReport.subject",
        "path" : "DiagnosticReport.subject",
        "short" : "診断レポートの対象患者に関する情報【詳細参照】",
        "definition" : "診断レポートの対象患者に関する情報。",
        "comment" : "JP Core Patientリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.encounter",
        "path" : "DiagnosticReport.encounter",
        "short" : "この診断レポートを書くきっかけとなった情報【詳細参照】",
        "definition" : "この診断レポートを書くきっかけとなった情報。",
        "comment" : "JP Core Encounterリソースを参照する。"
      },
      {
        "id" : "DiagnosticReport.effective[x]",
        "path" : "DiagnosticReport.effective[x]",
        "short" : "診断レポートの作成日時【詳細参照】",
        "definition" : "診断レポートの作成日時。",
        "comment" : "DateTimeを採用する。",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "DiagnosticReport.issued",
        "path" : "DiagnosticReport.issued",
        "short" : "レポート確定日時【詳細参照】",
        "definition" : "レポート確定日時。",
        "comment" : "StatusがFinalになった日時を指定する。"
      },
      {
        "id" : "DiagnosticReport.performer",
        "path" : "DiagnosticReport.performer",
        "short" : "レポートを確定した医師。",
        "definition" : "レポートを確定した医師。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.resultsInterpreter",
        "path" : "DiagnosticReport.resultsInterpreter",
        "short" : "この診断レポートの作成者【詳細参照】",
        "definition" : "この診断レポートの作成者。",
        "comment" : "複数いる場合は、列記する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.specimen",
        "path" : "DiagnosticReport.specimen",
        "short" : "この診断レポートの検体に関する情報【詳細参照】",
        "definition" : "この診断レポートの検体に関する情報。",
        "comment" : "JP Core Specimen Pathologyリソースを参照する。",
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
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "short" : "この診断レポートの一部となるObservationに関する情報【詳細参照】",
        "definition" : "この診断レポートの一部となるObservationに関する情報。",
        "comment" : "病理では未使用。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.imagingStudy",
        "path" : "DiagnosticReport.imagingStudy",
        "short" : "診断レポートに関連づけれられたDICOM画像に関する情報【詳細参照】",
        "definition" : "診断レポートに関連づけれられたDICOM画像に関する情報。",
        "comment" : "JP Core ImagingStudy Pathologyリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Pathology"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.media",
        "path" : "DiagnosticReport.media",
        "short" : "診断レポートに関連づけられたメディアに関する情報【詳細参照】",
        "definition" : "診断レポートに関連づけられたメディアに関する情報。",
        "comment" : "主に、レポートに添付される画像を指す。"
      },
      {
        "id" : "DiagnosticReport.media.comment",
        "path" : "DiagnosticReport.media.comment",
        "short" : "メディアに関するコメント【詳細参照】",
        "definition" : "メディアに関するコメント。",
        "comment" : "以下のいずれかを記載する。参照画像としての添付されたイメージ、診断用スライドをスキャンしたイメージ。"
      },
      {
        "id" : "DiagnosticReport.media.link",
        "path" : "DiagnosticReport.media.link",
        "short" : "メディアの参照先【詳細参照】",
        "definition" : "メディアの参照先。",
        "comment" : "JP Core Media Pathologyリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Pathology"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.conclusion",
        "path" : "DiagnosticReport.conclusion",
        "short" : "総合診断に相当する要約結論【詳細参照】",
        "definition" : "総合診断に相当する要約結論。",
        "comment" : "テキストで可能な限り記載する。"
      },
      {
        "id" : "DiagnosticReport.conclusionCode",
        "path" : "DiagnosticReport.conclusionCode",
        "short" : "病理診断レポートの要約結論を表す1つ以上のコード【詳細参照】",
        "definition" : "病理診断レポートの要約結論を表す1つ以上のコード。",
        "comment" : "腫瘍の場合はICD-O-3、腫瘍以外はICD-10、ICD-11の病名を設定する。ただし、運用上コード指定ができない場合、設定されなくてもよい。"
      },
      {
        "id" : "DiagnosticReport.presentedForm",
        "path" : "DiagnosticReport.presentedForm",
        "short" : "診断レポート本体【詳細参照】",
        "definition" : "診断レポート本体。",
        "comment" : "診断レポート本体をPDF形式やxml形式などで添付する（フォーマットは不問）。",
        "mustSupport" : true
      }
    ]
  }
}

```
