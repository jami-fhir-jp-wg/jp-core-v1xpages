# JP Core Location Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Location Profile**

## Resource Profile: JP Core Location Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Location
* **項目**: *Title*
  * **内容**: JP Core Location Profile
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはLocationリソースに対して、所在場所のデータを送受信するための基礎となる制約と拡張を定めたものである。 

本プロファイルは、患者、プロバイダ、または組織に関連付けられたロケーションを記録、検索、およびフェッチするために 、FHIR Location リソースを使用するにあたっての、最低限の制約を記述したものである。Location リソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 所在場所名または所在場所の住所による所在場所の検索
* 他のリソースからの所在場所の参照（例：Encounterリソースのhospitalizationで参照される患者の入院前や退院後の所在場所）

## スコープ

所在場所には、偶発的な場所（事前の指定や許可なしに医療に使用される場所）と、正式に指定された専用の場所の両方が含まれる。場所は、プライベート、パブリック、モバイル、または固定であり、小さな冷凍庫から完全な病院の建物または駐車場までの規模になる。本リソースに含まれる所在場所の例を示す（ただし、この一覧に限定されない）。

* 建物、病棟、廊下、部屋またはベッド
* モバイルクリニック
* 冷凍庫、インキュベーター
* 車両またはリフト
* 家、小屋、またはガレージ
* 道路、駐車場、公園
* 救急車（ジェネリック）
* 救急車（特定）
* 患者の家（一般）
* 管轄

これらの所在場所は、何かが発生した患者の所在場所（骨折した部位、例えば足）をカバーすることを目的としていないが、患者が足を骨折した場所（例えば、遊び場）をカバーできる。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Common Profile](StructureDefinition-jp-diagnosticreport-common.md), [JP Core Encounter Profile](StructureDefinition-jp-encounter.md), [JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md), [JP Core Immunization Profile](StructureDefinition-jp-immunization.md)...Show 7 more,[JP Core Location Profile](StructureDefinition-jp-location.md),[JP Core MedicationAdministration Location Extension](StructureDefinition-jp-medicationadministration-location.md),[JP Core MedicationDispenseBase Profile](StructureDefinition-jp-medicationdispensebase.md),[JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md),[JP Core PractitionerRole Profile](StructureDefinition-jp-practitionerrole.md),[JP Core Procedure Profile](StructureDefinition-jp-procedure.md)and[JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* Examples for this Profile: [外来101診察室](Location-jp-location-example-examinationroom.md), [南ウィング 神経放射線科 手術室1](Location-jp-location-example-ope.md) and [09A病棟 021病室 4ベッド](Location-jp-location-example-ward.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-location)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-location.csv), [Excel](StructureDefinition-jp-location.xlsx), [Schematron](StructureDefinition-jp-location.sch) 

### 必須要素

本プロファイルで定義された必須項目はない。

### Extensions定義

本プロファイルで追加定義された拡張はない。

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | name | string | GET [base]/Location?name=３南 |
| SHALL | identifier | token | GET [base]/Location?identifier=http://myhospital.com/fhir/Locationid|1234 |
| SHOULD | address | string | GET [base]/Location?address=東京都文京区本郷７丁目３−１ |
| SHOULD | address-city | string | GET [base]/Location?address-city=文京区 |
| SHOULD | address-state | string | GET [base]/Location?address-state=東京都 |
| SHOULD | address-postalcode | string | GET [base]/Location?address-postalcode=1130033 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. name 検索パラメータを使用して、任意の名前パートによる文字列検索をサポートしなければならない（**SHALL**）

```
GET [base]/Location?name={string}

```

例：

```
GET [base]/Location?name=３南

```

名前が一致するLocationリソースを含むBundleを取得する。
1. identifier 検索パラメータを使用して、ロケーションIDなどの識別子によるLocationの検索をサポートしなければならない（**SHALL**）

```
GET [base]/Location?identifier={system|}[token]

```

例：

```
GET [base]/Location?identifier=http://myhospital.com/fhir/Locationid|1234

```

指定された識別子に一致するLocationリソースを含むBundleを取得する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. address 検索パラメータを使用して、住所テキストによる文字列検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Location?address={string}

```

例：

```
GET [base]/Location?address=東京都文京区本郷７丁目３−１

```

住所文字列が一致するLocationリソースを含むBundleを取得する。
1. address-city 検索パラメータを使用して、住所の市町村名によるLocationの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Location?address-city={string}

```

例：

```
GET [base]/Location?address-city=文京区

```

指定された住所の市町村名が一致するLocationリソースを含むBundleを取得する。
1. address-state 検索パラメータを使用して、住所の都道府県名によるLocationの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Location?address-state={string}

```

例：

```
GET [base]/Location?address-state=東京都

```

指定された住所の都道府県名が一致するLocationリソースを含むBundleを取得する。
1. address-postalcode 検索パラメータを使用して、住所の郵便番号によるLocationの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Location?address-postalcode={string}

```

例：

```
GET [base]/Location?address-postalcode=1130033

```

指定された住所の郵便番号が一致するLocationリソースを含むBundleを取得する。

##### 追加検索パラメータ

追加検索パラメータは定義しない。

### サンプル

* [**診察室**](Location-jp-location-example-examinationroom.md)
* [**手術室**](Location-jp-location-example-ope.md)
* [**病棟**](Location-jp-location-example-ward.md)

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
  "id" : "jp-location",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location",
  "version" : "1.3.0-dev",
  "name" : "JP_Location",
  "title" : "JP Core Location Profile",
  "status" : "active",
  "date" : "2023-10-31",
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
  "description" : "このプロファイルはLocationリソースに対して、所在場所のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Location",
        "path" : "Location",
        "short" : "物理的な場所の詳細情報と位置情報",
        "definition" : "サービスが提供され、リソースとそれに関わる人たちが存在する物理的な場所の詳細情報と位置情報。"
      },
      {
        "id" : "Location.identifier",
        "path" : "Location.identifier",
        "short" : "ユーザに場所を特定する一意のコードまたは番号",
        "definition" : "ユーザに場所を特定する一意のコードまたは番号",
        "requirements" : "登記内の組織ラベルの場所。これらを追跡する必要がある。"
      },
      {
        "id" : "Location.status",
        "path" : "Location.status",
        "short" : "active | suspended | inactive / アクティブ|中断|非アクティブ",
        "definition" : "statusプロパティは、operationStatus、またはロケーションに構成されている場合はスケジュール/スロットによってカバーされる可能性がある現在の値ではなく、リソースの一般的な可用性をカバーする。",
        "comment" : "FHIR文字列はサイズが1MBを超えてはならないことに注意すること"
      },
      {
        "id" : "Location.operationalStatus",
        "path" : "Location.operationalStatus",
        "short" : "ロケーションの運用ステータス（通常、ベッド/部屋のみ）",
        "definition" : "稼働状況には、ベッドに最も関連する稼働値が含まれる（ただし、隔離ユニット/透析椅子などの部屋/ユニット/椅子などにも適用できる）。これは通常、汚染、ハウスキーピング、およびメンテナンスなどの他のアクティビティなどの概念をカバーしている。",
        "comment" : "コードは、SNOMED CTなどの非常に形式的な定義まで、列挙またはコードリストで非常にカジュアルに定義できる。詳細については、HL7 v3コア原則を参照すること。"
      },
      {
        "id" : "Location.name",
        "path" : "Location.name",
        "short" : "人間が使用する場所の名前",
        "definition" : "人間が使用する場所の名前。一意である必要はない。",
        "comment" : "場所の名前が変更された場合は、古い名前をエイリアス列に入力して、検索で検索できるようにすることを検討すべきである。"
      },
      {
        "id" : "Location.alias",
        "path" : "Location.alias",
        "short" : "その場所が過去に知られていた、または以前から知られていた別名のリスト",
        "definition" : "その場所が過去に知られていた、または以前から知られていた別名のリスト",
        "comment" : "エイリアス/歴史的な名前に関連付けられた日付はない。これは、名前がいつ使用されたかを追跡するためではなく、古い名前でも場所を特定できるように検索を支援するためのものである。",
        "requirements" : "「時間の経過とともに、場所や組織は多くの変化を遂げ、さまざまな名前で知られるようになる。  \n場所が知られている以前の名前を知っていることを検索することは非常に役に立つ。」"
      },
      {
        "id" : "Location.description",
        "path" : "Location.description",
        "short" : "名前以外の場所を識別するための詳細情報として表示できる場所に関する追加の詳細",
        "definition" : "場所の説明。場所の検索や参照に役立つ。",
        "comment" : "FHIR文字列はサイズが1MBを超えてはならないことに注意すること",
        "requirements" : "人間は、正しい場所が特定されたことを確認するために追加情報を必要とする。"
      },
      {
        "id" : "Location.mode",
        "path" : "Location.mode",
        "short" : "instance | kind / インスタンス|種類",
        "definition" : "リソースインスタンスが特定の場所を表すか、場所のクラスを表すかを示す。",
        "comment" : "ロケーションがロケーションのクラスであるかどうかによって、その使用方法と理解方法が変わるため、これは修飾子としてラベル付けされる。",
        "requirements" : "スケジュールや順番に場所リソースを使用する場合、特定の場所ではなく場所のクラスを参照できる必要がある。"
      },
      {
        "id" : "Location.type",
        "path" : "Location.type",
        "short" : "実行される機能のタイプ",
        "definition" : "その場所で実行される機能のタイプを示す。",
        "comment" : "すべての用語の使用がこの一般的なパターンに適合するわけではない。場合によっては、モデルはCodeableConceptを使用せず、コーディングを直接使用して、テキスト、コーディング、翻訳、および要素と前後の調整間の関係を管理するための独自の構造を提供する必要がある。"
      },
      {
        "id" : "Location.telecom",
        "path" : "Location.telecom",
        "short" : "所在地の連絡先",
        "definition" : "その場所で利用可能な通信機器の連絡先。これには、電話番号、ファックス番号、携帯電話番号、電子メールアドレス、ウェブサイトなどが含まれる。"
      },
      {
        "id" : "Location.address",
        "path" : "Location.address",
        "definition" : "物理的な場所。",
        "comment" : "追加のアドレスは、Location リソースの別のインスタンスを使用して記録するか、Organization を介して記録する必要がある。",
        "requirements" : "場所が訪問できる場合は、住所を把握しておく必要がある。"
      },
      {
        "id" : "Location.physicalType",
        "path" : "Location.physicalType",
        "short" : "場所の物理的な形態",
        "definition" : "場所の物理的な形、例えば建物、部屋、車両、道路。",
        "comment" : "すべての用語の使用がこの一般的なパターンに適合するわけではない。いくつかのケースでは、モデルはCodeableConceptを使用せず、Codingを直接使用し、テキスト、コーディング、翻訳、要素間の関係、および前後の調整を管理するための独自の構造を提供することが望ましい。",
        "requirements" : "クエリで関連する場所を表示するためには、場所を分類する必要がある。"
      },
      {
        "id" : "Location.position",
        "path" : "Location.position",
        "definition" : "WGS84 データム（KML で使用されている座標系と同じ）を用いて表現された Location の絶対地理的位置。",
        "requirements" : "モバイルアプリケーションや自動化されたルート検索では、位置情報の正確な位置を知る必要がある。"
      },
      {
        "id" : "Location.position.longitude",
        "path" : "Location.position.longitude",
        "short" : "WGS84データの経度",
        "definition" : "経度。値の領域及び解釈は、KML の longitude 要素のテキストと同様である（後述）。",
        "comment" : "IEEE型の浮動小数点型は使用せず、真の10進数のように動作し、精度が組み込まれているものを使用すること（例：JavaのBigInteger）。"
      },
      {
        "id" : "Location.position.latitude",
        "path" : "Location.position.latitude",
        "short" : "WGS84データの緯度",
        "definition" : "緯度。値領域及び解釈は、KML の latitude 要素のテキストと同様である（後述）。",
        "comment" : "IEEE型の浮動小数点型は使用せず、真の10進数のように動作し、精度が組み込まれているものを使用すること（例：JavaのBigInteger）。"
      },
      {
        "id" : "Location.position.altitude",
        "path" : "Location.position.altitude",
        "short" : "WGS84データによる高度",
        "definition" : "高度。値領域及び解釈は、KML の altitude 要素のテキストと同様である（後述）。",
        "comment" : "IEEE型の浮動小数点型は使用せず、真の10進数のように動作し、精度が組み込まれているものを使用すること（例：JavaのBigInteger）。"
      },
      {
        "id" : "Location.managingOrganization",
        "path" : "Location.managingOrganization",
        "short" : "プロビジョニングと維持管理を担当する組織",
        "definition" : "場所のプロビジョニングと維持管理を担当する組織。",
        "comment" : "これは、この場所がサービスを提供する組織階層の一部として使用することもできる。これらのサービスは、HealthcareServiceリソースを介して定義することができる。",
        "requirements" : "場所を管理している人を知る必要がある。",
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
        "id" : "Location.partOf",
        "path" : "Location.partOf",
        "short" : "この場所が物理的に存在するもう一つの場所",
        "definition" : "この場所が物理的に存在するもう一つの場所。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "requirements" : "位置情報、表示、識別のためには、他のどの場所の内部にどの場所があるかを知ることが重要である。",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
          }
        ]
      },
      {
        "id" : "Location.hoursOfOperation",
        "path" : "Location.hoursOfOperation",
        "short" : "この場所は通常、1週間のうち何日/時間帯に営業している",
        "definition" : "この場所が週に何日あるいは何時間オープンしているか。",
        "comment" : "この種の情報は、一般的にディレクトリやウェブサイトに掲載されており、施設が利用可能な時間帯を顧客に通知している。  \nその場所の特定のサービスは、その場所の時間よりも短い（または長い）独自の時間を持っている場合がある。"
      },
      {
        "id" : "Location.hoursOfOperation.daysOfWeek",
        "path" : "Location.hoursOfOperation.daysOfWeek",
        "short" : "mon | tue | wed | thu | fri | sat | sun / 月｜火｜水｜木｜金｜土｜日",
        "definition" : "開始時刻と終了時刻の間に利用可能な曜日を示す。",
        "comment" : "FHIR文字列のサイズは1MBを超えてはならないことに注意すること。"
      },
      {
        "id" : "Location.hoursOfOperation.allDay",
        "path" : "Location.hoursOfOperation.allDay",
        "short" : "その場所は終日営業している",
        "definition" : "その場所は終日営業している。"
      },
      {
        "id" : "Location.hoursOfOperation.openingTime",
        "path" : "Location.hoursOfOperation.openingTime",
        "short" : "場所が開く時間",
        "definition" : "場所が開く時間"
      },
      {
        "id" : "Location.hoursOfOperation.closingTime",
        "path" : "Location.hoursOfOperation.closingTime",
        "definition" : "場所が閉まる時間"
      },
      {
        "id" : "Location.availabilityExceptions",
        "path" : "Location.availabilityExceptions",
        "short" : "利用可能の例外についての説明",
        "definition" : "場所が私たちのものを開くときの説明は、通常、例えば、祝日の可用性とは異なる。  \n営業時間に詳細な通常のサイトの利用可能性のすべての可能性のある例外を簡潔に説明する。"
      },
      {
        "id" : "Location.endpoint",
        "path" : "Location.endpoint",
        "short" : "場所のために運営されているサービスへのアクセスを提供する技術的なエンドポイント",
        "definition" : "場所のために運営されているサービスへのアクセスを提供する技術的なエンドポイント。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "requirements" : "組織は、さまざまなサービスを提供するさまざまな場所に異なるシステムを持っている可能性があり、それらに接続する方法や目的のための技術的な接続の詳細を定義できる必要がある。"
      }
    ]
  }
}

```
