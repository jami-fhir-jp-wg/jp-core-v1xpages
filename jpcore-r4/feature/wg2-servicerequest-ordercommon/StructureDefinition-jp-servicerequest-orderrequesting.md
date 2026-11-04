# JP Core ServiceRequest Order Requesting Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Requesting Profile**

## Resource Profile: JP Core ServiceRequest Order Requesting Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_OrderRequesting
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_ServiceRequest_OrderRequesting
* **項目**: *Title*
  * **内容**: JP Core ServiceRequest Order Requesting Profile
* **項目**: *Status*
  * **内容**: Active ( 2026-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
本プロファイルは、オーダエントリシステムで作成されるオーダのヘッダー情報を記述するためにFHIR ServiceRequestリソースを使用するにあたっての、最低限の制約を記述したものである。 

## スコープ

JP_ServiceRequest_OrderRequestingプロファイル（以下、「本プロファイル」と呼ぶ）は、JP_ServiceRequest_OrderCommonプロファイルの派生プロファイルであり、主にオーダエントリシステムで作成されるオーダのヘッダー情報を記述するため、準拠するべき必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

* 本プロファイルは、オーダエントリシステム（オーダ機能を持つ電子カルテシステムを含む）で作成されるオーダ全体のヘッダー情報をスコープとする。
* 本プロファイルは、オーダに含まれる項目レベルの詳細情報はスコープ外とする。

## プロファイル定義

**Usages:**

* Examples for this Profile: [ServiceRequest/jp-servicerequest-orderrequesting-example-1](ServiceRequest-jp-servicerequest-orderrequesting-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-servicerequest-orderrequesting)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-servicerequest-orderrequesting.csv), [Excel](StructureDefinition-jp-servicerequest-orderrequesting.xlsx), [Schematron](StructureDefinition-jp-servicerequest-orderrequesting.sch) 

### 必須要素

本プロファイルでは、次の要素を持たなければならない。

* code : コードは必須である
* code.text : コードに含まれるテキストは必須である

### Extensions定義

本プロファイルでは、追加の拡張は定義されていない。親プロファイルで定義されている拡張はそのまま使用する。

### 制約一覧

本プロファイルでは、「必須要素」に記載されている項目以外の制約は定義されていない。

### 項目の追加

本プロファイルでは、オーダ全体のヘッダー情報として、以下の項目の記述方法を定義する。

* 表示名称（code要素を使用）：オーダを表す表示名称を記述する。

### 利用方法

#### Search Parameter一覧

本プロファイルでは、リソース対する固有の検索パラメータは定義されていない。

#### Operation一覧

本プロファイルでは、リソースに対する固有の操作は定義されていない。

#### サンプル

* [**胸部ＣＴ検査**](ServiceRequest-jp-servicerequest-orderrequesting-example-1.md)

## 注意事項

### 記述の単位について

本プロファイルでは、ServiceRequestリソースの記述はオーダ単位とする。

### オーダの階層構造の記述方法について

本プロファイルでは、親プロファイルである「[JP_ServiceRequest_OrderCommon](StructureDefinition-jp-servicerequest-ordercommon.md)」の注意事項にも書かれている内容を踏襲し、本プロファイルによるオーダ単位のServiceRequestと項目単位のServiceRequestとを関連付ける方法は定めない。ただし、ユースケースレベルでbasedOn要素等で関連付けることを妨げるものではない。

### 表示名称の記述方法について

オーダ全体を表す表示名称を、code要素を使用してCodeableConcept型で記述する。code.text要素は必須であり、string型で表示名称を記述する。コード化されている場合は、code.coding要素も使用してもよい。ただし、日本ではオーダの表示名称の標準的なマスタが整備されていないため、推奨する標準コードは特にない。

### 親プロファイルで定義されている属性について

親プロファイルである「[JP_ServiceRequest_OrderCommon](StructureDefinition-jp-servicerequest-ordercommon.md)」で定義されている属性については、本プロファイルにおいてもそのまま使用する。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-servicerequest-orderrequesting",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_OrderRequesting",
  "version" : "1.3.0-dev",
  "name" : "JP_ServiceRequest_OrderRequesting",
  "title" : "JP Core ServiceRequest Order Requesting Profile",
  "status" : "active",
  "date" : "2026-10-31",
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
  "description" : "本プロファイルは、オーダエントリシステムで作成されるオーダのヘッダー情報を記述するためにFHIR ServiceRequestリソースを使用するにあたっての、最低限の制約を記述したものである。",
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
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_OrderCommon",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest",
        "path" : "ServiceRequest",
        "short" : "サービスリクエスト（ヘッダー情報）",
        "definition" : "サービスリクエストのヘッダー情報"
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.code.text",
        "path" : "ServiceRequest.code.text",
        "min" : 1,
        "mustSupport" : true
      }
    ]
  }
}

```
