# JP Core ServiceRequest Order Medication Requesting Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Medication Requesting Profile**

## Resource Profile: JP Core ServiceRequest Order Medication Requesting Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Medication_Requesting
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ServiceRequest_Order_Medication_Requesting
* **項目**: *Title*
  * **内容**: JP Core ServiceRequest Order Medication Requesting Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-10-04 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはJP_ServiceRequest_Commonプロファイルから派生したもので、処方オーダおよび注射オーダのヘッダー情報（オーダ単位の依頼情報）を表現するための制約を記述したものである。個々の薬剤の処方・注射指示はJP_MedicationRequestまたはJP_MedicationRequest_Injectionで表現する。 

本プロファイルは、[ServiceRequestリソース](StructureDefinition-jp-servicerequest-common.md)のうち、処方オーダおよび注射オーダの**ヘッダー情報**（オーダ単位の依頼情報）を表現するための定義である。ここでは、ServiceRequestリソースに対して本プロファイルに準拠する場合に必須となる要素や、用語、検索パラメータを定義する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定する。

* オーダリングシステムで医師等が発行した処方オーダ・注射オーダを、薬剤部門システムなどへ送信する際に、オーダ単位の情報（オーダ番号、オーダ種別、処方区分／注射区分など）を表現する
* 処方オーダ・注射オーダの一覧を、オーダ種別や処方区分／注射区分によって検索・表示する

## スコープ

本プロファイルは[JP_ServiceRequest_Common](StructureDefinition-jp-servicerequest-common.md)プロファイルから派生したもので、処方オーダおよび注射オーダのヘッダー情報を表現する。

オーダリングシステムで医師等が発行する処方オーダ・注射オーダは、一般に次の2階層で構成される。

* オーダ単位のヘッダー情報（オーダ番号、オーダ種別、処方区分／注射区分、依頼者、依頼日時、対象患者など）
* 個々の薬剤の処方・注射指示（薬剤、用法、用量、投与期間など）

本プロファイルは前者を表現する。後者は[JP_MedicationRequest](StructureDefinition-jp-medicationrequest.md)（内服・外用）または[JP_MedicationRequest_Injection](StructureDefinition-jp-medicationrequest-injection.md)（注射）で表現する。

ServiceRequestはオーダ種別（処方、注射、検体検査、放射線検査など）ごとに派生プロファイルを定義する方針である。本プロファイルは処方オーダと注射オーダを対象とし、`category`でどちらのオーダかを区別する。

## 関連するリソースとの関係性

本プロファイルでは、配下の[JP_MedicationRequest](StructureDefinition-jp-medicationrequest.md)および[JP_MedicationRequest_Injection](StructureDefinition-jp-medicationrequest-injection.md)との関連を要素の制約として定義しない。関連付けの方法は、注意事項の「配下のMedicationRequestとの関連付け」を参照のこと。

## プロファイル定義

**Usages:**

* Examples for this Profile: [ServiceRequest/jp-servicerequest-order-medication-requesting-example-1](ServiceRequest-jp-servicerequest-order-medication-requesting-example-1.md) and [ServiceRequest/jp-servicerequest-order-medication-requesting-example-2](ServiceRequest-jp-servicerequest-order-medication-requesting-example-2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-servicerequest-order-medication-requesting)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-servicerequest-order-medication-requesting.csv), [Excel](StructureDefinition-jp-servicerequest-order-medication-requesting.xlsx), [Schematron](StructureDefinition-jp-servicerequest-order-medication-requesting.sch) 

### 必須要素

次のデータ項目は必須（**SHALL**）である。

* status : オーダの状態
* intent : オーダの意図（通常は order）
* subject : 対象患者
* category : オーダの分類 
* category[orderCategory] : オーダ種別（[JP_ServiceRequestOrderCategory_VS](ValueSet-jp-servicerequest-ordercategory-vs.md)から、処方オーダは prescription、注射オーダは injection を指定する）
 

### MustSupport

本プロファイルではMustSupportを定義しない。

### Extensions定義

本プロファイルで追加定義された拡張はない。

### 用語定義

本プロファイルで追加定義された用語は以下のとおりである。

* [JP_ServiceRequestOrderCategory_CS](CodeSystem-jp-servicerequest-ordercategory-cs.md) : オーダ種別を示すコードシステム
* [JP_ServiceRequestOrderCategory_VS](ValueSet-jp-servicerequest-ordercategory-vs.md) : オーダ種別を示す値セット

## 注意事項

### categoryの使い方

`category`をスライスし、次の2種類のコードを格納する。

| | | | |
| :--- | :--- | :--- | :--- |
| orderCategory | 1..1 | オーダ種別（処方／注射） | [JP_ServiceRequestOrderCategory_VS](ValueSet-jp-servicerequest-ordercategory-vs.md)（required） |
| medicationCategory | 0..* | 処方区分または注射区分 | `JP_MedicationCategory_VS`（jpfhir-terminology、required） |

#### オーダ種別（orderCategory）

| | | |
| :--- | :--- | :--- |
| prescription | 処方 | 処方オーダ（内服・外用など） |
| injection | 注射 | 注射オーダ（注射・点滴・注入など） |

#### 処方区分・注射区分（medicationCategory）

[JP_MedicationRequest](StructureDefinition-jp-medicationrequest.md)および[JP_MedicationRequest_Injection](StructureDefinition-jp-medicationrequest-injection.md)の`category`と同じコード体系を使用する。オーダ種別が「処方」の場合は処方区分を、「注射」の場合は注射区分を指定する。複数の観点（例：入院処方かつ定期処方）を表す場合は繰り返して指定する。

| | | |
| :--- | :--- | :--- |
| 処方 | MERIT-9処方オーダ表7（`http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS`）、JHSP0007表（`http://jpfhir.jp/fhir/core/CodeSystem/JHSP0007`） | OHP 外来処方、OHO 院外処方、IHP 入院処方、ORD 定期処方、XTR 臨時処方、DCG 退院処方、BDP 持参薬処方 |
| 注射 | JHSI0001表（`http://jpfhir.jp/fhir/core/CodeSystem/JHSI0001`）、MERIT-9処方オーダ表7 | FTP 定時処方、EMP 至急処方、PFP 事後処方、OTP 頓用処方、IHP 入院処方 |

処方区分と注射区分は同じ値セットに含まれるため、スライスは1つ（medicationCategory）とし、どちらを指定するかはオーダ種別で判断する。本プロファイルでは、オーダ種別と区分コードの組み合わせを制約しない。

スライス名は、既存プロファイルで用いている`first`／`second`ではなく、格納するコードの意味が分かる名前（orderCategory、medicationCategory）とした。

#### バインディング強度

orderCategoryスライスおよびmedicationCategoryスライスは、いずれも固定値を持たず、バインドする値セットによってスライスを判別する。このため、両スライスのバインディング強度を required とした。なお、[JP_MedicationRequest](StructureDefinition-jp-medicationrequest.md)および[JP_MedicationRequest_Injection](StructureDefinition-jp-medicationrequest-injection.md)の`category`は preferred であり、MedicationRequest側で値セット外のコードを使用している場合でも、本プロファイルのmedicationCategoryスライスには値セット内のコードを指定する必要がある。

```
"category": [
  {
    "coding": [{
      "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequestOrderCategory_CS",
      "code": "prescription",
      "display": "処方"
    }]
  },
  {
    "coding": [{
      "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS",
      "code": "OHP",
      "display": "外来処方"
    }]
  },
  {
    "coding": [{
      "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS",
      "code": "OHO",
      "display": "院外処方"
    }]
  }
]

```

### 配下のMedicationRequestとの関連付け

本プロファイルでは配下のMedicationRequestとの関連を要素の制約として定義しない。本節で示す関連付けの方法は参考情報であり、本プロファイルへの準拠を判断する要件ではない。関連付けが必要な場合は、次のいずれかの方法で表現することができる。

#### MedicationRequest.basedOnによる参照

個々の[JP_MedicationRequest](StructureDefinition-jp-medicationrequest.md)／[JP_MedicationRequest_Injection](StructureDefinition-jp-medicationrequest-injection.md)の`basedOn`から、本プロファイルに準拠したServiceRequestを参照する。両プロファイルの`basedOn`は`JP_ServiceRequest_Common`への参照を許容しており、本プロファイルはその派生であるため、追加の制約なしに利用できる。

```
"basedOn": [
  { "reference": "ServiceRequest/jp-servicerequest-order-medication-requesting-example-1" }
]

```

あわせて、ServiceRequestの`requisition`とMedicationRequestの`groupIdentifier`に同じオーダ番号（system：`http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier`）を設定すると、参照を解決しなくても同じオーダに属するリソースを特定できる。なお、MedicationRequestの`identifier[requestIdentifier]`には、オーダ番号を接頭部に持つ薬剤ごとの識別子（例：オーダ番号`1234567890`に対して`1234567890.1.1`）を設定する。

```
"groupIdentifier": {
  "system": "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
  "value": "1234567890"
}

```

この方法では参照の向きが子（MedicationRequest）から親（ServiceRequest）になるため、親のServiceRequestを取得しただけでは配下のMedicationRequestを辿ることができない。親と子をまとめて取得する場合は、`_revinclude`を用いて検索する必要がある（サーバーが`_revinclude`に対応している場合に限る）。

```
GET [base]/ServiceRequest?_id=jp-servicerequest-order-medication-requesting-example-1&_revinclude=MedicationRequest:based-on

```

#### orderDetailの拡張による参照

ServiceRequest側から配下のMedicationRequestを参照する必要がある場合は、`orderDetail`に拡張を追加し、MedicationRequestへの参照を格納する方法が考えられる。この方法では、親のServiceRequestを取得するだけで配下のMedicationRequestへの参照が得られ、`_include`での取得も可能になる。

この拡張はJP Coreでは定義していないため、利用する場合は派生プロファイルで定義すること。なお、`orderDetail`を使用する場合は、基底仕様の制約（prr-1）により`code`も設定する必要がある。

以下は、拡張URLを`http://example.org/fhir/StructureDefinition/servicerequest-orderdetail-medicationrequest`（例示用）とし、1つのMedicationRequestにつき1つの`orderDetail`を設定した記述例である。

```
{
  "resourceType": "ServiceRequest",
  "id": "example-orderdetail",
  "meta": {
    "profile": [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Medication_Requesting"
    ]
  },
  "requisition": {
    "system": "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
    "value": "1234567890"
  },
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [{
        "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequestOrderCategory_CS",
        "code": "prescription",
        "display": "処方"
      }]
    }
  ],
  "code": {
    "text": "処方オーダ"
  },
  "orderDetail": [
    {
      "extension": [{
        "url": "http://example.org/fhir/StructureDefinition/servicerequest-orderdetail-medicationrequest",
        "valueReference": {
          "reference": "MedicationRequest/jp-medicationrequest-example-1"
        }
      }],
      "text": "RP1 ムコダイン錠２５０ｍｇ"
    },
    {
      "extension": [{
        "url": "http://example.org/fhir/StructureDefinition/servicerequest-orderdetail-medicationrequest",
        "valueReference": {
          "reference": "MedicationRequest/jp-medicationrequest-example-2"
        }
      }],
      "text": "RP2 パンスポリンＴ錠１００　１００ｍｇ"
    }
  ],
  "subject": {
    "reference": "Patient/jp-patient-example-1"
  },
  "authoredOn": "2026-04-01T10:00:00+09:00"
}

```

### その他

* 基底のServiceRequestは「1つのリソースで1つの処置を要求する」ことを前提とする。本プロファイルでは、1つのServiceRequestで1件の処方オーダまたは注射オーダ（オーダ単位）を表し、オーダ内の個々の薬剤指示はMedicationRequestで表す。
* `code`は本プロファイルでは制約しない。オーダ名称などを表す場合は`code.text`を使用してよい。

## 利用方法

#### 検索パラメータ

[ServiceRequest共通の検索パラメータ](StructureDefinition-jp-servicerequest-common.md)が利用される。本プロファイルでの主な利用例を以下に示す。

| | | | |
| :--- | :--- | :--- | :--- |
| category | token | オーダ種別、処方区分／注射区分による検索 | GET [base]/ServiceRequest?category=http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequestOrderCategory_CS|prescription |
| requisition | token | オーダ番号による検索 | GET [base]/ServiceRequest?requisition=http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier|1234567890 |

### サンプル

* [**処方オーダ**](ServiceRequest-jp-servicerequest-order-medication-requesting-example-1.md)
* [**注射オーダ**](ServiceRequest-jp-servicerequest-order-medication-requesting-example-2.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-servicerequest-order-medication-requesting",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Medication_Requesting",
  "version" : "1.3.0-dev",
  "name" : "JP_ServiceRequest_Order_Medication_Requesting",
  "title" : "JP Core ServiceRequest Order Medication Requesting Profile",
  "status" : "active",
  "date" : "2026-10-04",
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
  "description" : "このプロファイルはJP_ServiceRequest_Commonプロファイルから派生したもので、処方オーダおよび注射オーダのヘッダー情報（オーダ単位の依頼情報）を表現するための制約を記述したものである。個々の薬剤の処方・注射指示はJP_MedicationRequestまたはJP_MedicationRequest_Injectionで表現する。",
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
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest",
        "short" : "処方・注射オーダのヘッダー情報",
        "definition" : "処方オーダおよび注射オーダのヘッダー情報（オーダ単位の依頼情報）を表現するServiceRequestリソース。"
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "サービスリクエストの分類【詳細参照】",
        "definition" : "検索、分類、表示の目的でサービスを分類するコード。【JP Core仕様】オーダ種別（処方／注射）を必須とし、処方区分または注射区分を任意で指定する。",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.category:orderCategory",
        "path" : "ServiceRequest.category",
        "sliceName" : "orderCategory",
        "short" : "オーダ種別（処方／注射）【詳細参照】",
        "definition" : "オーダ種別を示すコード。【JP Core仕様】JP_ServiceRequestOrderCategory_VSから、処方オーダの場合は「prescription」（処方）、注射オーダの場合は「injection」（注射）を指定する。",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ServiceRequestOrderCategory_VS"
        }
      },
      {
        "id" : "ServiceRequest.category:orderCategory.coding",
        "path" : "ServiceRequest.category.coding",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.category:orderCategory.coding.system",
        "path" : "ServiceRequest.category.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequestOrderCategory_CS"
      },
      {
        "id" : "ServiceRequest.category:orderCategory.coding.code",
        "path" : "ServiceRequest.category.coding.code",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.category:medicationCategory",
        "path" : "ServiceRequest.category",
        "sliceName" : "medicationCategory",
        "short" : "処方区分／注射区分【詳細参照】",
        "definition" : "処方区分または注射区分を示すコード。【JP Core仕様】オーダ種別が「prescription」（処方）の場合は処方区分を、「injection」（注射）の場合は注射区分を指定する。",
        "comment" : "【JP Core仕様】JP_MedicationRequestおよびJP_MedicationRequest_Injectionのcategoryと同じコード体系（MERIT-9処方オーダ表7、JAHIS処方データ交換規約JHSP0007表、JAHIS注射データ交換規約JHSI0001表）を使用する。処方区分の例：外来処方（OHP）、院外処方（OHO）、入院処方（IHP）、定期処方（ORD）、臨時処方（XTR）、退院処方（DCG）、持参薬処方（BDP）。注射区分の例：定時処方（FTP）、至急処方（EMP）、事後処方（PFP）、頓用処方（OTP）。複数の観点（例：入院処方かつ定期処方）を表す場合は繰り返して指定する。処方区分と注射区分のどちらを指定するかはオーダ種別に従い、本プロファイルでは制約しない。",
        "min" : 0,
        "max" : "*",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationCategory_VS"
        }
      }
    ]
  }
}

```
