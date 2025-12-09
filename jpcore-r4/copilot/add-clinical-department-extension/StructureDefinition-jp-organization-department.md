# JP Core Organization Department Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Department Profile**

## Resource Profile: JP Core Organization Department Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization_Department
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Organization_Department
* **項目**: *Title*
  * **内容**: JP Core Organization Department Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-10-28 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはJP_Organizationリソースに対して、診療科情報のデータを送受信するための制約と拡張を定めたものである。診療科を表すOrganizationとして利用することを想定している。 

医療機関内の診療科、部門を表すOrganizationプロファイル。病院、診療所などの医療機関に所属する診療科や部署を表現する。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 診療科名または診療科コードによる検索
* 医療機関内の診療科・部門の管理
* 各種医療リソース（処方、検査依頼、予約、病名等）における診療科情報の参照

国内の医療情報交換では診療科の情報を必要とするケースが多いが、FHIRの各リソースには診療科を格納する標準要素が用意されていない。そのため、診療科情報を一貫した方法で表現し、相互運用性を高めることを目的とする。

## スコープ

本プロファイルは、JP_Organizationプロファイルを継承し、診療科・部門に特化した制約を定義している。

* Organization.typeには必ず`dept`（部門）コードを設定する
* 診療科コードとしてSS-MIX2診療科コードの使用を推奨
* partOf要素により所属医療機関（親組織）を参照することを推奨

診療科名称は医療機関ごとに異なることが多く、統一したterminologyを作成することが困難である。そのため、本プロファイルでは以下の表現方法を許容する：

1. SS-MIX2診療科コード等の標準コードを使用（推奨）
1. 医療機関固有の診療科名称をOrganization.nameに設定
1. 両方を併用

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core Department Extension](StructureDefinition-jp-department.md)
* Examples for this Profile: [第一内科](Organization-jp-organization-department-example-01.md) and [整形外科](Organization-jp-organization-department-example-02.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-organization-department)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-organization-department.csv), [Excel](StructureDefinition-jp-organization-department.xlsx), [Schematron](StructureDefinition-jp-organization-department.sch) 

### 必須要素

本プロファイルでは、以下の要素を必須としている。

* Organization.type: 診療科・部門であることを示すため、`dept`コードの設定が必須

### Extensions定義

本プロファイルでは、JP_Organizationプロファイルで定義されている拡張を継承して使用できる。

* [JP_OrganizationCategory](StructureDefinition-jp-organization-insuranceorganizationcategory.md) 
* 点数表コード１桁の情報を表す
 
* [JP_OrganizationNo](StructureDefinition-jp-organization-insuranceorganizationno.md) 
* 保険医療機関番号７桁を表す
 
* [JP_PrefectureNo](StructureDefinition-jp-organization-prefectureno.md) 
* 都道府県番号2桁を表す
 

### 診療科コード

Organization.typeには以下の2種類のコードを設定する：

1. **必須**:`http://terminology.hl7.org/CodeSystem/organization-type#dept`
* この組織が部門・診療科であることを示す固定値

1. **推奨**: SS-MIX2診療科コード（`http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment`）
* 診療科の種類を示すコード（例：01=内科、16=整形外科）
* 2桁または3桁のコードを使用

診療科名称は医療機関ごとに異なることが多いため、以下の表現方法を組み合わせて使用することを推奨する：

* Organization.name: 医療機関固有の診療科名称（例：「第一内科」「消化器腫瘍外科」）
* Organization.type: SS-MIX2診療科コード等の標準コード
* Organization.type.text: 診療科名称のテキスト表現

### 所属医療機関の参照

診療科は通常、医療機関に所属するため、Organization.partOf要素で親組織（医療機関）を参照することを推奨する。

```
{
  "resourceType": "Organization",
  "type": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/organization-type",
          "code": "dept"
        }
      ]
    }
  ],
  "name": "内科",
  "partOf": {
    "reference": "Organization/hospital-001",
    "display": "健康第一病院"
  }
}

```

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

JP_Organizationプロファイルの検索パラメータを継承する。

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Organization?identifier=12345 |
| SHOULD | name | string | GET [base]/Organization?name=内科 |
| SHOULD | type | token | GET [base]/Organization?type=dept |
| SHOULD | partof | reference | GET [base]/Organization?partof=Organization/hospital-001 |

##### 診療科固有の検索例

1. 診療科タイプでの検索

```
GET [base]/Organization?type=http://terminology.hl7.org/CodeSystem/organization-type|dept

```


1. SS-MIX2診療科コードでの検索

```
GET [base]/Organization?type=http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment|01

```


1. 所属医療機関での検索

```
GET [base]/Organization?partof=Organization/hospital-001

```


### サンプル

* [**内科診療科**][jp-organization-department-example-01]
* [**整形外科診療科**][jp-organization-department-example-02]

## 注意事項

* 診療科名称は医療法施行規則に規定されている「標榜診療科」を超えて、医療機関ごとに独自の名称を持つことが多い
* 同じ医師が外来と入院で異なる診療科に所属するケースなど、所属マトリックスが複雑になる場合がある
* 診療科情報を使用する際は、用途（診療報酬請求、患者管理、統計等）に応じて適切な表現方法を選択すること

## その他、参考文献、リンク等

1. 厚生労働省医政局、広告可能な標榜診療科名の改訂について、医政発 第0331042号、2008年、[https://www.mhlw.go.jp/topics/bukyoku/isei/kokokukisei/dl/koukokukanou.pdf](https://www.mhlw.go.jp/topics/bukyoku/isei/kokokukisei/dl/koukokukanou.pdf)
1. 診療科区分、[https://www.mhlw.go.jp/topics/2009/05/dl/tp0521-1a_0053.pdf](https://www.mhlw.go.jp/topics/2009/05/dl/tp0521-1a_0053.pdf)
1. SS-MIX2 標準化ストレージ 仕様書 Ver.1.2h[https://www.jami.jp/jamistd/docs/SS-MIX2/h/SS-MIX2_StndrdStrgSpecVer.1.2h.pdf](https://www.jami.jp/jamistd/docs/SS-MIX2/h/SS-MIX2_StndrdStrgSpecVer.1.2h.pdf)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-organization-department",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization_Department",
  "version" : "1.3.0-dev",
  "name" : "JP_Organization_Department",
  "title" : "JP Core Organization Department Profile",
  "status" : "active",
  "date" : "2025-10-28",
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
  "description" : "このプロファイルはJP_Organizationリソースに対して、診療科情報のデータを送受信するための制約と拡張を定めたものである。診療科を表すOrganizationとして利用することを想定している。",
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
  "type" : "Organization",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization",
        "short" : "診療科を表す組織情報",
        "definition" : "医療機関内の診療科、部門を表すOrganization。病院、診療所などの医療機関に所属する診療科や部署を表現する。",
        "comment" : "診療科は医療機関（Organization）の一部として、partOf要素を使用して親組織を参照することが推奨される。診療科の種別はtype要素でdept（部門）を指定する。"
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "$this"
            }
          ],
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Organization.type:departmentType",
        "path" : "Organization.type",
        "sliceName" : "departmentType",
        "short" : "診療科・部門を示す組織タイプ",
        "definition" : "この組織が診療科・部門であることを示すコード。固定値でdept（部門）を設定する。",
        "min" : 1,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
              "code" : "dept"
            }
          ]
        },
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/organization-type"
        }
      },
      {
        "id" : "Organization.partOf",
        "path" : "Organization.partOf",
        "short" : "所属する医療機関",
        "definition" : "この診療科が所属する上位組織（医療機関）への参照",
        "comment" : "診療科は通常、医療機関に所属するため、partOf要素で親組織を参照することが推奨される。"
      }
    ]
  }
}

```
