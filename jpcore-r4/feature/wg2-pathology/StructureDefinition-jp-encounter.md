# JP Core Encounter Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Encounter Profile**

## Resource Profile: JP Core Encounter Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Encounter
* **項目**: *Title*
  * **内容**: JP Core Encounter Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはEncounterリソースに対して、来院/入院情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 

本プロファイルは、患者の医療機関受診に関する情報の登録や検索、取得のために 、FHIR Encounter リソースを使用するにあたっての、最低限の制約を記述したものである。Encounter リソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 患者番号・診察券番号による患者受診歴の検索
* 患者番号・診察券番号による入院履歴の検索
* 外来予約患者の来院状況の検索、一覧表示
* その他、上記以外の他のリソースからの患者受診歴の参照（例：Observationリソースの encounterで参照される対象とする患者の受診や、CarePlanリソースのencounterで参照される患者の受診歴（入院歴））

### 範囲と使用方法

患者に関連したEncounterの情報はその利用される状況によって特徴づけられる。例えば、外来、救急、在宅医療、入院、およびオンライン受診の情報も含まれる。Encounterは入院前手続き、外来受診、入院、入院中の滞在、および退院などの一連のライフサイクルを含む。Encounterに含まれる、PractitionerやLocationといった情報は状況に応じて変更されていくことがある。

このようにEncounterの適用範囲は広範になるため、すべてのエレメントがすべての状況で利用されるとは限らない。このため、入院/退院に関連した情報は、Encounter内のhospitalizationエレメントに保持される。classエレメントはこれらの状況を区別するために使用され、これによりさらなる検証とビジネスルールの適用が導かれる。

また、どのビジネスイベントが新しいEncounterの開始につながるのか、あるいはEncounterにどのようなレベルの集計が使用されるのかについては、組織ごと（および管轄や国ごと）に大きな違いがある。例えば、入院中の外来診療/開業医への一回の来院は、それぞれ新しいEncounterのインスタンスにつながるかもしれないが、個別の運用や関係するシステムによっては、これが入院全体で一つのインスタンスに集約されることもあり得る。会計システムなどの財務的な理由またはその他の理由でEncounterのグループを導入する場合には、さらに多くの集約が行われる可能性がある。Encountersは、partOfエレメントを用いて他のEncountersの下に集約またはグループ化することができる。例については[こちらのリンク](https://hl7.org/fhir/R4/encounter.html#examples)を参照すること。

Encounterインスタンスは、入院前情報を表現するために実際の外来や入院が行われる前に存在することがある。これには、予定された開始日または予定された場所を表現するためにEncounterを使用することも含まれる。この場合、status要素は「planned」に設定される。

Hospitalizationコンポーネントは、入院イベントに関連する拡張情報を格納するためのものである。これは常に、Encounter自体と同じ期間であることが期待される。期間が異なる場合は、別のEncounterのインスタンスを使用して、このEncounterのインスタンスの一部としてpartOfエレメントを使用してこの情報を取り込むべきである。

ProcedureとEncounterはお互いへの参照を持つが、これらは異なるProcedureとするべきである。1つは、Encounterの間に行われたProcedure（Procedure.encounterに格納）、もう1つは、Encounterが別のProcedureの結果である場合（Encounter.indicationに格納）、例えば、以前のProcedureによる合併症を解決するためのフォローアップのEncounterなどである。

### ステータス管理

Encounterのライフサイクルでは、多くのステータス(status)を遷移する。一般的に、これらは組織のワークフローの順に、 planned(計画), in-progress(進行中), finished/cancelled(終了/キャンセル)となる。
 このステータス情報はしばしば他のことに使用され、その際にはステータス履歴の分析が必要となることもある。これは、Encounterのすべてのhistoryを検索し、それぞれの期間をチェックし、何らかの形で後処理を行うことで可能となる。しかし、このような負担を軽減するために（またはシステムがリソース履歴をサポートしていない場合のために）、statusHistoryコンポーネントが用意されている。

そのEncounterが「来院した/入院した」ということを判断できる、statusの値は存在しない。Encounterの使用法およびジネスプラクティス/ポリシー/ワークフロー/タイプがこの定義に影響を与える可能性がある。(例：急性期医療施設、高齢者医療センター、外来診療所、救急部、地域に根ざした診療所など）
 arrived, triaged または in-progress のstatusは入院の開始と考えられ、入力されたhospitalizationサブコンポーネントの存在を意味する。

on leave のstatusは、例えば、患者が週末に帰宅することを許可された場合や、その他の形式の外部イベントの場合など、入院の一部である場合もあれば、そうでない場合もある。 Encounterには「入院した」という固定した定義はないので、例えば外来（日帰り手術-大腸内視鏡検査）などの例では、患者は入院しているとも考えられる。少なくとも、ステータスが「in-progress」の場合は、患者は入院していると考えられる。

### 境界線と関係性

Encounterリソースは予約情報を格納するために使用されるべきではなく、Appointmentリソースが予約情報のために使用されることが意図されている。多くのシステムでは、外来患者のEncounter（これはEncounterの範囲である）とAppointmentが同時に使用されていることに注意してほしい。FHIRでは、AppointmentはEncounterの日付を確定するために使用され、一方Encounterは実際の来院/入院等に関する情報、すなわち患者が現れることに適用される。
 このように、「planned」のstatusのEncounterは、それを予定したAppointmentと同一ではないが、それは実際に発生する前のEncounterであり、Encounterが完了するまでに更新されることが期待される。患者の場所への到着は、必ずしもEncounterの開始を意味するものではない（例えば、患者が実際に施術者に診てもらうよりも1時間早く到着しても、Encounterの開始にはならない。）。

Appointmentは通常、Appointmentの計画段階、検索、空いている時間の場所の特定、そしてAppointmentの作成に使われる。このプロセスが完了し、Appointmentが開始されると、Appointmentは達成されたものとしてマークされ、新しく作成されたEncounterにリンクされる。
 この新しいEncounterは、施設のある場所に入院したときに「arrived」状態で始まり、その後、病棟を移動した際には別のpartOfで関連付けられたEncounterが始まるかもしれない。

Communicationリソースは、直接の接触がない場合に、医療従事者と患者の間で同時に行われる対話に使用される。例としては、電話によるメッセージや、通信文書の送信などがある。通信資源には継続時間は記録されないが、送信時間と受信時間が含まれる可能性がある。

## スコープ

外来における入院前受診、来院、入院診療における入院、滞在、退院といった、全ての患者受診を表す。

Encounterリソースは、class要素を用いて医療提供環境を特徴づけることができる。具体的な例としては以下の環境が想定されている。

* 救急
* 在宅診療
* 入院前
* 入院
* 検査通院
* 遠隔診療

Encounter リソースは発生単位が医療機関や組織ごとに異なる可能性がある。例えば、入院中に開業医が1回訪問するたびに新しいEncounterインスタンスが発生する可能性や、地域の慣行や関連システムによっては、入院全体で1つのインスタンスに集約される場合もある。

Encounterリソースは、partOf要素を使用して、他のEncounterインスタンスの下に集約できる。

またEncounterリソースは、受診前の情報を伝達するために生成することもできる。この場合、status要素は「planned」に設定される。患者の受信内容が入院に関連する場合は、hospitalization要素に入院イベントに関連する拡張情報を格納できる。
 なおこの入院イベントの関連付けは、Encounterリソースのperiod要素で指定されている期間と同じ期間内であることが望ましい。もし期間が異なる場合は、別のEncounterインスタンスを使用し、このEncounterインスタンスの一部として情報を関連付ける必要がある。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core AllergyIntolerance Profile](StructureDefinition-jp-allergyintolerance.md), [JP Core Condition Profile](StructureDefinition-jp-condition.md), [JP Core DiagnosticReport Common Profile](StructureDefinition-jp-diagnosticreport-common.md), [JP Core DiagnosticReport Pathology Profile](StructureDefinition-jp-diagnosticreport-pathology.md)...Show 13 more,[JP Core Encounter Profile](StructureDefinition-jp-encounter.md),[JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md),[JP Core ImagingStudy Pathology Profile](StructureDefinition-jp-imagingstudy-pathology.md),[JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md),[JP Core Immunization Profile](StructureDefinition-jp-immunization.md),[JP Core media Endoscopy Profile](StructureDefinition-jp-media-endoscopy.md),[JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md),[JP Core MedicationDispenseBase Profile](StructureDefinition-jp-medicationdispensebase.md),[JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md),[JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md),[JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md),[JP Core Procedure Profile](StructureDefinition-jp-procedure.md)and[JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* Examples for this Profile: [Encounter/jp-encounter-example-1](Encounter-jp-encounter-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-encounter)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-encounter.csv), [Excel](StructureDefinition-jp-encounter.xlsx), [Schematron](StructureDefinition-jp-encounter.sch) 

### 必須要素

Encounter リソースは、次の要素を持たなければならない。

* status : 受診状況を示す。value set encounter-statusで定義された値から設定する必要がある。
 （planned/arrived/triaged/in-progress/onleave/finished/cancelled/entered-in-error/unknown）
* class : 受診分類を示す。value set ActEncounterCodeで定義された値から設定する必要がある。
 （AMB/EMER/FLD/HH/IMP/ACUTE/NONAC/OBSENC/PRENC/SS/VR）

### Extensions定義

JP Encounter リソースで使用される拡張は次の通りである。

* [Associated Encounter](https://www.hl7.org/fhir/R4/extension-encounter-associatedencounter.html)

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Encounter?identifier=http://hl7.org/fhir/sid/jpsys|123456 |
| SHOULD | patient | reference | GET [base]/Encounter?patient=Patient/123456 |
| SHOULD | date, patient | date, reference | GET [base]/Encounter?date=eq2021-04-15&patient=Patient/123456 |
| SHOULD | class, patient | token, reference | GET [base]/Encounter?class=http://terminology.hl7.org/CodeSystem/v3-ActCode|EMER&patient=Patient/123456 |
| SHOULD | patient, type | reference, token | GET [base]/Encounter?patient=Patient/123456&type=http://terminology.hl7.org/CodeSystem/encounter-type|ADMS |
| SHOULD | patient, status | reference, token | GET [base]/Encounter?patient=Patient/123456&status=arrived |

##### 必須検索パラメータ

1. identifier 検索パラメータを使用して、診察番号等の識別子によるEncounterの検索をサポートしなければならない（**SHALL**）

```
GET [base]/Encounter?identifier={system|}[token]

```

例：

```
GET [base]/Encounter?identifier=http://hl7.org/fhir/sid/jpsys|123456

```

指定された識別子に一致するEncounterリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. patient 検索パラメータを使用して、識別子によるEncounterの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Encounter?patient={reference}

```

例：

```
GET [base]/Encounter?patient=Patient/123456

```

指定されたpatientに一致するEncounterリソースを含むBundleを検索する。
1. date, patient 検索パラメータを使用して、識別子によるEncounterの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Encounter?date={date}&patient={reference}

```

例：

```
GET [base]/Encounter?date=eq2021-04-15&patient=Patient/123456

```

指定されたdate,patientに一致するEncounterリソースを含むBundleを検索する。
1. class, patient 検索パラメータを使用して、識別子によるEncounterの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Encounter?class={token}&patient={reference}

```

例：

```
GET [base]/Encounter?class=http://terminology.hl7.org/CodeSystem/v3-ActCode|EMER&patient=Patient/123456 

```

指定されたclass,patientに一致するEncounterリソースを含むBundleを検索する。
1. patient, type 検索パラメータを使用して、識別子によるEncounterの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Encounter?patient={reference}&type={token}

```

例：

```
GET [base]/Encounter?patient=Patient/123456&type=http://terminology.hl7.org/CodeSystem/encounter-type|ADMS 

```

指定されたpatient, typeに一致するEncounterリソースを含むBundleを検索する。
1. patient, status 検索パラメータを使用して、識別子によるEncounterの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Encounter?patient={reference}&status={token}

```

例：

```
GET [base]/Encounter?patientPatient/123456&status=arrive 

```

指定されたpatient, statusに一致するEncounterリソースを含むBundleを検索する。

#### Operation一覧

JP Encounter リソースに対して使用される操作は次の通りである。

* $everything：[base]/Encounter/[id]/$everything 
* この操作が呼び出された特定のEncounterに関連する全ての情報を返す
 

#### Operation 詳細

##### $everything 操作

この操作は、この操作が呼び出された特定のEncounterリソースに関連する全ての情報を返す。 応答は "searchset" タイプのBundleリソースである。

この操作の公式なURLは以下である。

```
https://hl7.org/fhir/R4/operation-encounter-everything.html

```

URL: [base]/Encounter/[id]/$everything

本操作は、べき等な操作である。

###### 入力パラメータ

| | | | |
| :--- | :--- | :--- | :--- |
| _since | 0..1 | instant | 指定された日時以降に更新されたリソースのみが応答に含まれる。 |
| _type | 0..* | code | 応答に含むFHIRリソース型を、カンマ区切りで指定する。指定されない場合は、サーバーは全てのリソース型を対象とする。 |
| _count | 0..1 | integer | Bundleの1ページに含まれるリソース件数を指定。 |

###### 出力パラメータ

| | | | |
| :--- | :--- | :--- | :--- |
| return | 1..1 | Bundle | バンドルのタイプは"searchset"である。この操作の結果は、リソースとして直接返される。 |

###### 例

リクエスト：単一のEncounterに関連する全てのリソースを取得する。

```
GET [base]/Encounter/example/$everything
[some headers]

```

レスポンス：指定されたEncounterに関連する全てのリソースを返す。

```
HTTP/1.1 200 OK
[other headers]

{
  "resourceType": "Bundle",
  "id": "p001",
  "meta": {
    "lastUpdated": "2020-01-06T15:11:11.447+00:00"
  },
  "type": "searchset",
  "entry": [
    {
      "fullUrl": "http://example.org/fhir/Encounter/p001",
      "resource": {
        "resourceType": "Encounter",

          ・・・

       },
    }
  ]
}  

```

### サンプル

* [**クリニック来院**](Encounter-jp-encounter-example-1.md)

## 注意事項

Encounterリソースは、予定情報や予約の保存には使用されない。予約の保存にはAppointmentリソースを利用すること。FHIRでは、Appointmentは診察の日付を決定するのに利用されるのに対して、Encounterは実際に患者が来院して診察が実施されたことを表現する。 そのため、「planned」の status の Encounter は実際に発生する前の Encounter であり、診療行為が完了するまで更新されることが期待される。

## その他、参考文献・リンク等

1. 退院時サマリー規約[http://www.hl7.jp/library/item/HL7J-CDA-007.pdf](http://www.hl7.jp/library/item/HL7J-CDA-007.pdf)
1. 診療情報提供書規格[http://www.hl7.jp/intro/std/HL7J-CDA-005.pdf](http://www.hl7.jp/intro/std/HL7J-CDA-005.pdf)
1. 特定健診情報ファイル仕様[https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000165280.html](https://www.mhlw.go.jp/stf/seisakunitsuite/bunya/0000165280.html)
1. SS-MIX2 標準化ストレージ 仕様書 Ver.1.2h[https://www.jami.jp/jamistd/docs/SS-MIX2/h/SS-MIX2_StndrdStrgSpecVer.1.2h.pdf](https://www.jami.jp/jamistd/docs/SS-MIX2/h/SS-MIX2_StndrdStrgSpecVer.1.2h.pdf)
1. ICSR E2B(R3)[https://www.pmda.go.jp/int-activities/int-harmony/ich/0093.html](https://www.pmda.go.jp/int-activities/int-harmony/ich/0093.html)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-encounter",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter",
  "version" : "1.3.0-dev",
  "name" : "JP_Encounter",
  "title" : "JP Core Encounter Profile",
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
  "description" : "このプロファイルはEncounterリソースに対して、来院/入院情報のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter",
        "short" : "患者にサービスが提供されている間の相互作用",
        "definition" : "医療サービスの提供または患者の健康状態の評価を目的とした、患者と医療提供者との間の相互作用。Encounterと表現される。  \n【JP Core仕様】外来受診、救急受診、入院、退院、対面診察、電話診察、など。"
      },
      {
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.extension:associatedEncounter",
        "path" : "Encounter.extension",
        "sliceName" : "associatedEncounter",
        "short" : "関連するEncounter",
        "definition" : "関連するEncounter",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/encounter-associatedEncounter|4.0.1"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "short" : "このEncounterが知られている識別子（複数可）",
        "definition" : "このEncounterが知られている識別子（複数可）。"
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "short" : "planned | arrived | triaged | in-progress | onleave | finished | cancelled + / 予定｜到着｜トリアージ｜進行中｜保留中｜終了｜キャンセル+",
        "definition" : "planned | arrived | triaged | in-progress | onleave | finished | cancelled +.  \n予定｜到着｜トリアージ｜進行中｜保留中｜終了｜キャンセル+.",
        "comment" : "内部のビジネス・ルールは、ステータス(およびクラス)間で発生する可能性のある適切な遷移を検出することに注意すること。",
        "isModifierReason" : "この要素は、リソースを有効なものとして扱うべきではないことを意味する status entered-in-error を含む status 要素であるため、修飾子としてラベル付けされる。"
      },
      {
        "id" : "Encounter.statusHistory",
        "path" : "Encounter.statusHistory",
        "short" : "過去のEncounterのステータス一覧【詳細参照】",
        "definition" : "ステータス履歴(status History)は、リソースの歴史的なバージョンを読み込んだり、サーバーに保存させたりすることなく、Encounterリソースがステータス履歴を含むことを可能にする。",
        "comment" : "現在のステータスは、ステータスの履歴ではなく、常にリソースの現在のバージョンにある。"
      },
      {
        "id" : "Encounter.statusHistory.status",
        "path" : "Encounter.statusHistory.status",
        "short" : "planned | arrived | triaged | in-progress | onleave | finished | cancelled + / 予定｜到着｜トリアージ｜進行中｜保留中｜終了｜キャンセル+.",
        "definition" : "planned | arrived | triaged | in-progress | onleave | finished | cancelled +.  \n予定｜到着｜トリアージ｜進行中｜保留中｜終了｜キャンセル+.",
        "comment" : "文字列のサイズは 1MB を超えてはならないことに注意すること。"
      },
      {
        "id" : "Encounter.statusHistory.period",
        "path" : "Encounter.statusHistory.period",
        "short" : "そのエピソードが指定された状態になっていた時間",
        "definition" : "そのエピソードが指定された状態になっていた時間。",
        "comment" : "期間とは時間の範囲で指定される。範囲全体が適用されるか（たとえば、「患者はこの時間範囲で入院していた」）、または範囲から1つの値が適用されるか（たとえば、「これら2回の間に患者に与える」）を指定する。 期間が必要な場合は、タイプをInterval | Durationとして指定する。"
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "short" : "患者との受療行動の分類【詳細参照】",
        "definition" : "外来（外来）、入院、救急、在宅医療、その他の地域差による患者Encounterの分類を表す概念。",
        "comment" : "コードは列挙やコードリストの中で非常にカジュアルに定義されることもあれば、SNOMED CTのような非常にフォーマルな定義まである。 - 詳細は[HL7 v3コア・プリンシプル](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=481)を参照すること。"
      },
      {
        "id" : "Encounter.classHistory",
        "path" : "Encounter.classHistory",
        "short" : "過去のEncounter classのリスト【詳細参照】",
        "definition" : "クラスの履歴は、リソースの履歴を経由することなく、Encounterの遷移を追跡することを可能にする。これは、入院患者が緊急時にEncounterした後、入院患者のシナリオに移行する場合に使用される。このようにして、新しいEncounterを再開しないようにすることで、検査/診断結果がより簡単に患者を追跡することができ、再処理を必要とせず、救急から入院への退院の際に紛失したりキャンセルされたりすることがないことを保証する。"
      },
      {
        "id" : "Encounter.classHistory.class",
        "path" : "Encounter.classHistory.class",
        "short" : "inpatient | outpatient | ambulatory | emergency + / 入院｜外来｜外来｜救急＋",
        "definition" : "inpatient | outpatient | ambulatory | emergency +.  \n入院｜外来｜外来｜救急＋。",
        "comment" : "コードは列挙やコードリストの中で非常にカジュアルに定義されることもあれば、SNOMED CTのような非常にフォーマルな定義まである- 詳細は[HL7 v3コア・プリンシプル](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=481)を参照すること。"
      },
      {
        "id" : "Encounter.classHistory.period",
        "path" : "Encounter.classHistory.period",
        "short" : "指定されたクラスにエピソードがあった時間",
        "definition" : "指定されたクラスにエピソードがあった時間。",
        "comment" : "期間とは時間の範囲で指定される。範囲全体が適用されるか（たとえば、「患者はこの時間範囲で入院していた」）、または範囲から1つの値が適用されるか（たとえば、「これら2回の間に患者に与える」）を指定する。 期間が必要な場合は、タイプをInterval | Durationとして指定する。"
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.participant.individual",
        "path" : "Encounter.participant.individual",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.reasonReference",
        "path" : "Encounter.reasonReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition_Diagnosis",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Procedure",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.diagnosis.condition",
        "path" : "Encounter.diagnosis.condition",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition_Diagnosis",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Procedure"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.origin",
        "path" : "Encounter.hospitalization.origin",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.hospitalization.destination",
        "path" : "Encounter.hospitalization.destination",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.location.location",
        "path" : "Encounter.location.location",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
          }
        ]
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.partOf",
        "path" : "Encounter.partOf",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter"
            ]
          }
        ]
      }
    ]
  }
}

```
