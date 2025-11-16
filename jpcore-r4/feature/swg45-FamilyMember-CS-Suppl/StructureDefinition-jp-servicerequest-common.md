# JP Core ServiceRequest Common Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Common Profile**

## Resource Profile: JP Core ServiceRequest Common Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ServiceRequest_Common
* **項目**: *Title*
  * **内容**: JP Core ServiceRequest Common Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
本プロファイル説明は、患者に対し立案・実施されるリクエストの記録で、行為や診断、もしくは他のサービスのために用いられるFHIR ServiceRequestリソースを使用するにあたっての、最低限の制約を記述したものである。 

## スコープ

このServiceRequestリソースはFHIRにおけるワークフロー管理を構成するリソース群（Request, Event, Definition）のRequestに相当する。 － [WorkFlow](http://hl7.org/fhir/R4/workflow.html)を参照のこと。

ServiceRequestリソースは患者に対し立案・実施されるリクエストの記録で、処置や診断、もしくは他のサービス（その内容はServiceRequest.intentエレメントの値によって区別される）に関するものを示す。処置・行為は、[Procedure](StructureDefinition-jp-procedure.md)リソースまたは[DiagnosticReport](StructureDefinition-jp-diagnosticreport-common.md)リソースを導出し、次いで通常は１つ以上のDiagnostic Medicine Module（例：[Observation](StructureDefinition-jp-observation-common.md)リソース）を参照する。参照されるObservationリソースは手順の実行状況や対象患者の治療・管理に関連する観察、 画像、所見などに関連する文書を要約したものになる。また、このリソースは、患者が他の医療機関に転院あるいは紹介される場合の情報共有にも使われる。具体的には、診察やセカンドオピニオンを受けたい場合や、健康上の問題の短期的な管理や長期的な治療を必要とする場合の情報共有に使われることがある。

* 診断検査
* 内視鏡検査
* カウンセリング
* 生検
* 治療（例：理学療法、社会療法、精神療法）
* 手術や処置
* 運動
* 専門医へのコンサルト
* 専門医のアセスメント
* 地域のサービス
* 看護サービス
* 薬剤師の内服管理
* 他の臨床的介入

処置は医療従事者だけでなく、友人、親戚、場合によっては患者自身で実施される。

ServiceRequestリソースの主な目的は、ある患者（獣医学の患畜も含まれる）の処置のオーダリングのサポートである。しかし、ヘルスケア関連の業務には、被験者のグループや医療機器、さらには建物内部の配管や水の集まる場所などの環境に対する診断調査なども含まれ、ServiceRequestリソースはこれらのユースケースのすべてをサポートする点を認識する必要がある。サービスリクエストは、医師等によってオーダリングシステム（CPOEシステム）に入力されたオーダと同様に、患者の臨床記録やケアの記録に基づいて作成された臨床判断支援システム（CDSシステム） による提案も表現する。[CarePlan](http://hl7.org/fhir/R4/careplan.html)リソースで参照される計画された処置を表す場合にもこのリソースによって表現される。

このリソースが用いられる一般的なワークフローは、臨床システムでのサービスリクエストの作成である。サービスリクエストは、処置を実施する部門（例えば手術部門、生理機能検査部門、臨床検査部門、画像診断検査部門、理学療法部門など）のシステム（エージェントなど）からアクセスされたり、交換される。サービスリクエストを受けた部門はリクエストを受諾した後、処置を実施し、実施されたリクエストを参照するレポートを発行する。

ServiceRequestリソースが要求できる処置は1つに限定される。ワークフローが複数の処置を同時に要求した場合は、複数のServiceRequestインスタンスが作成される。これらのインスタンスはワークフローの要求により異なった方法でリンクされる。詳しくは、[Request pattern](http://hl7.org/fhir/R4/request.html)を参照のこと。

## 関連するリソースとの関係性

ServiceRequestリソースは実施されるサービスの立案、オーダの記録であり、結果として、[Procedure](StructureDefinition-jp-procedure.md)、[Observation](StructureDefinition-jp-observation-common.md)、[DiagnosticReport](StructureDefinition-jp-diagnosticreport-common.md)、[ImagingStudy](StructureDefinition-jp-imagingstudy-radiology.md)など、関連するリソースが作られる。ServiceRequestリソースと対照的に、[Task](http://hl7.org/fhir/R4/task.html)リソースは計画から結果までを網羅し、完了するまでの実施状況を追跡する。つまり、レコードに対して実行するタスクのリクエストや追跡、または実施過程の一部として施行すべき手順のチェックリストに対する追跡など、「管理的」なアクションを目的とする。ServiceRequestリソースは、Taskリソースを作成する上位のトリガーでもあり、Taskリソースが達成しようとしているRequestリソースにもなる。

ServiceRequestリソースは[CommunicationRequest](http://hl7.org/fhir/R4/communicationrequest.html)リソースとも関連する。CommunicationRequestリソースは単に情報を開示するRequestリソースである。一方で、ServiceRequestリソースは、トレーニングやカウンセリングの一環として情報を要求する場合に使われ、例えば、患者の理解度を確認したり、患者の精神状態を変化させようとするために使われる。あるワークフローでは両方のリソースが存在する。例えば、CommunicationRequestを受けて、医師はServiceRequestをオーダするかもしれない。

## リファレンス

このリソースは [Appointment](http://hl7.org/fhir/R4/appointment.html#Appointment), [BiologicallyDerivedProduct](http://hl7.org/fhir/R4/biologicallyderivedproduct.html#BiologicallyDerivedProduct), [CarePlan](http://hl7.org/fhir/R4/careplan.html#CarePlan), [Claim](http://hl7.org/fhir/R4/claim.html#Claim), [DeviceUseStatement](http://hl7.org/fhir/R4/deviceusestatement.html#DeviceUseStatement), [DiagnosticReport](StructureDefinition-jp-diagnosticreport-common.md), [Encounter](StructureDefinition-jp-encounter.md), [EpisodeOfCare](http://hl7.org/fhir/R4/episodeofcare.html#EpisodeOfCare), [ExplanationOfBenefit](http://hl7.org/fhir/R4/explanationofbenefit.html#ExplanationOfBenefit),[Goal](http://hl7.org/fhir/R4/goal.html#Goal), [ImagingStudy](StructureDefinition-jp-imagingstudy-radiology.md), [Media](http://hl7.org/fhir/R4/media.html#Media), [MedicationRequest](https://jami-fhir-jp-wg.github.io/jp-core-v1xpages/jpcore-r4/feature/swg2_servicerequest/StructureDefinition-jp-medicationrequest.html), [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html#MedicationStatement), [Observation](StructureDefinition-jp-observation-common.md), [Procedure](StructureDefinition-jp-procedure.md), [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html#QuestionnaireResponse), [Specimen](http://hl7.org/fhir/R4/specimen.html#Specimen)などのリソースとServiceRequest自身から参照される。

このリソースは[Request](http://hl7.org/fhir/R4/request.html#Request)パターンを実装する。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md), [JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md) and [JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-servicerequest-common)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-servicerequest-common.csv), [Excel](StructureDefinition-jp-servicerequest-common.xlsx), [Schematron](StructureDefinition-jp-servicerequest-common.sch) 

## 制約

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| prr-1 | Rule | (base) | code要素がある時にだけ、orderDetail要素は存在 | orderDetail.empty() or code.exists |

## 補遺

* 多くのサービスリクエストは検体、体の部位やシステムを指定する必要がある。しかし、血清グルコース、胸部Ｘ線写真などでは、これらの情報はcode要素に組み込まれている。また、specimen要素やbodysite要素もこれらを指定するために使われる。
* 既にある検体へ検査をオーダする場合にだけ、ServiceRequestリソースはSpecimenリソースを参照する。逆に、未採集の検体と一緒にサービスリクエストが最初に作成された時は、SpecimenリソースはServiceRequestリソースを参照する。
* reasonCode要素は多くの場合、保険請求を目的としている。また、reasonCode要素はsupportingInfo要素で言及されたリソースに関連し、処置や診断調査がどのように行われるか、あるいは全く行われないかどうかを決定するために使用される。
* doNotPerformエレメントに値がない時は、正のリクエストとなる。つまり「実施せよ」という意味になる。
* ServiceRequestはWorkflowモジュールの1つであり、その相互運用は高度なFHIRアクティビティであり、各リソースの高度な標準化が前提とされる。そのため、本バージョンでは日本語訳のみとし、参考情報として作成している。
* また、R5では下記の変更点がある。

| | |
| :--- | :--- |
| ServiceRequest.code | CodeableConceptから、CodeableReferenceへ型が変更 |
| ServiceRequest.orderDetail | CodeableConceptから、BackboneElementへ型が変更 |
| ServiceRequest.orderDetail.parameterFocus | 追加 |
| ServiceRequest.orderDetail.parameter | 必須の要素として追加 |
| ServiceRequest.orderDetail.parameter.code | 必須の要素として追加 |
| ServiceRequest.orderDetail.parameter.value[x] | 必須の要素として追加 |
| ServiceRequest.focus | 追加 |
| ServiceRequest.location | 追加 |
| ServiceRequest.reason | 追加 |
| ServiceRequest.supportingInfo | Reference(Resource)から、CodeableReferenceへ変更 |
| ServiceRequest.bodyStructure | 追加 |
| ServiceRequest.patientInstruction | stringから、BackboneElementへ型が変更となり、Cardinalityが、"0..*"へ |
| ServiceRequest.patientInstruction.instruction[x] | 追加 |
| ServiceRequest.locationCode | 削除 |
| ServiceRequest.locationReference | 削除 |
| ServiceRequest.reasonCode | 削除（reason要素へ移行） |
| ServiceRequest.reasonReference | 削除 (reason要素へ移行) |

## 検索パラメータ

このリソースの検索パラメータ。基本のパラメータも適用される。詳細は[Searching](http://hl7.org/fhir/R4/search.html)を参照。

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| SHALL | identifier | [token](http://hl7.org/fhir/R4/search.html#token) | 業務ID | ServiceRequest.identifier |
| SHALL | intent | [token](http://hl7.org/fhir/R4/search.html#token) | 用途 | ServiceRequest.intent |
| SHALL | subject | [reference](http://hl7.org/fhir/R4/search.html#reference) | 対象者 | ServiceRequest.subject ([Group](http://hl7.org/fhir/R4/group.html), [Device](http://hl7.org/fhir/R4/device.html), [Patient](http://hl7.org/fhir/R4/patient.html), [Location](http://hl7.org/fhir/R4/location.html)) |
| SHOULD | performer | [reference](http://hl7.org/fhir/R4/search.html#reference) | サービスの実施者 | ServiceRequest.performer ([Practitioner](http://hl7.org/fhir/R4/practitioner.html), [Organization](http://hl7.org/fhir/R4/organization.html), [CareTeam](http://hl7.org/fhir/R4/careteam.html), [Device](http://hl7.org/fhir/R4/device.html), [Patient](http://hl7.org/fhir/R4/patient.html), [HealthcareService](http://hl7.org/fhir/R4/healthcareservice.html), [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html), [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html)) |
| SHOULD | occurrence | [date](http://hl7.org/fhir/R4/search.html#date) | サービスの実施日 | ServiceRequest.occurrence |
| SHOULD | patient | [reference](http://hl7.org/fhir/R4/search.html#reference) | 患者による検索 | ServiceRequest.subject.where(resolve() is Patient) ([Patient](http://hl7.org/fhir/R4/patient.html)) |
| SHALL | status | [token](http://hl7.org/fhir/R4/search.html#token) | サービスの状態（ステータス） | ServiceRequest.status |
| SHOULD | requester | [reference](http://hl7.org/fhir/R4/search.html#reference) | サービスをリクエストした人・物 | ServiceRequest.requester ([Practitioner](http://hl7.org/fhir/R4/practitioner.html), [Organization](http://hl7.org/fhir/R4/organization.html), [Device](http://hl7.org/fhir/R4/device.html), [Patient](http://hl7.org/fhir/R4/patient.html), [PractitionerRole](http://hl7.org/fhir/R4/practitionerrole.html), [RelatedPerson](http://hl7.org/fhir/R4/relatedperson.html)) |
| MAY | authored | [date](http://hl7.org/fhir/R4/search.html#date) | 署名された日 | ServiceRequest.authoredOn |
| MAY | based-on | [reference](http://hl7.org/fhir/R4/search.html#reference) | 実施すべき対象 | ServiceRequest.basedOn ([CarePlan](http://hl7.org/fhir/R4/careplan.html), [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html), [ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html)) |
| MAY | body-site | [token](http://hl7.org/fhir/R4/search.html#token) | 手技の対象部位 | ServiceRequest.bodySite |
| MAY | category | [token](http://hl7.org/fhir/R4/search.html#token) | サービスリクエストの分類 | ServiceRequest.category |
| MAY | code | [token](http://hl7.org/fhir/R4/search.html#token) | リクエスト・オーダされる内容のコード | ServiceRequest.code |
| MAY | encounter | [reference](http://hl7.org/fhir/R4/search.html#reference) | サービスリクエストが作成された場面 | ServiceRequest.encounter ([Encounter](http://hl7.org/fhir/R4/encounter.html)) |
| MAY | instantiates-canonical | [reference](http://hl7.org/fhir/R4/search.html#reference) | FHIRのプロトコールや定義への参照 | ServiceRequest.instantiatesCanonical ([PlanDefinition](http://hl7.org/fhir/R4/plandefinition.html),[ActivityDefinition](http://hl7.org/fhir/R4/activitydefinition.html)) |
| MAY | instantiates-uri | [uri](http://hl7.org/fhir/R4/search.html#uri) | 外部のプロトコールや定義への参照 | ServiceRequest.instantiatesUri |
| MAY | performer-type | [token](http://hl7.org/fhir/R4/search.html#token) | サービスの実施者の職種 | ServiceRequest.performerType |
| MAY | priority | [token](http://hl7.org/fhir/R4/search.html#token) | サービスの優先度 | ServiceRequest.priority |
| MAY | replaces | [reference](http://hl7.org/fhir/R4/search.html#reference) | 代替のサービスリクエスト | ServiceRequest.replaces ([ServiceRequest](http://hl7.org/fhir/R4/servicerequest.html)) |
| MAY | requisition | [token](http://hl7.org/fhir/R4/search.html#token) | 複合ID | ServiceRequest.requisition |
| MAY | specimen | [reference](http://hl7.org/fhir/R4/search.html#reference) | 検体 | ServiceRequest.specimen ([Specimen](http://hl7.org/fhir/R4/specimen.html)) |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-servicerequest-common",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common",
  "version" : "1.3.0-dev",
  "name" : "JP_ServiceRequest_Common",
  "title" : "JP Core ServiceRequest Common Profile",
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
  "description" : "本プロファイル説明は、患者に対し立案・実施されるリクエストの記録で、行為や診断、もしくは他のサービスのために用いられるFHIR ServiceRequestリソースを使用するにあたっての、最低限の制約を記述したものである。",
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
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest",
        "short" : "サービスリクエスト",
        "definition" : "診断のための検査、治療、手術などのサービスリクエストの記録"
      },
      {
        "id" : "ServiceRequest.meta.lastUpdated",
        "path" : "ServiceRequest.meta.lastUpdated",
        "mustSupport" : true
      },
      {
        "id" : "ServiceRequest.identifier",
        "path" : "ServiceRequest.identifier",
        "short" : "サービスリクエストを識別する業務ID。",
        "definition" : "リクエストの発注者、受注者、サービスの実施者によるインスタンスに割り当てられた識別子。",
        "comment" : "この要素は、発注者（HL7 v2 では 'Placer' ）とリクエストに応じて観察、行為等を実施した者（HL7 v2 では 'Filler' ）を区別するために用いられる。"
      },
      {
        "id" : "ServiceRequest.instantiatesCanonical",
        "path" : "ServiceRequest.instantiatesCanonical",
        "short" : "FHIRのプロトコール、定義への参照",
        "definition" : "このサービスリクエストに部分的、または完全に関わる、FHIRで定義されたプロトコル、ガイドライン、オーダセットまたは他の定義を指しているURL",
        "comment" : "PlanDefinitionリソースは、実行されるアクションのシリーズ、シーケンス、またはグループを記述するために使用され、ActivityDefinitionリソースは、特定の各ステップまたはアクティビティを定義するために使用される。詳細は、PlanDefinition のBoundaries and Relationshipsセクションを参照してください。（訳注:R4とR4Bの本文に誤りあり、修正されたR5を翻訳）"
      },
      {
        "id" : "ServiceRequest.instantiatesUri",
        "path" : "ServiceRequest.instantiatesUri",
        "short" : "外部のプロトコール、定義への参照",
        "definition" : "このサービスリクエストに部分的、または完全に関わる、外部の管理されたプロトコール、ガイドライン、オーダセットや他の定義へのURL参照",
        "comment" : "HTMLページ、PDFなど、名前で解決できないURI識別子"
      },
      {
        "id" : "ServiceRequest.basedOn",
        "path" : "ServiceRequest.basedOn",
        "short" : "リクエストするリソースへの参照",
        "definition" : "このリクエストによって実施すべき計画、提案、オーダの詳細（への参照）",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/CarePlan",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.replaces",
        "path" : "ServiceRequest.replaces",
        "short" : "完了または終了したService Requestリソースの代替（への参照）",
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
        "id" : "ServiceRequest.requisition",
        "path" : "ServiceRequest.requisition",
        "short" : "サービスリクエストの複合ID（別名 グループID）",
        "definition" : "一人の発注者によっておおよそ同時に署名されたサービスリクエストの全てに共通する識別子で、複合、またはグループIDを表現する。",
        "comment" : "サービスリクエストは、basedOn要素、このrequisition要素によって関係付けられる。同じrequisition要素の一部であるサービスリクエストは、初めに作成された後にその状態と管理が変化する視点から、一般的に独立して扱われる。"
      },
      {
        "id" : "ServiceRequest.status",
        "path" : "ServiceRequest.status",
        "short" : "サービスリクエストの状態",
        "definition" : "オーダの状態",
        "comment" : "status要素は、一般的に発注者の完全な制御下にあり、オーダが起案か有効かを決定し、有効化された後は、競合、停止、または中断される。受注者の活動に関連する状態は、対応するイベント（一般的な議論についてはEventパターンを参照）またはTaskリソースを使用して反映される。"
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "short" : "サービスリクエストの意図（proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option）",
        "definition" : "この要求が、提案、経過、オリジナル、繰り返しかどうかを示す。",
        "comment" : "この要素は、リソースが実際に適用されるタイミングや方法を意図的に変更するため、修飾子と表現される。"
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "short" : "サービスリクエストの分類",
        "definition" : "検索、分類、表示の目的でサービスを分類するコード（例 「外科的手技」）",
        "comment" : "リソースを検索または表示するためのコンテキストまたはユースケースに応じて、複数の分類軸が存在する場合がある。粒度のレベルは、Value Setのカテゴリー概念によって定義される。"
      },
      {
        "id" : "ServiceRequest.priority",
        "path" : "ServiceRequest.priority",
        "short" : "サービスリクエストの緊急度（routine | urgent | asap | stat）",
        "definition" : "このサービスリクエストはどの程度早く対処されるべきかを示す。"
      },
      {
        "id" : "ServiceRequest.doNotPerform",
        "path" : "ServiceRequest.doNotPerform",
        "short" : "値が真の時、サービスや処置は実施不可",
        "definition" : "要求された特定のサービス（例、手技、診断のための検査、また検査パネル）の識別子",
        "comment" : "一般的には、コードと時間枠のみであるが、時には体の部位や実施者などの修飾語を追加して、禁止範囲を狭められる。code要素とdoNotPerform要素がともに否定を含む場合、禁止を強化することになり、二重否定解釈をしてはならない。"
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "short" : "リクエストの内容を示すコード",
        "definition" : "要求された特定のサービス（例、行為、診断のための検査、また検査パネル）の識別子",
        "comment" : "多くの検査・放射線処置コードは、血清または血漿グルコース、胸部 X 線など、検体・器官系が検査オーダー名に埋め込まれている。検体は、検査コードとは別に記録されないかもしれない。"
      },
      {
        "id" : "ServiceRequest.orderDetail",
        "path" : "ServiceRequest.orderDetail",
        "short" : "追加のオーダ情報",
        "definition" : "リクエストの提供方法に関する追加の詳細および指示。例えば、尿道カテーテルのサービスリクエストには、外部または留置カテーテルのリクエストの詳細があり、包帯のサービスリクエストには、包帯の適用方法を指定する追加の指示が必要な場合もある。",
        "comment" : "リクエストされたサービス提供の指示についての医療記録からの情報については、supportingInformation要素を使用。"
      },
      {
        "id" : "ServiceRequest.quantity[x]",
        "path" : "ServiceRequest.quantity[x]",
        "short" : "サービスの量",
        "definition" : "リクエストされるサービスの量。数量（例:1500ドルの住宅改造）、比率（例:1ヶ月に20回の半日訪問）、または範囲（例:1分間に2.0～1.8Gy）。",
        "comment" : "サービスリクエスト時に、項目とは別に数を指定する必要がある。"
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "short" : "サービスリクエストの対象（個人または集団）",
        "definition" : "サービスが実行される対象（人または物）。多くは患者だが、動物、集団（人または動物）、透析器のような装置、また場所（点家的には環境調査）も対象となる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.encounter",
        "path" : "ServiceRequest.encounter",
        "short" : "サービスがリクエストされる診療時の場面",
        "definition" : "サービスがリクエストされる医療背景についての追加情報を提供する診療時の場面",
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
        "id" : "ServiceRequest.occurrence[x]",
        "path" : "ServiceRequest.occurrence[x]",
        "short" : "サービスを実施すべき日時",
        "definition" : "リクエストされたサービスを実施すべき日時"
      },
      {
        "id" : "ServiceRequest.asNeeded[x]",
        "path" : "ServiceRequest.asNeeded[x]",
        "short" : "前提条件",
        "definition" : "CodeableConceptが存在する場合、そのサービスを行うための前提条件を示す。例えば、「痛み」、「再発時」など。"
      },
      {
        "id" : "ServiceRequest.authoredOn",
        "path" : "ServiceRequest.authoredOn",
        "short" : "リクエストの署名日時",
        "definition" : "リクエストが有効化された日時"
      },
      {
        "id" : "ServiceRequest.requester",
        "path" : "ServiceRequest.requester",
        "short" : "サービスを要求した人または物（要求者、発注者）",
        "definition" : "リクエストを開始し、その有効化に責任を持つ個人",
        "comment" : "伝言をする者ではなく、署名者。この要素は、Provenanceリソースを通じて管理される委任を扱うことを意図していない。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_RelatedPerson",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Device"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.performerType",
        "path" : "ServiceRequest.performerType",
        "short" : "実施者の役割",
        "definition" : "リクエストされたサービスの実施者の役割",
        "comment" : "参加者の資格ではなく役割。タスクではなく、能力を記述。例えば、「調剤薬局」、「精神科医」、「院内紹介」など。"
      },
      {
        "id" : "ServiceRequest.performer",
        "path" : "ServiceRequest.performer",
        "short" : "サービスの実施者",
        "definition" : "リクエストされたサービスを行うために望ましい実施者。例えば、外科医、皮膚病理医、内視鏡医など。",
        "comment" : "実施者が複数の場合、順番に関係なく、優先順位のない実施者のリストとして解釈される。優先順位が必要な場合は、request.performerOrder 拡張を使用する。実施者のグループ（例えば、医師Aと医師B）を表すには、CareTeamを使用する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Device",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/CareTeam"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.locationCode",
        "path" : "ServiceRequest.locationCode",
        "short" : "リクエストされた場所",
        "definition" : "実際に行為が行われるべき好ましい場所を、コード化またはフリーテキスト形式で記述。例：自宅や介護施設など。"
      },
      {
        "id" : "ServiceRequest.locationReference",
        "path" : "ServiceRequest.locationReference",
        "short" : "リクエストされた場所（参照）",
        "definition" : "実際に行為が行われるべき好ましい場所（複数可）への参照。例：自宅や介護施設など。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
          }
        ]
      },
      {
        "id" : "ServiceRequest.reasonCode",
        "path" : "ServiceRequest.reasonCode",
        "short" : "行為やサービスの説明・理由",
        "definition" : "このサービスがリクエストされる理由についての説明または根拠をコード化またはテキスト化したもの。しばしば（保険）請求を目的とされる。supportingInfoで参照されるリソースに関連する場合がある。",
        "comment" : "この要素は照会理由を表し、サービスがどのように実行されるか、あるいは全く実行されないかどうかを決定するために使用される。CTスキャンの例で示したように、データが自由記述の場合は、CodeableConcept.text要素を使用する。"
      },
      {
        "id" : "ServiceRequest.reasonReference",
        "path" : "ServiceRequest.reasonReference",
        "short" : "行為やサービスの説明・理由（参照）",
        "definition" : "このサービスが要求される理由の正当性を提供する他のリソースを示す。supportingInfoで参照されるリソースに関連する場合がある。",
        "comment" : "この要素は照会理由を表し、サービスがどのように実行されるか、あるいは全く実行されないかどうかを決定するために使用される。可能な限り具体的にするために、ObservationやConditionリソースへの参照が可能であれば使用されるべきである。また、DiagnosticReport を参照する場合は、DiagnosticReport.conclusion および/または DiagnosticReport.conclusionCode を参照する必要がある。DocumentReference への参照を使用する場合、ターゲット文書は、このサービス要求の関連理由を提供する明確な所見言語を含んでいなければならない。CTスキャンの例に示すように、データが自由記述（符号化されていない）の場合、 ServiceRequest.reasonCodeにCodeableConcept.text要素を使用する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common",
              "http://hl7.org/fhir/StructureDefinition/DocumentReference"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.insurance",
        "path" : "ServiceRequest.insurance",
        "short" : "関連する保険情報",
        "definition" : "リクエストされたサービスを提供するために必要な保険プラン、適用範囲拡大、事前承認、および/または事前決定がある。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage",
              "http://hl7.org/fhir/StructureDefinition/ClaimResponse"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.supportingInfo",
        "path" : "ServiceRequest.supportingInfo",
        "short" : "追加の補助的な臨床情報（別名 オーダエントリー時の質問 Ask at Order Entry question; AOEs）",
        "definition" : "サービスやその解釈に影響を与える可能性のある、患者や検体に関する追加の臨床情報。この情報には、診断、臨床所見、その他の観察が含まれる。検査のオーダでは、一般的に「オーダエントリー時の質問（AOEs）」と呼ばれ ている。これには、オーダを完了するために必要な文脈や裏付けとなる情報を提供するために、実施者が明示的に要求した観察が含まれる。例えば、血液ガス測定のための吸入酸素量の報告などである。",
        "comment" : "サービスの提供方法に関する情報を表すには、instructions 要素を使用する。"
      },
      {
        "id" : "ServiceRequest.specimen",
        "path" : "ServiceRequest.specimen",
        "short" : "検体",
        "definition" : "検査で使用する１つ以上の検体",
        "comment" : "多くの診断的行為は検体を必要とするが、リクエスト自体は実際には検体に関するものではない。この要素は、診断検査が既に存在する検体に対してリクエストされ、適用される検体を参照するためのものである。逆に、検体が未知の時に最初にリクエストが入力された場合、SpecimenリソースがServiceRequestリソースを参照する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Common"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.bodySite",
        "path" : "ServiceRequest.bodySite",
        "short" : "体の部位（別名 場所）",
        "definition" : "行為を実施すべき解剖学的部位。目標とする場所。",
        "comment" : "ServiceRequest.codeにあるコードに暗黙の了解がない場合にのみ使用する。使用例として、BodySiteをインラインコード化された要素ではなく、別のリソースとして扱う必要がある場合（例えば、別々に識別し追跡するため）、procedure.targetBodyStructureの拡張を使用してください。"
      },
      {
        "id" : "ServiceRequest.note",
        "path" : "ServiceRequest.note",
        "definition" : "サービス要求について作成された、その他のメモやコメント。例えば、内部請求のメモなど。"
      },
      {
        "id" : "ServiceRequest.patientInstruction",
        "path" : "ServiceRequest.patientInstruction",
        "short" : "患者、消費者向けの説明",
        "definition" : "患者または消費者が理解できる言葉で指示。"
      },
      {
        "id" : "ServiceRequest.relevantHistory",
        "path" : "ServiceRequest.relevantHistory",
        "short" : "リソースの履歴（バージョン管理）",
        "definition" : "このリクエストの履歴で重要なもの",
        "comment" : "この要素はには、ServiceRequestのProvenanceの全てのバージョンではなく、重要と思われたものだけ含められる。現在のバージョンのリソースに関連したProvenanceリソースを含めてはならない（SHALL NOT）。（もし、Provenanceとして重要な変化と思われれば、以降の更新の一部として追加すべきである。それまでは、'_revinclude'を使って指定されたProvenanceのバージョンを直接クエリーできる。全てのProvenanceはこのRequestの履歴を対象とすべきである。）"
      }
    ]
  }
}

```
