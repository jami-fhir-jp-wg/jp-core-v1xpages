# JP Core DiagnosticReport Endoscopy Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DiagnosticReport Endoscopy Profile**

## Resource Profile: JP Core DiagnosticReport Endoscopy Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Endoscopy
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DiagnosticReport_Endoscopy
* **項目**: *Title*
  * **内容**: JP Core DiagnosticReport Endoscopy Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このプロファイルはDiagnosticReportリソースに対して、内視鏡を使用して実施された検査、治療に関わるデータを送受信するための制約と拡張を定めたものである。 

本プロファイルは、DiagnosticReportリソースを使用して、内視鏡による診断/治療の根拠となる内容や、検査/手技中に撮影された画像や動画などのデータを共通の「報告書(レポート)」として記録、検索、取得するために、最低限遵守すべき制約を取り纏めたものである。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* オーダをもとに実施された内視鏡検査レポートの保存
* 他のリソースからの内視鏡検査レポートの参照

## スコープ

DiagnosticReportリソースを使用して表現した内視鏡検査レポートには、診断内容に加え、いくつかの所見、検査/手技中に撮影された画像、テキストおよびコード化された解釈、テンプレート化された報告書などが含まれる。

典型的な利用方法としては、PDFやxml形式で作成された報告書をDiagnosticReport.presentedForm要素に格納するとともに、DiagnosticReport.result要素が参照する[JP Core Observation Endoscopy](StructureDefinition-jp-observation-endoscopy.md)リソースに観察結果（診断、所見など）の情報を、DiagnosticReport.conclusion要素に診断要約を記載する。検査中に撮影された画像や動画は、DICOM形式であればimagingStudyを参照、DICOM以外の形式であればDiagnosticReport.media要素にMediaリソースへのリンクとして保持する。

### 注記

* 消化器内視鏡検査レポートについては、[日本消化器内視鏡学会](https://jges.net/)が推進する[JED (Japan Endoscopy Database) Project](https://jedproject.jges.net/)に準拠していることが強く推奨される。
* 2024年11月現在、JED用語のLOINC(http://loinc.org)コードを申請中である。現在、同一用語に対して異なるローカルコードが割り振られている箇所が存在するが、LOINCコード取得時に名寄せする予定である。

#### V1.2における更新箇所

JP Core V1.1.2では、報告書の見読性、検索の汎用性を確保するために、所見を中心とした報告書の主要な内容についてはDiagnosticReportのDomainResourceの1つであるtext要素にテキスト形式で格納することを推奨していたが、多くのクラウドシステムではDomainResource.textを検索対象とできない可能性があることが判明した。検索性を担保するために、JP Core V1.2以降では、US Coreの運用方法に倣い、DiagnosticReport.result要素が参照する[JP Core Observation Endoscopy](StructureDefinition-jp-observation-endoscopy.md)リソースに、診断レポートの一部となる内視鏡検査、治療による観察結果（診断、所見など）の情報を記載し、検索対象のリソースとして用いることとした。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md)
* Examples for this Profile: [DiagnosticReport/jp-diagnosticreport-endoscopy-example-1](DiagnosticReport-jp-diagnosticreport-endoscopy-example-1.md) and [DiagnosticReport/jp-diagnosticreport-endoscopy-example-2](DiagnosticReport-jp-diagnosticreport-endoscopy-example-2.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-diagnosticreport-endoscopy)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-diagnosticreport-endoscopy.csv), [Excel](StructureDefinition-jp-diagnosticreport-endoscopy.xlsx), [Schematron](StructureDefinition-jp-diagnosticreport-endoscopy.sch) 

### 必須要素

次のデータ項目は必須（**SHALL**）である。

* status : レポートの状態・進捗状況。
* category : レポートを作成した臨床分野、部門、または診断サービスを分類するコード。"LP7796-8" Endoscopy 固定。
* code : レポートの種別。SS-MIX2 拡張ストレージ構成の説明と構成ガイドライン Ver1.2h（本実装ガイドライン制定時の最新版） 「別紙：標準文書コード表」の標準コード（LOINCコード）から指定。

### MustSupport

次の要素に関する情報が送信システムに存在する場合、その要素がサポートされなければならないことを意味する。（**Must Support**）

* basedOn : ServiceRequest（オーダを表すリソースへの参照）。
* subject : 患者リソース（Patient）への参照。殆どの場合存在するが、緊急検査等で患者リソースが確定していない場合が想定される。
* effectiveDateTime : レポート作成日時。
* issued : レポート確定日時。
* performer : 内視鏡検査を実施した医師。
* resultInterpreter : レポートの確定者。
* result : 診断レポートの一部となる内視鏡検査、治療による観察結果（診断、所見など）の情報。
* imagingStudy : レポートに添付されるキー画像の参照先。（DICOMフォーマット）
* link : レポートに添付されるキー画像の参照先。（非DICOMフォーマット）
* conclusion : 総合診断としての要約結論。
* conclusionCode : 内視鏡診断レポートの要約結論を表すコード。
* presentedForm : レポート本体。（全体のイメージあるいは所見等のテキスト）

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 注意事項

### text

JP Core V1.2からは、診断、所見などの観察結果についてはDomainResourceのtext要素ではなく、原則としてresult要素が参照するObservationリソースに格納する方針に改めたので注意されたい。

依頼情報や患者基本情報などを含むレポート全体のデータは、presentedForm要素に、base64で符号化されたバイナリデータとして格納される。そこで、所見を中心としたhuman-readableな[narrative](https://www.hl7.org/fhir/R4/narrative.html)データを、主にレポートの見読性と検索性の向上を目的に、JP Core V1.1.2ではDiagnosticReportのDomainResourceの1つであるtext要素に格納することを推奨することとして本プロファイルを初期リリースした。 (レポートの詳細はpresentedForm要素に格納されるレポート本体での確認を前提とする)

しかし、多くのクラウドシステムではDomainResource.textを検索対象とできない可能性があることが判明したため、JP Core V1.2以降では、V1.1.2での実装から方針を転換し、US Coreの運用方法に倣い、DiagnosticReport.result要素が参照する[JP Core Observation Endoscopy](StructureDefinition-jp-observation-endoscopy.md)リソースに、診断レポートの一部となる内視鏡検査、治療による観察結果（診断、所見など）の情報を記載し、検索対象のリソースとして用いることとした。

従って、V1.2以降では、.text要素に記述した内容に対する検索性は担保されない可能性を考慮して実装することを推奨する。

### category

[JP Core Diagnostic Report Category ValueSet](https://jpfhir.jp/fhir/core/ValueSet/JP_DiagnosticReportCategory_VS.html)の中から"Endoscopy"を表すLOINC Part Codeである`LP7796-8`を指定する。

### code

[JP Core Document Codes Endoscopy ValueSet](https://jpfhir.jp/fhir/core/ValueSet/JP_DocumentCodes_Endoscopy_VS.html) の中から適切な内視鏡分野の報告書のコードを指定する。より粒度の細かい報告書のコードを選ぶこと。

* 例：上部消化管内視鏡報告書：`18751-8`

該当する適切な報告書コードが登録されていない場合は、"内視鏡検査報告書"を表す`19805-1`を指定する。

### conclusionCode

消化器内視鏡においては、[日本消化器内視鏡学会](https://www.jges.net/)が推進する[JED (Japan Endoscopy Database) Project](https://jedproject.jges.net/)で定義されている[JED用語](https://jedproject.jges.net/about/terms-about/)のコード値を設定することを強く推奨する。[JP Core Conclusion Code JED ValueSet](https://jpfhir.jp/fhir/core/ValueSet/JP_ConclusionCodesJed_VS.html)として参照する。

(注)2024年11月現在、JED用語のLOINC(http://loinc.org)コードを申請中である。現在、同一用語に対して異なるローカルコードが割り振られている箇所が存在するが、LOINCコード取得時に名寄せする予定となっている。

### 時間の指定

このプロファイルのリソースでは、effective[x]エレメントにはレポート作成時間を[dateTime](https://www.hl7.org/fhir/R4/datatypes.html#dateTime)で格納する。

### 参照画像

レポートに添付されるキー画像が、DICOMフォーマットの場合は[JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md)リソースから参照し、非DICOMフォーマットの場合media要素のlinkから参照する。

## 利用方法

### OperationおよびSearch Parameter一覧

#### Search Parameter一覧

本プロファイルで再定義された検索パラメータの一覧である。[DiagnosticReport共通の検索パラメータ](StructureDefinition-jp-diagnosticreport-common.md)が利用されるが、重複するものについては以下の定義に従うこと。

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| MAY | based-on | reference | オーダ情報への参照 | DiagnosticReport.basedOn ([ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html)) | GET [base]/DiagnosticReport?based-on=ServiceRequest/12345 |
| SHOULD | category | token | レポート種別 | DiagnosticReport.category ([JP Core DiagnosticReport Category ValueSet](https://jpfhir.jp/fhir/core/ValueSet/JP_DiagnosticReportCategory_VS.html)) (デフォルト：[LP7796-8](https://loinc.org/LP7796-8/)) | GET [base]/DiagnosticReport?category=LP7796-8 |
| SHOULD | code | token | レポート全体を示すコード | DiagnosticReport.code ([JP Core DocumentCodes Endoscopy ValueSet](https://jpfhir.jp/fhir/core/ValueSet/JP_DocumentCodes_Endoscopy_VS.html)) | GET [base]/DiagnosticReport?code=18751-8 |
| MAY | conclusion | token | 内視鏡診断レポートの要約結論 | DiagnosticReport.conclusionCode ([JP Core Conclusion Code JED ValueSet](https://jpfhir.jp/fhir/core/ValueSet/JP_ConclusionCodesJed_VS.html)) | GET [base]/DiagnosticReport?conclusion=Z2B32104 |

なお、検索パラメータは複合的に利用できる。詳細は[Search - Chained parameters](https://www.hl7.org/fhir/R4/search.html#chaining)を参照すること。

例：

```
GET [base]/DiagnosticReport?patient=123&category=LP7796-8

```

#### 操作詳細

##### 必須検索パラメータ

本プロファイルで必須（**SHALL**）として定義された検索項目はない。

##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**上部消化管検査レポート**](DiagnosticReport-jp-diagnosticreport-endoscopy-example-1.md)：(JP Core V1.1.2準拠)
* [**下部消化管検査レポート**](DiagnosticReport-jp-diagnosticreport-endoscopy-example-2.md)：(JP Core V1.2準拠)

## その他、参考文献・リンク等

本プロファイルそのものの定義には影響しないが、presentedFormに格納するレポートのコンテンツを作成するレポーティングシステムにおいて、標準化に関する参考資料となる。

1. [JAHIS 診療文書構造化記述規約 共通編 Ver.2.0](https://www.jahis.jp/standard/detail/id=729)
1. [JAHIS 内視鏡検査レポート構造化記述規約 Ver.1.0](https://www.jahis.jp/standard/detail/id=824)

また、消化器内視鏡検査レポートについては、[日本消化器内視鏡学会](https://www.jges.net/)が推進する[JED (Japan Endoscopy Database) Project](https://jedproject.jges.net/)に準拠していることが強く推奨（**SHOULD**）される。

(注)2024年11月現在、JED用語のLOINC(http://loinc.org)コードを申請中である。現在、同一用語に対して異なるローカルコードが割り振られている箇所が存在するが、LOINCコード取得時に名寄せする予定である。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-diagnosticreport-endoscopy",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Endoscopy",
  "version" : "1.3.0-dev",
  "name" : "JP_DiagnosticReport_Endoscopy",
  "title" : "JP Core DiagnosticReport Endoscopy Profile",
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
  "description" : "このプロファイルはDiagnosticReportリソースに対して、内視鏡を使用して実施された検査、治療に関わるデータを送受信するための制約と拡張を定めたものである。",
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
        "short" : "内視鏡を使用して実施された検査、治療に関する診断レポート。",
        "definition" : "内視鏡を使用して実施された検査、治療に関する診断レポート。"
      },
      {
        "id" : "DiagnosticReport.text",
        "path" : "DiagnosticReport.text",
        "short" : "主にレポートの見読性と検索性の向上を目的に、所見を中心としたhuman-readableなnarrativeデータを格納することを推奨する。【詳細参照】",
        "definition" : "主にレポートの見読性と検索性の向上を目的に、所見を中心としたhuman-readableなnarrativeデータを格納することを推奨する。",
        "comment" : "レポートの詳細はpresentedForm要素に格納されるレポート本体での確認を前提とする。"
      },
      {
        "id" : "DiagnosticReport.identifier",
        "path" : "DiagnosticReport.identifier",
        "short" : "製品またはシステムが管理する、施設内で診断レポートを一意に識別するためのID。",
        "definition" : "製品またはシステムが管理する、施設内で診断レポートを一意に識別するためのID。"
      },
      {
        "id" : "DiagnosticReport.basedOn",
        "path" : "DiagnosticReport.basedOn",
        "short" : "他のシステムから依頼されたオーダ情報。【詳細参照】",
        "definition" : "他のシステムから依頼されたオーダ情報。",
        "comment" : "通常、依頼元となるServiceRequestリソースを参照する。他のシステムと連携していない場合は参照不要。",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.status",
        "path" : "DiagnosticReport.status",
        "short" : "診断レポートのステータス。【詳細参照】",
        "definition" : "診断レポートのステータス。",
        "comment" : "「preliminary」（作成中、未確定、未承認）もしくは 「final」（作成完了、確定済、承認済）を指定する。"
      },
      {
        "id" : "DiagnosticReport.category",
        "path" : "DiagnosticReport.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "診断レポートの分野を表すコード。",
        "definition" : "診断レポートの分野を表すコード。",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.category:first",
        "path" : "DiagnosticReport.category",
        "sliceName" : "first",
        "short" : "診断レポートの分野を表すコード。【詳細参照】",
        "definition" : "診断レポートの分野を表すコード。",
        "comment" : "JP_DiagnosticReportCategory_VSの中から「LP7796-8」（Endoscopy（内視鏡））を指定する。",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DiagnosticReportCategory_VS"
        }
      },
      {
        "id" : "DiagnosticReport.category:first.coding.system",
        "path" : "DiagnosticReport.category.coding.system",
        "fixedUri" : "http://loinc.org"
      },
      {
        "id" : "DiagnosticReport.category:first.coding.code",
        "path" : "DiagnosticReport.category.coding.code",
        "min" : 1,
        "fixedCode" : "LP7796-8"
      },
      {
        "id" : "DiagnosticReport.code",
        "path" : "DiagnosticReport.code",
        "short" : "内視鏡分野の診断レポートを分類するためのコード。【詳細参照】",
        "definition" : "内視鏡分野の診断レポートを分類するためのコード。",
        "comment" : "JP_DocumentCodes_Endoscopy_VSの中から適切な内視鏡分野の報告書のコードを指定する（例：「18751-8」（上部消化管内視鏡報告書））。該当する適切な報告書のコードが登録されていない場合は、「19805-1」（内視鏡検査報告書）を指定する。",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DocumentCodes_Endoscopy_VS"
        }
      },
      {
        "id" : "DiagnosticReport.subject",
        "path" : "DiagnosticReport.subject",
        "short" : "診断レポートの対象患者に関する情報。【詳細参照】",
        "definition" : "診断レポートの対象患者に関する情報。",
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
        "id" : "DiagnosticReport.encounter",
        "path" : "DiagnosticReport.encounter",
        "short" : "この診断レポートを書くきっかけとなった情報。【詳細参照】",
        "definition" : "この診断レポートを書くきっかけとなった情報。",
        "comment" : "JP Core Encounterリソースを参照する。"
      },
      {
        "id" : "DiagnosticReport.effective[x]",
        "path" : "DiagnosticReport.effective[x]",
        "short" : "診断レポートの作成日時。【詳細参照】",
        "definition" : "診断レポートの作成日時。",
        "comment" : "DateTimeを採用する。",
        "type" : [
          {
            "code" : "dateTime"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.issued",
        "path" : "DiagnosticReport.issued",
        "short" : "レポート確定日時。【詳細参照】",
        "definition" : "レポート確定日時。",
        "comment" : "StatusがFinalになった日時を指定する。",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.performer",
        "path" : "DiagnosticReport.performer",
        "short" : "内視鏡検査、治療を実施した医師。【詳細参照】",
        "definition" : "内視鏡検査、治療を実施した医師。",
        "comment" : "JP Core Practitionerリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.resultsInterpreter",
        "path" : "DiagnosticReport.resultsInterpreter",
        "short" : "通常、この診断レポートの確定者。【詳細参照】",
        "definition" : "通常、この診断レポートの確定者。",
        "comment" : "通常、JP Core Practitionerリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.specimen",
        "path" : "DiagnosticReport.specimen",
        "short" : "この診断レポートの検体に関する情報。【詳細参照】",
        "definition" : "この診断レポートの検体に関する情報。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "short" : "この診断レポートの一部となる内視鏡検査、治療による観察結果（診断、所見など）の情報。【詳細参照】",
        "definition" : "この診断レポートの一部となる内視鏡検査、治療による観察結果（診断、所見など）の情報。詳細はJP_Observation_Endoscopyの実装ガイドを参照",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Endoscopy"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.imagingStudy",
        "path" : "DiagnosticReport.imagingStudy",
        "short" : "診断レポートに関連づけれられたDICOM画像検査に関する情報。【詳細参照】",
        "definition" : "診断レポートに関連づけれられたDICOM画像検査に関する情報。",
        "comment" : "JP Core ImagingStudy Endoscopyリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ImagingStudy_Endoscopy"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.media",
        "path" : "DiagnosticReport.media",
        "short" : "診断レポートに関連づけられたメディアに関する情報。【詳細参照】",
        "definition" : "診断レポートに関連づけられたメディアに関する情報。",
        "comment" : "主に、レポートに添付されるキー画像を指す。"
      },
      {
        "id" : "DiagnosticReport.media.comment",
        "path" : "DiagnosticReport.media.comment",
        "short" : "メディアに関するコメント。【詳細参照】",
        "definition" : "メディアに関するコメント。",
        "comment" : "内視鏡では省略してよい。"
      },
      {
        "id" : "DiagnosticReport.media.link",
        "path" : "DiagnosticReport.media.link",
        "short" : "メディアの参照先。",
        "definition" : "メディアの参照先。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Media_Endoscopy"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.conclusion",
        "path" : "DiagnosticReport.conclusion",
        "short" : "総合診断に相当する要約結論。【詳細参照】",
        "definition" : "総合診断に相当する要約結論。",
        "comment" : "テキストで可能な限り記載する。",
        "mustSupport" : true
      },
      {
        "id" : "DiagnosticReport.conclusionCode",
        "path" : "DiagnosticReport.conclusionCode",
        "short" : "内視鏡診断レポートの要約結論を表す1つ以上のコード。【詳細参照】",
        "definition" : "内視鏡診断レポートの要約結論を表す1つ以上のコード。",
        "comment" : "JED Project（https://jedproject.jges.net/）が対象とする検査種別については、指定された質的診断コードを使用することを強く推奨する。",
        "mustSupport" : true,
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ConclusionCodesJed_VS"
        }
      },
      {
        "id" : "DiagnosticReport.presentedForm",
        "path" : "DiagnosticReport.presentedForm",
        "short" : "診断レポート本体。【詳細参照】",
        "definition" : "診断レポート本体。",
        "comment" : "診断レポート本体をPDF形式やxml形式などで添付する（フォーマットは不問）。",
        "mustSupport" : true
      }
    ]
  }
}

```
