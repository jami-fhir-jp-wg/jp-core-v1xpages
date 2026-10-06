# JP Core DiagnosticReport Microbiology Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DiagnosticReport Microbiology Profile**

## Resource Profile: JP Core DiagnosticReport Microbiology Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Microbiology
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DiagnosticReport_Microbiology
* **項目**: *Title*
  * **内容**: JP Core DiagnosticReport Microbiology Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはDiagnosticReportリソースに対して、データを送受信するための微生物学検査レポートの制約と拡張を定めたものである。 

本プロファイルは、患者に関連付けられた微生物学的検査（一般細菌検査及び抗酸菌検査）の結果を記録、検索、および取得するためのDiagnosticReportリソースを使用するにあたっての、最低限の制約を記述したものである。またこのプロファイルを使用するときに、どの要素、拡張機能、語彙、および値セットがリソースに存在する必要があるかを示す。

微生物学的検査結果は、通常はObservationリソースを参照するDiagnosticReportリソースを使用してグループ化および要約されたものである。
 各Observationリソースは、個々の微生物学的検査と結果値またはコンポーネントの結果、または他のObservationを参照するネストするためのパネル（微生物感受性パネルなど）を表す。 また、レポート形式またはフリーテキストで表示することもできる。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 通常の診療業務として施設内で発生する検査オーダを元に実施される微生物学的検査の結果報告の参照（患者単位）
* 院内の感染対策として特定の病原体感染（例：MRSA、ESBL産生菌等のような多剤耐性菌）の発生状況に関するサーベイランス（感染対策チームなどによる患者横断的な探索）
* 厚生労働省の院内感染対策サーベイランス（JANIS）のような公的機関による公衆衛生上の調査（施設横断的な調査）

## スコープ

微生物学的検査を構成する一般細菌検査及び抗酸菌検査は複数の検査方法（塗抹鏡検、培養同定、感受性検査、分子生物学的検査、免疫学的検査など）で構成され、対象とする微生物の種類や検査目的などによって使用する検査方法の組み合わせが違ってくる。これらの検査方法のうちで培養同定は検査を開始してから最終の詳細結果が出るまでに一般細菌検査で数日、抗酸菌検査では数週間を要し、その間に段階的に判明する検査結果が数回に渡って報告され、内容が徐々に詳細になっていくという特徴がある。また、感受性検査は培養同定の結果に応じて実施され、培養同定された菌ごとに結果が報告される。

また、院内感染対策の観点から検査結果次第で当該患者に接する医療従事者への緊急の連絡あるいは結果の強調表示を要する検査が存在する（抗酸菌の塗抹鏡検結果、一般細菌の感受性結果など）。

微生物学的検査レポートで取り扱う結果報告書は、検査の診断結果として提供される一連の情報を組み合わせたものであるが、上記のような性質のため、時間経過とともに情報がより詳細かつより豊富に変化するという特徴を持つ。この情報には細菌または抗酸菌の種類とその量（定性値あるいは定量値）の情報、感受性を調べた薬剤の種類、感受性の有無を判定するための情報（最小発育阻止濃度）、それに基づいた感受性判定結果などが含まれ、情報の種別としてはテキスト、数値、コードなどが含まれる。画像情報は通常は返されないが、塗抹鏡検の写真をレポートに含める医療機関や検査会社があるかもしれない（未確認）。これらの情報の組み合わせは検査種別や報告のタイミング（検査の進捗状況）に応じて変化する。

現バージョンの本プロファイルでは原虫及びウイルスについては対象として想定していないが、診療報酬点数表に於いては「細菌培養同定検査は、抗酸菌を除く一般細菌、真菌、原虫等を対象として培養を行い、同定検査を行うことを原則とする。」と記載されており、原虫についても細菌検査の対象に含めることが必要になるケースがあり得ると考えられる。

## 本プロファイルの成熟度

本プロファイルは、Trial Useとして公開する。 微生物培養検査の結果を示すDiagnosticReportはFHIR R4でも複数の例が提示され、R5ではさらに異なる構造が例示されていることからも分かるように、複雑な構造を有している。
 JP CoreではR4における[Micro Isolate and Sensitivities-1](https://hl7.org/fhir/R4/diagnosticreport-examples.html#10.3.7.1.1)をベースにプロファイルを作成したが、ユースケースによってはうまく整合しない場合がある可能性を否めない。
 もし問題があった場合は、どのような問題が生じたか[報告](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)をお願いしたい。v1.2ではそれらの意見を統合した上で再検討する予定である。

## プロファイル定義

**Usages:**

* Examples for this Profile: [DiagnosticReport/jp-diagnosticreport-microbiology-example-1](DiagnosticReport-jp-diagnosticreport-microbiology-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-diagnosticreport-microbiology)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-diagnosticreport-microbiology.csv), [Excel](StructureDefinition-jp-diagnosticreport-microbiology.xlsx), [Schematron](StructureDefinition-jp-diagnosticreport-microbiology.sch) 

### 必須要素

本プロファイルでは、次の要素を持たなければならない。

* status : 診断レポートのステータスは必須である。http://hl7.org/fhir/R4/diagnostic-report-status よりひとつを選択する。final：完成レポート、cancelled：取り消しレポート、partial：部分作成レポート（不完全）など。
* category : レポートを作成した臨床分野、部門、または診断サービスを分類するコード。LP7819-8 "微生物検査" 固定、必須。
* code : レポート種別コード。system："http://jpfhir.jp/fhir/core/CodeSystem/JP_DocumentCodes_CS" code: "18725-2" display: "微生物学的検査報告書" 固定、必須。

### Extensions定義

本プロファイルで追加定義された拡張はない。

### 制約一覧

本プロファイルでは、以下の制約を満たさなければならない。

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| 1 | Warning | DiagnosticReport.result.reference | 微生物検査の場合（categoryが'Microbiology'）.referenceが存在する必要がある。 | DiagnosticReport.category.code='MB' implies DiagnosticReport.result.reference.exists() |

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

微生物学的検査結果ユースケースのSearch Parameter一覧は共通情報プロファイルとは異なり以下の通りである。

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| SHALL | identifier | token | レポートに割り当てられた識別子 | DiagnosticReport.identifier | GET [base]/DiagnosticReport?identifier=http://myhospital.com/fhir/diagnosticreport-id-system|1234567890 |
| MAY | based-on | reference | オーダ情報への参照 | DiagnosticReport.basedOn ([ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html)) | GET [base]/DiagnosticReport?based-on=ServiceRequest/12345 |
| SHOULD | category | token | レポート種別 | DiagnosticReport.category ([JP Core DiagnosticReport Category ValueSet][JP_DiagnosticReportCategory_VS]) (デフォルト：[LP7819-8](https://loinc.org/LP7819-8/)) | GET [base]/DiagnosticReport?category=LP7819-8 |
| SHOULD | date | date | レポート作成日 | DiagnosticReport.effectiveDate | GET [base]/DiagnosticReport?date=le2020-12-31 |
| SHOULD | patient | reference | レポートの対象患者 | DiagnosticReport.subject.where(resolve() is Patient) ([Patient](StructureDefinition-jp-patient.md)) | GET [base]/DiagnosticReport?patient=123 |

### サンプル

* [**一般細菌検査レポート**](DiagnosticReport-jp-diagnosticreport-microbiology-example-1.md)

## 注意事項

### 微生物検査結果 培養・同定と感受性のネスト構造

次のDiagnosticReportリソースの例は、関連するObservationを使用して、1レベルと2レベルのネストされた菌および感受性パネルを備えた培養・同定結果と感受性結果の例を示す。

![](observation_microbiology_structure.png)

## その他、参考文献・リンク等

1. 厚生労働省院内感染対策サーベイランス事業[(https://janis.mhlw.go.jp/)](https://janis.mhlw.go.jp/)
1. FHIR BaseのDiagnosticReportサンプル(Micro Isolate and Sensitivities)[DiagnosticReport-Examples#Micro Isolate and Sensitivities](https://hl7.org/fhir/R4/diagnosticreport-examples.html#10.3.7.1.1)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-diagnosticreport-microbiology",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Microbiology",
  "version" : "1.3.0-dev",
  "name" : "JP_DiagnosticReport_Microbiology",
  "title" : "JP Core DiagnosticReport Microbiology Profile",
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
  "description" : "このプロファイルはDiagnosticReportリソースに対して、データを送受信するための微生物学検査レポートの制約と拡張を定めたものである。",
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
        "short" : "診断レポート-依頼情報、１項目単位の結果、画像、解釈、およびフォーマットされたレポートの組み合わせ。【詳細参照】"
      },
      {
        "id" : "DiagnosticReport.identifier",
        "path" : "DiagnosticReport.identifier",
        "short" : "実行者/実施者または他のシステムによってこのレポートに割り当てられた識別子",
        "definition" : "実行者/実施者または他のシステムによってこのレポートに割り当てられた識別子"
      },
      {
        "id" : "DiagnosticReport.basedOn",
        "path" : "DiagnosticReport.basedOn",
        "short" : "依頼されたサービス（検査や診断など）に関する詳細情報",
        "definition" : "依頼されたサービス（検査や診断など）に関する詳細情報",
        "comment" : "通常、１結果ごとに１つの検査依頼があるが、状況によっては、複数の検査要求に対して１レポートがある場合がある。また 1つの検査依頼に対して複数のレポートが作成される場合もあることに注意。"
      },
      {
        "id" : "DiagnosticReport.category",
        "path" : "DiagnosticReport.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "short" : "診断レポートを作成した臨床分野、部門、または診断サービスを分類するコード。微生物検査では、LoincコードのLP7819-8 微生物検査/MICRO を使用する。",
        "definition" : "診断レポートを作成した臨床分野、部門、または診断サービスを分類するコード。微生物検査では、LoincコードのLP7819-8 微生物検査/MICRO を使用する。",
        "min" : 1
      },
      {
        "id" : "DiagnosticReport.category:first",
        "path" : "DiagnosticReport.category",
        "sliceName" : "first",
        "comment" : "【JP Core仕様】レポートカテゴリーとして、LoincコードのLP7819-8 (微生物検査/MICRO)を使用する。",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DiagnosticReportCategory_VS"
        }
      },
      {
        "id" : "DiagnosticReport.category:first.coding.code",
        "path" : "DiagnosticReport.category.coding.code",
        "min" : 1,
        "patternCode" : "LP7819-8"
      },
      {
        "id" : "DiagnosticReport.code",
        "path" : "DiagnosticReport.code",
        "short" : "診断レポート種別「微生物学的検査報告書」を表す文書コード",
        "definition" : "診断レポート種別「微生物学的検査報告書」を表す文書コード",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DocumentCodes_CS",
              "code" : "18725-2",
              "display" : "微生物学的検査報告書"
            }
          ]
        }
      },
      {
        "id" : "DiagnosticReport.encounter",
        "path" : "DiagnosticReport.encounter",
        "short" : "直近の細菌検査に直結するEncounterリソースを参照",
        "definition" : "直近の細菌検査に直結するEncounterリソースを参照"
      },
      {
        "id" : "DiagnosticReport.effective[x]",
        "path" : "DiagnosticReport.effective[x]",
        "short" : "検体採取日時（effectivePeriod は未使用）",
        "definition" : "検体採取日時（effectivePeriod は未使用）",
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "DiagnosticReport.issued",
        "path" : "DiagnosticReport.issued",
        "short" : "最新のレポート確定日",
        "definition" : "このバージョンの診断レポートが医療者に提供/確定された日時。"
      },
      {
        "id" : "DiagnosticReport.performer",
        "path" : "DiagnosticReport.performer",
        "short" : "診断レポートの作成発行に責任をもつ診断サービス/担当者に関する情報、原則未使用とする",
        "definition" : "診断レポートの作成発行に責任をもつ診断サービス/担当者に関する情報、原則未使用とする"
      },
      {
        "id" : "DiagnosticReport.resultsInterpreter",
        "path" : "DiagnosticReport.resultsInterpreter",
        "short" : "検査責任者（外部検査会社への委託の場合には組織名を指定することもある）",
        "definition" : "検査責任者（外部検査会社への委託の場合には組織名を指定することもある）"
      },
      {
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "short" : "該当するObservationを設定する",
        "definition" : "該当するObservationを設定する",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Microbiology"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.imagingStudy",
        "path" : "DiagnosticReport.imagingStudy",
        "short" : "診断レポートに関連づけれられたDICOM検査画像に関する情報、原則未使用",
        "definition" : "診断レポートに関連づけれられたDICOM検査画像に関する情報、原則未使用"
      },
      {
        "id" : "DiagnosticReport.conclusion",
        "path" : "DiagnosticReport.conclusion",
        "short" : "簡潔かつ臨床的な文脈で表現した診断レポートの要約結論（解釈、インプレッション）、 原則未使用であるがコメントを記載してもよい",
        "definition" : "簡潔かつ臨床的な文脈で表現した診断レポートの要約結論（解釈、インプレッション）、 原則未使用であるがコメントを記載してもよい"
      },
      {
        "id" : "DiagnosticReport.conclusionCode",
        "path" : "DiagnosticReport.conclusionCode",
        "short" : "診断レポートの要約結論（解釈、インプレッション）を表すコード、原則未使用",
        "definition" : "診断レポートの要約結論（解釈、インプレッション）を表すコード、原則未使用"
      },
      {
        "id" : "DiagnosticReport.presentedForm",
        "path" : "DiagnosticReport.presentedForm",
        "short" : "診断サービス/担当者によって発行された診断レポート全体のコンテンツ（例えばPDFファイルなど）、原則未使用",
        "definition" : "診断サービス/担当者によって発行された診断レポート全体のコンテンツ（例えばPDFファイルなど）、原則未使用"
      }
    ]
  }
}

```
