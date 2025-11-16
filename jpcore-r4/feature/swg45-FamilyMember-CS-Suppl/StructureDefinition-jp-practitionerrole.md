# JP Core PractitionerRole Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core PractitionerRole Profile**

## Resource Profile: JP Core PractitionerRole Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_PractitionerRole
* **項目**: *Title*
  * **内容**: JP Core PractitionerRole Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このプロファイルはPractitionerRoleリソースに対して、医療従事者役割のデータを送受信するための基礎となる制約と拡張を定めたものである。 

医療者が組織で一定期間担当する可能性のある特定の役割/場所/専門分野/サービスのセット。 
 本プロファイルは、PractitionerRoleリソースが医療者の役割を記録、検索、および取得するための最小の期待値を設定する。 これは、本プロファイルを使用するときにPractitionerRoleリソースに存在する必要がある必須のコア要素、拡張機能、語彙、および値セットを識別する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 医療者の臨床専門分野による医療者役割の検索
* 他のリソースからの医療者役割の参照（例：Encounterリソースのparticipantで参照される患者の関係者の医療者役割）

## スコープ

医療者役割は、医療者が組織に提供できるサービスの場所と種類の記録をカバーする。

医療者役割の他のインスタンスで必要に応じて、ロール、スペシャリティ、ロケーションテレコム、およびHealthcareServiceプロパティを繰り返すことができる。 単一の場所のサービス値のコレクションを記録するシステムもあれば、単一のサービスとそれが利用可能な場所のリストを記録するシステムもある。 どちらも、このデータを表すための許容可能なオプションである。可用性、通信、またはその他の詳細がすべてのヘルスケアサービス間で同じではない場合、または場所ごとに個別の医療者役割インスタンスを作成する必要がある。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core AllergyIntolerance Profile](StructureDefinition-jp-allergyintolerance.md), [JP Core Condition Profile](StructureDefinition-jp-condition.md), [JP Core DiagnosticReport Common Profile](StructureDefinition-jp-diagnosticreport-common.md), [JP Core DiagnosticReport Endoscopy Profile](StructureDefinition-jp-diagnosticreport-endoscopy.md)...Show 13 more,[JP Core Encounter Profile](StructureDefinition-jp-encounter.md),[JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md),[JP Core Immunization Profile](StructureDefinition-jp-immunization.md),[JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md),[JP Core MedicationDispenseBase Profile](StructureDefinition-jp-medicationdispensebase.md),[JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md),[JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md),[JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md),[JP Core Observation Radiology Findings Profile](StructureDefinition-jp-observation-radiology-findings.md),[JP Core Observation Radiology Impression Profile](StructureDefinition-jp-observation-radiology-impression.md),[JP Core Patient Profile](StructureDefinition-jp-patient.md),[JP Core Procedure Profile](StructureDefinition-jp-procedure.md)and[JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* Examples for this Profile: [PractitionerRole/jp-practitionerrole-example-1](PractitionerRole-jp-practitionerrole-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-practitionerrole)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-practitionerrole.csv), [Excel](StructureDefinition-jp-practitionerrole.xlsx), [Schematron](StructureDefinition-jp-practitionerrole.sch) 

### 必須要素

本プロファイルで定義された必須項目はない。

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/PractitionerRole?identifier=http://myhospital.com/fhir/PractitionerRoleid|1234 |
| SHOULD | specialty | token | GET [base]/PractitionerRole?specialty=http://nucc.org/provider-taxonomy|208D0000X |
| SHOULD | practitioner | token | GET [base]/PractitionerRole?practitioner.identifier=http://myhospital.com/fhir/Practitionerid|97860456 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、職種IDなどの識別子によるPractitionerRoleの検索をサポートしなければならない（**SHALL**）

```
GET [base]/PractitionerRole?identifier={system|}[token]

```

例：

```
GET [base]/PractitionerRole?identifier=http://myhospital.com/fhir/PractitionerRoleid|1234

```

指定された識別子に一致するPractitionerRoleリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. specialty 検索パラメータを使用して、医療者の特定の専門性によるPractitionerRoleの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/PractitionerRole?specialty={system|}[token]

```

例：

```
GET [base]/PractitionerRole?specialty=http://nucc.org/provider-taxonomy|208D0000X

```

指定された医療者の特定の専門性に一致するPractitionerRoleリソースを含むBundleを検索する。
1. practitioner 検索パラメータを使用して、医療者の名前と識別子によるPractitionerRoleの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/PractitionerRole?practitioner={Type/}[id]

```

例：

```
1.GET [base]/PractitionerRole?practitioner.identifier=http://myhospital.com/fhir/Practitionerid|97860456&_include=PractitionerRole:practitioner&_include=PractitionerRole?endpoint
2.GET [base]/PractitionerRole?practitioner.name=山田&_include=PractitionerRole:practitioner&_include=PractitionerRole?endpoint

```

practitioner.nameまたはpractitioner.identifierの連結パラメータに一致するPractitionerRoleリソースを含むBundleを検索する。PractitionerRole.practitionerとPractitionerRole.endpointの_include検索をサポートすることが望ましい。（**SHOULD**）

##### 追加検索パラメータ

追加検索パラメータは定義しない。

### サンプル

* [**精神科外来サービス担当**](PractitionerRole-jp-practitionerrole-example-1.md)

## 注意事項

PractitionerRoleには、ここで定義されているlocationに住所が含まれているため、addressは存在しない。 これにより、複数のリソースにaddressの値を重複させる必要がなくなる。

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
  "id" : "jp-practitionerrole",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
  "version" : "1.3.0-dev",
  "name" : "JP_PractitionerRole",
  "title" : "JP Core PractitionerRole Profile",
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
  "description" : "このプロファイルはPractitionerRoleリソースに対して、医療従事者役割のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole",
        "short" : "医療従事者が関連付けられている役割/組織",
        "definition" : "医療従事者が一定期間、組織で行うことができる役割／場所／専門性／サービスの特定のセット。"
      },
      {
        "id" : "PractitionerRole.identifier",
        "path" : "PractitionerRole.identifier",
        "short" : "役割/場所に固有のビジネス識別子",
        "definition" : "役割/場所に固有のビジネス識別子。",
        "requirements" : "多くの場合、エージェントには特定の識別子が割り当てられている。"
      },
      {
        "id" : "PractitionerRole.active",
        "path" : "PractitionerRole.active",
        "short" : "このPractitionerRoleレコードがアクティブに使用されているかどうか",
        "definition" : "このPractitionerRoleレコードがアクティブに使用されているかどうか。",
        "comment" : "この値がfalseの場合、ロールがいつアクティブに使用されていたかを期間を参照して確認することができる。期間が指定されていない場合、それがいつアクティブになったかを推論することはできない。",
        "requirements" : "PractitionerRoleレコードがエラーで作成されたために使用されないことをマークできるようにする必要がある。"
      },
      {
        "id" : "PractitionerRole.period",
        "path" : "PractitionerRole.period",
        "short" : "その人が、これらの役割（複数可）の医療従事者として行動することを許可されている期間",
        "definition" : "その人が、組織のためにこれらの役割（複数可）の医療従事者として行動することを許可されている期間。",
        "comment" : "期間は時間の範囲を指定する。使用状況はその期間全体に適用されるか、範囲から1つの値が適用される。  \n期間は、時間間隔（経過時間の測定値）には使用されない",
        "requirements" : "機関が取り消された後も、存在していた事実を記録しなければならない。"
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "short" : "組織に定義されたサービスを提供できる医療従事者",
        "definition" : "組織に定義されたサービスを提供できる医療従事者。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
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
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "short" : "役割が可能な組織",
        "definition" : "医療従事者が関連する役割を実行する組織。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
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
        "id" : "PractitionerRole.code",
        "path" : "PractitionerRole.code",
        "short" : "この医療従事者が果たす役割【詳細参照】",
        "definition" : "この医療従事者が組織のために実行することを許可されている役割。",
        "comment" : "医師、看護職員、薬剤師、放射線技師、情報職員といった職種を格納する。  \n以下のコード表を作成する。  \nhttp://jpfhir.jp/fhir/core/CodeSystem/JP_PractitionerRole_CS  \nSS-MIX2ではJHSR004 医療従事者の職種コードを採用  \nコード : 名称  \nDR-01 : 依頼医師  \nDR-02 : 実施医師  \nDR-03 : 麻酔医師  \nTC-01 : 実施技師  \nNS-01 : 看護師  \nNS-02 : 付添看護師  \nNS-03 : 助産師",
        "requirements" : "practitionerがどのような権限を持っているのかを知る必要がある - 何ができるのか？",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_PractitionerRole_VS"
        }
      },
      {
        "id" : "PractitionerRole.specialty",
        "path" : "PractitionerRole.specialty",
        "definition" : "医療従事者の特定の専門性",
        "comment" : "PractitionerRole.codeに格納した職種の専門領域を格納する。  \n以下のコード表を作成する。  \nhttp://jpfhir.jp/fhir/core/CodeSystem/JP_PractionerRole_practicecodes"
      },
      {
        "id" : "PractitionerRole.location",
        "path" : "PractitionerRole.location",
        "short" : "この医療従事者がケアを提供している場所",
        "definition" : "この医療従事者がケアを提供している場所（複数可）。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
          }
        ]
      },
      {
        "id" : "PractitionerRole.healthcareService",
        "path" : "PractitionerRole.healthcareService",
        "short" : "この対象者がこの役割の組織/場所に対して提供するヘルスケアサービスのリスト",
        "definition" : "この対象者がこの役割の組織/場所に対して提供するヘルスケアサービスのリスト。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。"
      },
      {
        "id" : "PractitionerRole.telecom",
        "path" : "PractitionerRole.telecom",
        "short" : "役割/場所/サービスに固有の連絡先の詳細",
        "definition" : "役割/場所/サービスに固有の連絡先の詳細。",
        "comment" : "各要素の説明は、JP_Patient　の説明を参照。",
        "requirements" : "多くの場合、医療従事者は、勤務する場所（またはサービス）ごとに専用の回線を持っており、それぞれに別々の連絡先を定義する必要がある。"
      },
      {
        "id" : "PractitionerRole.availableTime",
        "path" : "PractitionerRole.availableTime",
        "definition" : "医療従事者が利用可能な時間、またはその場所および/またはヘルスケアサービスでこの役割を実行している時間のコレクション。",
        "comment" : "より詳細な利用可能な情報は、関連するSchedule/Slotのリソースで提供される場合がある。"
      },
      {
        "id" : "PractitionerRole.availableTime.daysOfWeek",
        "path" : "PractitionerRole.availableTime.daysOfWeek",
        "definition" : "開始時刻と終了時刻の間に利用可能な曜日を示す。"
      },
      {
        "id" : "PractitionerRole.availableTime.allDay",
        "path" : "PractitionerRole.availableTime.allDay",
        "definition" : "これはいつでも利用できるか(そのため時間は関係ない) 例：24時間サービス。"
      },
      {
        "id" : "PractitionerRole.availableTime.availableStartTime",
        "path" : "PractitionerRole.availableTime.availableStartTime",
        "definition" : "一日の開始時間。注意：AllDayフラグが設定されている場合、この時間は無視される。",
        "comment" : "タイムゾーンは、このHealthcareServiceが提供されている場所のために期待される。"
      },
      {
        "id" : "PractitionerRole.availableTime.availableEndTime",
        "path" : "PractitionerRole.availableTime.availableEndTime",
        "definition" : "一日の終了時刻。注意：AllDayフラグが設定されている場合、この時間は無視される。",
        "comment" : "タイムゾーンは、このHealthcareServiceが提供されている場所のために期待される。"
      },
      {
        "id" : "PractitionerRole.notAvailable",
        "path" : "PractitionerRole.notAvailable",
        "short" : "この期間中は利用できない理由と期間",
        "definition" : "医療従事者は、提供された理由により、この期間中にこの役割を果たすことができないか、またはこの役割を果たすことができない。"
      },
      {
        "id" : "PractitionerRole.notAvailable.description",
        "path" : "PractitionerRole.notAvailable.description",
        "definition" : "この時間が利用できない理由をユーザに提示することができる。"
      },
      {
        "id" : "PractitionerRole.notAvailable.during",
        "path" : "PractitionerRole.notAvailable.during",
        "definition" : "この日からサービスのご利用（季節・祝日）はできない。"
      },
      {
        "id" : "PractitionerRole.availabilityExceptions",
        "path" : "PractitionerRole.availabilityExceptions",
        "definition" : "祝祭日の利用可能性など、サイトの利用可能性の例外についての説明。通常のサイトの利用可能性に対するすべての可能性のある例外を、利用可能なTimesと利用できないTimesの詳細として簡潔に記述する。"
      },
      {
        "id" : "PractitionerRole.endpoint",
        "path" : "PractitionerRole.endpoint",
        "definition" : "この役割を持つ医療従事者のために運営されているサービスへのアクセスを提供する技術的なエンドポイント。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、内容に辿り着ける（解決できる）必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "requirements" : "組織には、様々なサービスを提供するための複数のシステムがあり、また、医療従事者にとっても様々である。  \nしたがって、エンドポイントは、それらにどのように接続するか、また、どのような目的で接続するかにての技術的な接続の詳細を定義することができるという必要性を満たす。"
      }
    ]
  }
}

```
