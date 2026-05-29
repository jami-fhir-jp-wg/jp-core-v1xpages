# JP Core DiagnosticReport LabResult Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DiagnosticReport LabResult Profile**

## Resource Profile: JP Core DiagnosticReport LabResult Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_LabResult
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DiagnosticReport_LabResult
* **項目**: *Title*
  * **内容**: JP Core DiagnosticReport LabResult Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはDiagnosticReportリソースに対して、検体検査結果のデータを送受信するための制約と拡張を定めたものである。 

本プロファイルは、患者に関連付けられた検査結果を記録、検索、および取得するためのDiagnosticReportリソースを使用するにあたっての、最低限の制約を記述したものである。また本プロファイルを使用するときに、どの要素、拡張機能、語彙、および値セットがリソースに存在する必要があるかを示す。

検体検査結果は、通常はObservationリソースを参照するDiagnosticReportリソースを使用してグループ化および要約されたものである。

各Observationリソースは、個々の検体検査と結果値またはコンポーネントの結果値を表す。 また、レポート形式またはフリーテキストで表示することもできる。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 患者に属する検体検査レポートの参照

## スコープ

多くの診断プロセスは、観察（Observation）と診断レポート（DiagnosticReport）を生成する手続きである点に留意する必要がある。

[Observationリソース](http://www.hl7.org/fhir/R4/observation.html)とは 対照的に、DiagnosticReportリソースには通常、いくつかの所見、画像、画像レポート、テキストおよびコード化された解釈、テンプレート化された報告書などが含まれる。検体検査レポートは、DiagnosticReportリソースを使用して表す必要がある。Observationリソースは、特定の調査のいくつかの小さな所見のまとめを提供するためにDiagnosticReportから参照される。

## プロファイル定義

**Usages:**

* Examples for this Profile: [DiagnosticReport/jp-diagnosticreport-labresult-example-1](DiagnosticReport-jp-diagnosticreport-labresult-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-diagnosticreport-labresult)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-diagnosticreport-labresult.csv), [Excel](StructureDefinition-jp-diagnosticreport-labresult.xlsx), [Schematron](StructureDefinition-jp-diagnosticreport-labresult.sch) 

### 必須要素

DiagnosticReportリソースは、次の要素を持たなければならない。

* status：検体検査情報項目の状態は必須である
* category : レポートを作成した臨床分野、部門、または診断サービスを分類するコード。LP29693-6 "検体検査" 固定
* code：何の検体検査情報項目であるかを示すため必須である

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/DiagnosticReport?identifier=http://myhospital.com/fhir/diagnosticreport-id-system|1234567890 |
| SHOULD | patient,category | reference | GET [base]/DiagnosticReport?patient=123&category=http://loinc.org|LP29693-6 |
| SHOULD | patient,category,based-on | reference,reference | GET [base]/DiagnosticReport?patient=123&category=http://loinc.org|LP29693-6&based-on=ServiceRequest/456 |
| SHOULD | patient,category,date | reference,date | GET [base]/Observation?patient=123&category=http://loinc.org|LP29693-6&date=le2020-12-31 |

##### 必須検索パラメータ

1. identifier 検索パラメータを使用して、オーダIDなどの識別子によるDiagnosticReportの検索をサポートしなければならない（**SHALL**）

```
GET [base]/DiagnosticReport?identifier={system|}[token]

```

例：

```
GET [base]/DiagnosticReport?identifier=http://myhospital.com/fhir/diagnosticreport-id-system|1234567890

```

指定された識別子に一致するDiagnosticReportリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータはサポートすることが推奨される。（**SHOULD**）

1. 臨床での検索：subject = Patient（対象患者）、category(対象レポートカテゴリ)を指定した検索をサポートすることが望ましい。（**SHOULD**）
patient,categoryの各検索パラメータに一致するObservationリソースを含むBundleを取得することができる。

```
GET [base]/DiagnosticReport?patient={reference}&category={token}

```

例：

```
GET [base]/DiagnosticReport?patient=123&http://loinc.org|LP29693-6

```


1. 臨床での検索：subject = Patient（対象患者）、category(対象レポートカテゴリ)、based-on (検査オーダの依頼科)を指定した検索をサポートすることが望ましい。（**SHOULD**）
patient,category,based-onの各検索パラメータに一致するObservationリソースを含むBundleを取得することができる。

```
GET [base]/DiagnosticReport?patient={reference}&category={token}&based-on={reference}

```

例：

```
GET [base]/DiagnosticReport?patient=123&category=http://loinc.org|LP29693-6&based-on=ServiceRequest/456

```


1. 臨床での検索：subject = Patient（対象患者）、category(対象レポートカテゴリ)、date(レポート作成日)を指定した検索をサポートすることが望ましい。（**SHOULD**）
patient,category,dateの各検索パラメータに一致するObservationリソースを含むBundleを取得することができる。

```
GET [base]/DiagnosticReport?patient={reference}&category={token}&date={date}

```

例：

```
GET [base]/DiagnosticReport?patient=123&category=http://loinc.org|LP29693-6&date=2021-11-08

```


##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

### サンプル

* [**検体検査レポート（血液）**](DiagnosticReport-jp-diagnosticreport-labresult-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-diagnosticreport-labresult",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_LabResult",
  "version" : "1.3.0-dev",
  "name" : "JP_DiagnosticReport_LabResult",
  "title" : "JP Core DiagnosticReport LabResult Profile",
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
  "description" : "このプロファイルはDiagnosticReportリソースに対して、検体検査結果のデータを送受信するための制約と拡張を定めたものである。",
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
        "short" : "診断レポート-依頼情報、１項目単位の結果、画像、解釈、およびフォーマットされたレポートの組み合わせ　【JP Core仕様】検体検査結果レポートのプロフィール",
        "definition" : "患者、患者のグループ、デバイス、場所、これらから派生した検体に対して実行された診断的検査の結果と解釈。レポートには、依頼情報や依頼者情報などの臨床コンテキスト（文脈）、および１項目単位の結果、画像、テキストとコード化された解釈、および診断レポートのフォーマットされた表現のいくつかの組み合わせが含まれる。  \n【JP Core仕様】検体検査結果レポートのプロフィール"
      },
      {
        "id" : "DiagnosticReport.identifier",
        "path" : "DiagnosticReport.identifier",
        "short" : "レポートを識別するビジネス識別子",
        "definition" : "実施者または他のシステムによってこのレポートに割り当てられた識別子。",
        "comment" : "発生源の検査室からこのレポートについてクエリを作成するとき、およびFHIRコンテキスト外のレポートにリンクするときに使用する識別子を知る必要がある。  \n【JP Core仕様】レポートをユニークに識別する識別子。依頼者オーダ番号と関連付ける場合が多い。  \n検体検査の特性として、複数の容器の結果を含む。容器ごと（厳密には項目ごと）に結果のタイミングは異なる場合がある。"
      },
      {
        "id" : "DiagnosticReport.basedOn",
        "path" : "DiagnosticReport.basedOn",
        "comment" : "通常、１結果ごとに１つの検査依頼があるが、状況によっては、複数の検査要求に対して１レポートがある場合がある。また 1つの検査依頼に対して複数のレポートが作成される場合もあることに注意。  \n【JP Core仕様】ServiceRequestリソースを参照(ObservationLabResultと同様）"
      },
      {
        "id" : "DiagnosticReport.status",
        "path" : "DiagnosticReport.status",
        "definition" : "診断レポートのステータス。",
        "comment" : "有れば：ORC-5  \nもしくは  \n無ければ：OBR-25(\"F\")のAND結果  \n　例：全部\"F\"なら\"F\"、それ以外の場合は要検討  \n設定する値は、DiagnosticReportStatus（コード）から1つ選ぶ  \nコード体系：HL7 Table 0038のコードと定義"
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
          "rules" : "open"
        },
        "short" : "診断レポートを作成した臨床分野、部門、または診断サービスを分類するコード。検体査では、LoincコードのLP29693-6 検体検査/LAB を使用する。",
        "definition" : "診断レポートを作成した臨床分野、部門、または診断サービスを分類するコード。検体査では、LoincコードのLP29693-6 検体検査/LAB を使用する。",
        "min" : 1
      },
      {
        "id" : "DiagnosticReport.category:first",
        "path" : "DiagnosticReport.category",
        "sliceName" : "first",
        "comment" : "【JP Core仕様】レポートカテゴリーとして、LoincコードのLP29693-6(検体検査/LAB)を使用する。",
        "min" : 1,
        "max" : "1",
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
        "fixedCode" : "LP29693-6"
      },
      {
        "id" : "DiagnosticReport.code.coding",
        "path" : "DiagnosticReport.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "DiagnosticReport.code.coding:laboratoryCode",
        "path" : "DiagnosticReport.code.coding",
        "sliceName" : "laboratoryCode",
        "short" : "検体検査レポート項目コード。本ユースケースにおける項目コード推奨値をスライスにて示している【詳細参照】",
        "definition" : "検体検査レポート項目コード。本ユースケースにおける項目コード推奨値をスライスにて示している。",
        "comment" : "推奨コードは必須ではない、派生先によるコード体系を作成し割り振ることを否定しない",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "DiagnosticReport.code.coding:laboratoryCode.system",
        "path" : "DiagnosticReport.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_DocumentCodes_CS"
      },
      {
        "id" : "DiagnosticReport.code.coding:laboratoryCode.code",
        "path" : "DiagnosticReport.code.coding.code",
        "min" : 1,
        "fixedCode" : "11502-2"
      },
      {
        "id" : "DiagnosticReport.code.coding:laboratoryCode.display",
        "path" : "DiagnosticReport.code.coding.display",
        "patternString" : "検体検査報告書"
      },
      {
        "id" : "DiagnosticReport.subject",
        "path" : "DiagnosticReport.subject",
        "short" : "レポートの対象、常にではないが、通常は患者",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n【JP Core仕様】Patientリソースを参照",
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
        "comment" : "【JP Core仕様】入院外来の区別や所在場所、担当診療科の情報に使用する。  \n※このプロファイルの用途では通常は必須と考えられるが、ユースケースにより使用されない場合を考慮し、1..1に制約しない。"
      },
      {
        "id" : "DiagnosticReport.effective[x]",
        "path" : "DiagnosticReport.effective[x]",
        "comment" : "診断手順が患者に対して実行された場合、これは実施された時刻。対象が検体である場合は、検体採取時間から診断関連時刻を導き出すことができるが、検体情報が常に入手できるとは限らず、検体と診断関連時刻の正確な関係は必ずしも自明ではない。  \n【JP Core仕様】検体採取時間"
      },
      {
        "id" : "DiagnosticReport.issued",
        "path" : "DiagnosticReport.issued",
        "comment" : "リソース自体の更新時刻とは異なる場合がある。これは、レポートの実際の提供時刻ではなく、リソース自体の更新時刻はレコード（場合によってはセカンダリコピー）のステータスの更新時刻となるため。  \n【JP Core仕様】このデータが出来た時間"
      },
      {
        "id" : "DiagnosticReport.performer",
        "path" : "DiagnosticReport.performer",
        "comment" : "必ずしも１項目データ単位のデータソースまたは結果を解釈した主体でなない。臨床レポートに責任をもつ主体のこと。  \n【JP Core仕様】検査に関わった人もしくは組織"
      },
      {
        "id" : "DiagnosticReport.resultsInterpreter",
        "path" : "DiagnosticReport.resultsInterpreter",
        "comment" : "レポートに責任を持つ主体とは異なる場合がある。  \n【JP Core仕様】検査責任者"
      },
      {
        "id" : "DiagnosticReport.specimen",
        "path" : "DiagnosticReport.specimen",
        "comment" : "検査結果名称のコードを見れば検体情報が十分に判明するような場合には、この検体情報は冗長になる。複数の検体が関与する場合には、検査や検査グループごとに検体情報が記述されることがある。  \n【JP Core仕様】該当するspecimenを設定"
      },
      {
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "definition" : "診断レポートの一部",
        "comment" : "Observationはobservationを含みうる。  \n【JP Core仕様】該当するObservationを設定",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_LabResult"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.imagingStudy",
        "path" : "DiagnosticReport.imagingStudy",
        "comment" : "ImagingStudyと画像要素は多少重複する。通常、画像要素内の画像参照のリストは、画像検査リソースのひとつにも存在する。ただし、それぞれがさまざまなタイプの目的のためにさまざまなタイプのディスプレイに対応している。どちらも、どちらか、または両方を提供することはできない。  \n【JP Core仕様】使わない"
      },
      {
        "id" : "DiagnosticReport.media",
        "path" : "DiagnosticReport.media",
        "comment" : "【JP Core仕様】レポート1つに対して、複数の画像・コメントがぶら下がる"
      },
      {
        "id" : "DiagnosticReport.media.comment",
        "path" : "DiagnosticReport.media.comment",
        "comment" : "【JP Core仕様】画像に対するコメント"
      },
      {
        "id" : "DiagnosticReport.media.link",
        "path" : "DiagnosticReport.media.link",
        "comment" : "【JP Core仕様】画像に対するリンク"
      },
      {
        "id" : "DiagnosticReport.conclusion",
        "path" : "DiagnosticReport.conclusion",
        "definition" : "診断レポートの簡潔で臨床的に文脈化された要約結論（解釈/印象）。",
        "comment" : "【JP Core仕様】原則使わない"
      },
      {
        "id" : "DiagnosticReport.conclusionCode",
        "path" : "DiagnosticReport.conclusionCode",
        "comment" : "【JP Core仕様】原則使わない"
      },
      {
        "id" : "DiagnosticReport.presentedForm",
        "path" : "DiagnosticReport.presentedForm",
        "comment" : "application/pdfがこのコンテキストで最も信頼でき相互運用可能なものとして推奨される。  \n【JP Core仕様】原則使わない"
      }
    ]
  }
}

```
