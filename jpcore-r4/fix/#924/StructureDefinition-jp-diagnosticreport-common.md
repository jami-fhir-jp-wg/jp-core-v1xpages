# JP Core DiagnosticReport Common Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core DiagnosticReport Common Profile**

## Resource Profile: JP Core DiagnosticReport Common Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_DiagnosticReport_Common
* **項目**: *Title*
  * **内容**: JP Core DiagnosticReport Common Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはDiagnosticReportリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。 

## 背景および想定シナリオ

DiagnosticReport（検査レポート）リソースは、患者、患者のグループ、デバイス、場所、および/またはこれらから派生した検体に対する検査結果と解釈について記載されるリソースである。DiagnosticReportリソースに対する主な用途（プロファイル）は以下の通りである。

* 検体検査
* 微生物学検査
* 放射線検査
* 病理検査
* 歯科口腔検査

本プロファイルは、これらプロファイルに共通となる制約、拡張などのプロファイル定義と利用方法等について記述している。

なお、DiagnosticReportリソースは蓄積された結果の表示（例えば過去および現在のレポートの結果一覧の表示）をサポートしていない。連続的に作成された詳細な構造化レポートを完全にサポートすることは現時点ではできておらず、将来のリリースで実現するように計画されている。

また、DiagnosticReportリソースは、FHIRのワークフロー([Workflowを参照](https://www.hl7.org/fhir/R4/workflow.html)）の観点からは、「イベント」リソースの１つである。このリソース（DiagnosticReport）を、[イベントリソース](https://www.hl7.org/fhir/R4/workflow.html#event)のワークフローパターンに合わせることは、OrdersやObservation Workgroupが意図するところである。

## スコープ

多くの診断プロセスは、Observation（検査、観察）とDiagnosticReport（検査レポート）を生成する手続きである点に留意する必要がある。多くの場合、Observationを作成するために明示的に手続きの発行を要しないが、診断手順がどのように実行されたかについての詳細な関心がある場合、[Procedure](https://www.hl7.org/fhir/R4/procedure.html)リソースが行為を記述するために使用される。

[Observation](https://www.hl7.org/fhir/R4/observation.html)リソースとは 対照的に、DiagnosticReportリソースには通常、追加の臨床コンテキスト、いくつかの小さな所見のまとめ、画像、画像レポート、テキストおよびコード化された解釈、テンプレート化された診断報告書などが含まれる。検査レポート、病理レポート、および画像レポートは、DiagnosticReportリソースを使用して表す必要がある。Observationリソースは、特定の検査におけるいくつかの小さな所見のまとめを提供するためにDiagnosticReportから参照される。

高度に構造化されたレポートがある場合は、データとワークフローをサポートするDiagnosticReportを使用する。診断調査のリクエストに関する詳細は、さまざまな「リクエスト」リソース（[ServiceRequestなど](https://www.hl7.org/fhir/R4/servicerequest.html)）に取り込まれ、レポートを臨床ワークフローに接続できるようにする。組織診、剖検などにおいて、少ないワークフローでナラティブに書き起こされるレポートの場合は、[Compositionリソース](https://www.hl7.org/fhir/R4/composition.html)の方が適切である。

レポートに関連する医用画像や汎用画像、およびキー画像は、DiagnosticReportリソースで参照される。詳細でかつ実際の画像インスタンスは、DiagnosticReport.mediaエレメントを使用して検査レポートで直接参照するか、DiagnosticReport.ImagingStudyエレメントを介して、特定の患者のDICOM画像検査またはDICOMインスタンスのセットで生成されたコンテンツを表す[ImagingStudyリソース](https://www.hl7.org/fhir/R4/imagingstudy.html)を間接的に参照することができる。

## プロファイル定義

**Usages:**

* Derived from this Profile: [JP Core DiagnosticReport DentalOral Profile](StructureDefinition-jp-diagnosticreport-dentaloral.md), [JP Core DiagnosticReport Endoscopy Profile](StructureDefinition-jp-diagnosticreport-endoscopy.md), [JP Core DiagnosticReport LabResult Profile](StructureDefinition-jp-diagnosticreport-labresult.md), [JP Core DiagnosticReport Microbiology Profile](StructureDefinition-jp-diagnosticreport-microbiology.md) and [JP Core DiagnosticReport Radiology Profile](StructureDefinition-jp-diagnosticreport-radiology.md)
* Refer to this Profile: [JP Core Condition Profile](StructureDefinition-jp-condition.md), [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md), [JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md), [JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md)...Show 2 more,[JP Core Procedure Profile](StructureDefinition-jp-procedure.md)and[JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-diagnosticreport-common)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-diagnosticreport-common.csv), [Excel](StructureDefinition-jp-diagnosticreport-common.xlsx), [Schematron](StructureDefinition-jp-diagnosticreport-common.sch) 

## 注意事項

### DiagnosticReport.codeについて

codeにはJP Core DiagnosticReport Code Valuesetから各ユースケースに適したコードを選択する。

放射線レポートでは複数のモダリティを用いた放射線学的検査手技に対応するため、画像診断報告書（18748-4）を選択する。 SS-MIX2等からのデータ移行における互換性担保のためにCT検査レポートやIVR検査レポートなど粒度が細かいコードを残してあるが、これらは新規レポート発行の際には利用しないこと。

一方で細菌検査等ではレポート発行時に特定の検査と紐づけることが可能であるため、粒度の細かい適切なコードを選択する必要がある。 詳細については各ユースケースの定義を参照すること。

#### 検索パラメータ

検索パラメータの一覧である。[共通の検索パラメータ](https://hl7.org/fhir/R4/search.html#all)も利用される。

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| MAY | based-on | reference | オーダ情報への参照 | DiagnosticReport.basedOn ([CarePlan](https://www.hl7.org/fhir/R4/careplan.html),[MedicationRequet](StructureDefinition-jp-medicationrequest.md),[NutritionOrder](https://www.hl7.org/fhir/R4/nutritionorder.html),[ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html),[ImuunizationRecommendation](https://www.hl7.org/fhir/R4/immunizationrecommendation.html) |
| MAY | category | token | レポート種別 | DiagnosticReport.category ([ValueSet](https://hl7.org/fhir/R4/valueset-diagnostic-service-sections.html)) |
| MAY | code | token | レポート全体を示すコード | DiagnosticReport.code |
| MAY | conclusion | token | コード化されたレポートの conclusion (interpretation/impression) | DiagnosticReport.conclusionCode |
| MAY | date | date | 診断レポートの対象となる検査・処置が実施された日時 | DiagnosticReport.effectiveDateTime |
| MAY | encounter | reference | オーダが発行された際の Encounter | DiagnosticReport.encounter ([Encounter](StructureDefinition-jp-encounter.md)) |
| SHALL | identifier | token | レポートの identifier（識別子） | DiagnosticReport.identifier |
| SHOULD | issued | date | レポート発行日（確定日） | DiagnosticReport.issued |
| MAY | media | reference | 画像への参照 | DiagnosticReport.media.link ([Media](https://www.hl7.org/fhir/R4/media.html)) |
| SHOULD | patient | reference | レポートの対象患者 | DiagnosticReport.subject.where(resolve() is Patient) ([Patient](StructureDefinition-jp-patient.md)) |
| SHOULD | performer | reference | レポート確定者 | DiagnosticReport.performer ([Practitioner](StructureDefinition-jp-practitioner.md)) |
| MAY | result | reference | 関連する検査結果 (検体検査結果など) | DiagnosticReport.result ([Observation](StructureDefinition-jp-observation-labresult.md)) |
| MAY | results-interpreter | reference | レポートの記述者 | DiagnosticReport.resultsInterpreter ([Practitioner](StructureDefinition-jp-practitioner.md)) |
| MAY | specimen | reference | specimenの詳細 | DiagnosticReport.Specimen ([specimen](https://www.hl7.org/fhir/R4/specimen.html)) |
| SHOULD | status | token | レポートの状態 | DiagnosticReport.status |

#### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、オーダIDなどの識別子によるDiagnosticReportの検索をサポートしなければならない（**SHALL**）

```
GET [base]/DiagnosticReport?identifier={system|}[token]

```

例：

```
GET [base]/DiagnosticReport?identifier=http://myhospital.com/fhir/diagnosticreport-id-system|1234567890

```

指定された識別子に一致するDiagnosticReportリソースを含むBundleを検索する。

## 利用方法


各ユースケースのプロファイルを参照のこと。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-diagnosticreport-common",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common",
  "version" : "1.3.0-dev",
  "name" : "JP_DiagnosticReport_Common",
  "title" : "JP Core DiagnosticReport Common Profile",
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
  "description" : "このプロファイルはDiagnosticReportリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "DiagnosticReport",
        "path" : "DiagnosticReport",
        "short" : "診断レポート-依頼情報、１項目単位の結果、画像、解釈、およびフォーマットされたレポートの組み合わせ【詳細参照】",
        "definition" : "患者、患者のグループ、デバイス、場所、これらから派生した検体に対して実行された診断的検査の結果と解釈。レポートには、依頼情報や依頼者情報などの臨床コンテキスト（文脈）、および１項目単位の結果、画像、テキストとコード化された解釈、および診断レポートのフォーマットされた表現のいくつかの組み合わせが含まれる。",
        "comment" : "これは単一のレポートを格納することを目的としており、複数のレポートを含む要約情報の表示に使用するのには適していない。たとえば、このリソースは、検査結果の累積レポート形式やシーケンスの詳細な構造化レポート用に作られていない。  \n【JP Core仕様】DiagnosticReportリソースの共通プロフィール"
      },
      {
        "id" : "DiagnosticReport.identifier",
        "path" : "DiagnosticReport.identifier",
        "short" : "実行者/実施者または他のシステムによって、この診断レポートに割り当てられた識別子",
        "definition" : "実行者/実施者または他のシステムによって、この診断レポートに割り当てられた識別子",
        "comment" : "通常、診断サービスを実施した施設の情報システム（実施者ID、HL7 v2 の filler ID）によって割り当てられる。",
        "requirements" : "発生源の検査室からこのレポートについてクエリを作成するとき、およびFHIRコンテキスト外のレポートにリンクするときに使用する識別子を知る必要がある。"
      },
      {
        "id" : "DiagnosticReport.basedOn",
        "path" : "DiagnosticReport.basedOn",
        "short" : "元になった検査や診断の依頼に関する情報",
        "definition" : "元になった検査や診断の依頼に関する情報",
        "comment" : "通常、１結果ごとに１つの検査依頼があるが、状況によっては、複数の検査要求に対して１レポートがある場合がある。また１つの検査依頼に対して複数のレポートが作成される場合もあることに注意。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/CarePlan",
              "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection",
              "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
              "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.status",
        "path" : "DiagnosticReport.status",
        "short" : "診断レポートのステータス",
        "definition" : "診断レポートのステータス"
      },
      {
        "id" : "DiagnosticReport.category",
        "path" : "DiagnosticReport.category",
        "short" : "診断レポートを作成した臨床分野、部門、または診断サービス（心臓病学、生化学、血液学、放射線医学など）を分類するコード",
        "definition" : "診断レポートを作成した臨床分野、部門、または診断サービス（心臓病学、生化学、血液学、放射線医学など）を分類するコード",
        "comment" : "これは、検索、並べ替え、および表示の目的で使用される。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DiagnosticReportCategory_VS"
        }
      },
      {
        "id" : "DiagnosticReport.category.coding.system",
        "path" : "DiagnosticReport.category.coding.system",
        "short" : "カテゴリーコードシステムの識別URL",
        "definition" : "カテゴリーコードシステムの識別URL"
      },
      {
        "id" : "DiagnosticReport.category.coding.code",
        "path" : "DiagnosticReport.category.coding.code",
        "short" : "カテゴリーコード",
        "definition" : "カテゴリーコード"
      },
      {
        "id" : "DiagnosticReport.category.coding.display",
        "path" : "DiagnosticReport.category.coding.display",
        "short" : "カテゴリー表示名",
        "definition" : "カテゴリー表示名"
      },
      {
        "id" : "DiagnosticReport.code",
        "path" : "DiagnosticReport.code",
        "short" : "診断レポートを説明するコードまたは名前",
        "definition" : "診断レポートを説明するコードまたは名前",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_DocumentCodes_DiagnosticReport_VS"
        }
      },
      {
        "id" : "DiagnosticReport.subject",
        "path" : "DiagnosticReport.subject",
        "short" : "診断レポートの対象患者に関する情報",
        "definition" : "診断レポートの対象患者に関する情報",
        "comment" : "レポートの対象、通常、Patientリソースへの参照。ただし、他のさまざまなソースから収集された検体を対象とすることもある。参照は内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Group",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.encounter",
        "path" : "DiagnosticReport.encounter",
        "short" : "診断レポートが関係する診療イベントに関する情報",
        "definition" : "診断レポートが関係する診療イベントに関する情報",
        "comment" : "受診、入院、診察など。通常、イベントが発生したEncounterであるが、一部のイベントは、Encounterの正式な完了の前または後に開始される場合があり、その場合でもEncounterのコンテキストに関連付けられている（例：入院前の臨床検査）。",
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
        "id" : "DiagnosticReport.effective[x]",
        "path" : "DiagnosticReport.effective[x]",
        "short" : "診断レポートの対象となる検査・処置が実施された日時",
        "definition" : "診断レポートの対象となる検査・処置が実施された日時",
        "comment" : "診断手順が患者に対して実行された場合、これは実施された時間である。対象が検体である場合は、検体採取時間から診断関連時刻を導き出すことができるが、検体情報が常に入手できるとは限らず、検体と診断関連時刻の正確な関係は必ずしも自明ではない。"
      },
      {
        "id" : "DiagnosticReport.issued",
        "path" : "DiagnosticReport.issued",
        "short" : "このバージョンの診断レポートが医療者に提供/確定された日時",
        "definition" : "このバージョンの診断レポートが医療者に提供/確定された日時",
        "comment" : "通常、レポートがレビューおよび検証・確定された後となる。リソース自体の更新時刻とは異なる場合がある。これは、レポートの実際の提供時刻ではなく、リソース自体の更新時刻はレコード（場合によってはセカンダリコピー）のステータスの更新時刻となるため。"
      },
      {
        "id" : "DiagnosticReport.performer",
        "path" : "DiagnosticReport.performer",
        "short" : "診断レポートの作成発行に責任をもつ診断サービス/担当者に関する情報",
        "definition" : "診断レポートの作成発行に責任をもつ診断サービス/担当者に関する情報",
        "comment" : "必ずしも１項目データ単位のデータソースまたは結果を解釈した主体でなない。臨床レポートに責任をもつ主体のこと。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.resultsInterpreter",
        "path" : "DiagnosticReport.resultsInterpreter",
        "short" : "診断レポートの結論と解釈に責任を持つ医療者/組織に関する情報",
        "definition" : "診断レポートの結論と解釈に責任を持つ医療者/組織に関する情報",
        "comment" : "診断レポートに責任を持つもの(performer)とは異なる場合がある。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam"
            ]
          }
        ]
      },
      {
        "id" : "DiagnosticReport.specimen",
        "path" : "DiagnosticReport.specimen",
        "short" : "診断レポートのもとになった検体に関する情報",
        "definition" : "診断レポートのもとになった検体に関する情報",
        "comment" : "検査結果名称のコードを見れば検体情報が十分に判明するような場合には、この検体情報は冗長になる。複数の検体が関与する場合には、検査や検査グループごとに検体情報が記述されることがある。"
      },
      {
        "id" : "DiagnosticReport.result",
        "path" : "DiagnosticReport.result",
        "short" : "診断レポートの一部となるObservationsに関する情報",
        "definition" : "診断レポートの一部となるObservationsに関する情報",
        "comment" : "Observationsは階層構造を持てる。",
        "requirements" : "個々の結果または結果のグループをサポートする必要がある。結果のグループ化は任意だが、意味がある場合にグループ化される。"
      },
      {
        "id" : "DiagnosticReport.imagingStudy",
        "path" : "DiagnosticReport.imagingStudy",
        "short" : "診断レポートに関連づけれられたDICOM検査画像に関する情報",
        "definition" : "診断レポートに関連づけれられたDICOM検査画像に関する情報",
        "comment" : "診断的精査中に実施された画像検査の詳細情報へのひとつ/複数のリンク。通常は、DICOM対応のモダリティーによって実施される画像検査だが、必須ではない。完全対応のPACSビューワはこの情報を使用して原画像の一覧を提供できる。"
      },
      {
        "id" : "DiagnosticReport.media",
        "path" : "DiagnosticReport.media",
        "short" : "診断レポートに関連づけられたメディアに関する情報",
        "definition" : "診断レポートに関連づけられたメディアに関する情報",
        "comment" : "通常は画像。診断プロセス中に作成され、患者から直接取得されたもの、あるいは調製された検体標本（つまり、関心のあるスライド）のこともある。",
        "requirements" : "多くの診断業務では提供情報の一部としてレポートに画像を含む。"
      },
      {
        "id" : "DiagnosticReport.conclusion",
        "path" : "DiagnosticReport.conclusion",
        "short" : "簡潔かつ臨床的な文脈で表現した診断レポートの要約結論（解釈、インプレッション）",
        "definition" : "簡潔かつ臨床的な文脈で表現した診断レポートの要約結論（解釈、インプレッション）"
      },
      {
        "id" : "DiagnosticReport.conclusionCode",
        "path" : "DiagnosticReport.conclusionCode",
        "short" : "診断レポートの要約結論（解釈、インプレッション）を表すコード",
        "definition" : "診断レポートの要約結論（解釈、インプレッション）を表すコード",
        "comment" : "すべてのターミノロジの使用がこの一般的なパターンに適合するわけではない。場合によっては、独自の構造を提供する必要がある。"
      },
      {
        "id" : "DiagnosticReport.presentedForm",
        "path" : "DiagnosticReport.presentedForm",
        "short" : "診断サービス/担当者によって発行された診断レポート全体のコンテンツ（例えばPDFファイルなど）",
        "definition" : "診断サービス/担当者によって発行された診断レポート全体のコンテンツ（例えばPDFファイルなど）",
        "comment" : "複数のフォーマットが許可されるが、それらは意味的に同等である必要がある。「application / pdf」がこのコンテキストで最も信頼でき相互運用可能なものとして推奨される。"
      }
    ]
  }
}

```
