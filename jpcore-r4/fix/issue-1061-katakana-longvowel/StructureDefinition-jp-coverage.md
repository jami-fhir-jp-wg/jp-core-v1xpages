# JP Core Coverage Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Coverage Profile**

## Resource Profile: JP Core Coverage Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Coverage
* **項目**: *Title*
  * **内容**: JP Core Coverage Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはCoverageリソースに対して、保険・公費のデータを送受信するための基礎となる制約と拡張を定めたものである。 

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 病院の電子カルテシステムや医事システム、診療所や調剤薬局のシステム、介護サービスを提供する施設のシステム等において、サービス利用者（患者）の支払いに適用する保険や公費の種類、自己負担割合や自己負担上限額などを管理する
* サービス利用者や保険者が実際に支払う負担額を管理する
* サービス利用者や保険者を除く個人又は組織が支払いの全額又は一部に責任を持つ場合の負担額を管理する

## スコープ

Coverageリソースは、医療・介護保険における識別子・記述子を提供することを想定しており、典型的には保険証に記載される情報であり、医療や介護サービスの提供に対する対価として、一部または全ての支払いに使用される可能性がある。

このリソースは、保険者以外の個人または組織が医療費の一部の支払いに責任を持つ「自己負担」を登録するためにも使用できる。ここで定義する「自己負担」は、患者の支払いの保証人になることとは別のものであることに留意する。

Coverage リソースは、FHIRワークフローの観点からは「イベント」に該当するリソースである。詳細はWorkflowの項目を参照のこと。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md), [JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md) and [JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* Examples for this Profile: [Coverage/jp-coverage-example-1](Coverage-jp-coverage-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-coverage)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-coverage.csv), [Excel](StructureDefinition-jp-coverage.xlsx), [Schematron](StructureDefinition-jp-coverage.sch) 

### 「被保険者個人識別子」の文字列仕様

保険情報識別子として、保険者情報と被保険者情報とを以下の仕様で連結したひとつの文字列を使用する。
 本仕様では、以下、これを「被保険者個人識別子」と称する。また英数字は１バイト系文字の英数字を指す。
 被保険者個人識別子: 以下の各情報（要素）を半角コロン（文字コード１６進数 5A）で結合する。
 要素を省略する、とある場合には、長さ０の文字列とする。

* 要素順序番号: 第1要素
  * 要素: 保険者等番号
* 要素順序番号: 第2要素
  * 要素: 被保険者証（手帳）等の記号
* 要素順序番号: 第3要素
  * 要素: 被保険者証（手帳）等の番号
* 要素順序番号: 第4要素
  * 要素: 被保険者証等枝番

各要素の説明：

* 保険者番号: 
 英数字８桁 券面記載の保険者番号。８桁に満たない場合は、先頭に半角ゼロを追加して８桁とする。
 

* 被保険者証（手帳）等の記号: 
 英数または全角文字。健康保険被保険者証、船員保険被保険者証、受給資格者票及び国民健康保険被保険者証等の「記号及び番号」欄の記号を記録する。全角だけからなる文字列または半角だけからなる文字列のどちらかとする。英数字だけの場合には 1 バイト系（半角）文字だけから構成するか、または全角文字だけから構成する。記号または仮名漢字を含む場合には、英数字を含めすべて全角文字だけから構成する。なお、いずれの場合にも、全角空白を含めないこととする。被保険者証（手帳）等の番号だけしかない場合には、本要素は省略する。


* 被保険者証（手帳）等の番号: 
 英数または全角文字。健康保険被保険者証、船員保険被保険者証、受給資格者票及び国民健康保険被保険者証等の「記号及び番号」欄の番号、または後期高齢者被保険者証の被保険者番号を記録する。全角だけからなる文字列または半角だけからなる文字列のどちらかとする。英数字だけの場合には 1 バイト系（半角）文字だけから構成するか、または全角文字だけから構成する。記号または仮名漢字を含む場合には、英数字を含めすべて全角文字だけから構成する。なお、いずれの場合にも、全角空白を含めないこととする。


* 被保険者証等枝番: 
 「被保険者証等枝番」に対応する文字列。半角数字2桁固定(00〜99)とする。枝番がない（表記されていない）場合には、00とするのではなく本要素は省略（空文字列）する。
 
 例）保険者等番号＝12345、被保険者証（手帳）等の記号＝あいう、被保険者証（手帳）等の番号＝１８７、枝番＝05 の場合、
 被保険者個人識別子＝ "00012345:あいう:１８７:05" となる。
 被保険者証（手帳）等の記号と枝番がない場合には
 被保険者個人識別子＝ "00012345::１８７:" となる。この場合、最後のコロンは必須である。


### 必須要素

Coverage リソースは、次の要素を必ず持たなければならない。

* status : 「リソースのインスタンスの状態」を示すエレメント
* beneficiary : 「サービスを受ける者」を示すエレメント、Patientリソースを参照する
* payor : 「負担者」を示すエレメント。Organization、Patient、RelatedPersonのいずれかを参照する

### Extensions定義

JP Core Coverage プロファイルで使用される拡張は次の通りである。

* [JP_Coverage_InsuredPersonSymbol](StructureDefinition-jp-coverage-insuredpersonsymbol.md) 
* 健康保険における被保険者証記号を示す拡張
 
* [JP_Coverage_InsuredPersonNumber](StructureDefinition-jp-coverage-insuredpersonnumber.md) 
* 健康保険における被保険者証番号を示す拡張
 
* [JP_Coverage_InsuredPersonSubNumber](StructureDefinition-jp-coverage-insuredpersonsubnumber.md) 
* 健康保険における被保険者証番号の枝番を示す拡張
 

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Coverage?identifier=*** |
| SHOULD | beneficiary | reference | GET [base]/Coverage?beneficiary=*** |
| SHOULD | class-type | token | GET [base]/Coverage?class-type=*** |
| SHOULD | class-value | string | GET [base]/Coverage?class-value=*** |
| SHOULD | dependent | string | GET [base]/Coverage?dependent=*** |
| SHOULD | patient | reference | GET [base]/Coverage?patient=Patient/*** |
| SHOULD | payor | reference | GET [base]/Coverage?payor=*** |
| SHOULD | policy-holder | reference | GET [base]/Coverage?policy-holder=*** |
| SHOULD | status | token | GET [base]/Coverage?status=*** |
| SHOULD | subscriber | reference | GET [base]/Coverage?subscriber=*** |
| SHOULD | type | token | GET [base]/Coverage?type=*** |

##### 必須検索パラメータ

1. identifier 検索パラメータを使用して、識別子によるCoverageの検索をサポートしなければならない（**SHALL**）

```
GET [base]/Coverage?identifier={system|}[token]

```

例：

```
GET [base]/Coverage?identifier=http://abchosptal.co.jp/coverage/idsys|123456

```

指定された識別子に一致するCoverageリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. beneficiary 検索パラメータを使用して、識別子によるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?beneficiary=[reference]

```

例：

```
GET [base]/Coverage?beneficiary=*****

```

指定された識別子に一致するCoverageリソースを含むBundleを検索する。
1. class-type 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?class-type={token}

```

例：

```
GET [base]/Coverage?class-type=*****

```

指定されたclass-typeに一致するCoverageリソースを含むBundleを検索する。
1. class-value 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?class-value={string}

```

例：

```
GET [base]/Coverage?class-value=*****

```

指定されたclass-valueに一致するCoverageリソースを含むBundleを検索する。
1. dependent 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?dependent={string}

```

例：

```
GET [base]/Coverage?dependent=*****

```

指定されたdependentに一致するCoverageリソースを含むBundleを検索する。
1. patient 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?patient={reference}

```

例：

```
GET [base]/Coverage?patient=*****

```

指定されたpatientに一致するCoverageリソースを含むBundleを検索する。
1. payor 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?payor={reference}

```

例：

```
GET [base]/Coverage?payor=*****

```

指定されたpayorに一致するCoverageリソースを含むBundleを検索する。
1. policy-holder 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?policy-holder={reference}

```

例：

```
GET [base]/Coverage?policy-holder=*****

```

指定されたpolicy-holderに一致するCoverageリソースを含むBundleを検索する。
1. status 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?status={token}

```

例：

```
GET [base]/Coverage?status=*****

```

指定されたstatusに一致するCoverageリソースを含むBundleを検索する。
1. subscriber 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?subscriber={reference}

```

例：

```
GET [base]/Coverage?subscriber=*****

```

指定された識subscriberに一致するCoverageリソースを含むBundleを検索する。
1. type 検索パラメータを使用して、言語コードによるCoverageの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Coverage?type={string}

```

例：

```
GET [base]/Coverage?type=*****

```

指定されたtypeに一致するCoverageリソースを含むBundleを検索する。

### サンプル

* [**健康保険証**](Coverage-jp-coverage-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-coverage",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage",
  "version" : "1.3.0-dev",
  "name" : "JP_Coverage",
  "title" : "JP Core Coverage Profile",
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
  "description" : "このプロファイルはCoverageリソースに対して、保険・公費のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
      "identity" : "cdanetv4",
      "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
      "name" : "Canadian Dental Association eclaims standard"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "cpha3pharm",
      "uri" : "http://www.pharmacists.ca/",
      "name" : "Canadian Pharmacy Associaiton eclaims standard"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Coverage",
        "path" : "Coverage",
        "short" : "Insurance or medical plan or a payment agreement　保険または医療費支払いプラン、または合意された支払い方法",
        "definition" : "Financial instrument which may be used to reimburse or pay for health care products and services. Includes both insurance and self-payment.  \nヘルスケア製品およびサービスの償還または支払いに使用される可能性のある金融商品。 保険と自己負担の両方が含まれる。",
        "comment" : "The Coverage resource contains the insurance card level information, which is customary to provide on claims and other communications between providers and insurers.  \nCoverageには、保険証レベルの情報が含まれている。これは、保険金請求や医療提供者と保険会社間のその他の通信で提供するのが通例である。"
      },
      {
        "id" : "Coverage.extension",
        "path" : "Coverage.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Coverage.extension:insuredPersonSymbol",
        "path" : "Coverage.extension",
        "sliceName" : "insuredPersonSymbol",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSymbol"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.extension:insuredPersonNumber",
        "path" : "Coverage.extension",
        "sliceName" : "insuredPersonNumber",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonNumber"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.extension:insuredPersonSubNumber",
        "path" : "Coverage.extension",
        "sliceName" : "insuredPersonSubNumber",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Coverage_InsuredPersonSubNumber"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.identifier",
        "path" : "Coverage.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "short" : "Business Identifier for the coverage　この保険適用情報に割り当てられた一意の識別子【詳細参照】",
        "definition" : "A unique identifier assigned to this coverage.  この保険適用情報に割り当てられた一意の識別子。",
        "comment" : "A unique identifier assigned to this coverage.  この保険適用情報に割り当てられた一意の識別子。",
        "requirements" : "Allows coverages to be distinguished and referenced.  \n保険適用情報を区別して参照できるようにする。"
      },
      {
        "id" : "Coverage.identifier:insuranceIdentifier",
        "path" : "Coverage.identifier",
        "sliceName" : "insuranceIdentifier",
        "short" : "被保険者個人識別子　例）00012345:あいう:１８７:05",
        "definition" : "被保険者個人識別子として、保険者情報と被保険者情報を以下の仕様で連結したひとつの文字列を使用する",
        "comment" : "「被保険者個人識別子」の文字列仕様を参照のこと",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Coverage.identifier:insuranceIdentifier.system",
        "path" : "Coverage.identifier.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID"
      },
      {
        "id" : "Coverage.identifier:insuranceIdentifier.value",
        "path" : "Coverage.identifier.value",
        "short" : "被保険者個人識別子　例）00012345:あいう:１８７:05",
        "definition" : "被保険者個人識別子として、保険者情報と被保険者情報とを以下の仕様で連結したひとつの文字列を使用する。  \n本仕様では、以下、これを「被保険者個人識別子」と称する。また英数字は１バイト系文字の英数字を指す。  \n被保険者個人識別子:以下の各情報（要素）を半角コロン（文字コード１６進数 5A）で結合する。  \n要素を省略する、とある場合には、長さ０の文字列とする。詳細は「被保険者個人識別子」の文字列仕様を参照のこと",
        "min" : 1
      },
      {
        "id" : "Coverage.identifier:insuranceIdentifier.assigner",
        "path" : "Coverage.identifier.assigner",
        "short" : "保険者情報を設定",
        "definition" : "保険者情報として[JP_Organization](StructureDefinition-jp-organization.html)を設定する。",
        "comment" : "保険者情報として[JP_Organization](StructureDefinition-jp-organization.html)を設定する。",
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
        "id" : "Coverage.identifier:insuranceCsvIdentifier",
        "path" : "Coverage.identifier",
        "sliceName" : "insuranceCsvIdentifier",
        "short" : "被保険者識別子（CSV形式）　\"00012345\",\"１２－３４\",\"５６７８\",\"00\"",
        "definition" : "被保険者識別子として、保険者情報と被保険者情報を囲み文字をダブルクォーテーション、区切りをカンマにて連結する",
        "comment" : "The main (and possibly only) identifier for the coverage - often referred to as a Member Id, Certificate number, Personal Health Number or Case ID. May be constructed as the concatenation of the Coverage.SubscriberID and the Coverage.dependent.  \n保険適用情報のメイン（および場合によっては唯一の）識別子-多くの場合、会員番号、証明書番号、個人健康識別子、または症例IDと呼ばれる。  \n【JP Core仕様】被保険者記号と番号と枝番を全角にした上でダブルコーテーションで囲い、カンマ区切りで連結する。  \nルール：\"{保険者番号:半角英数８桁}\",\"{被保険者記号}\",\"{被保険者番号}\",\"{枝番:半角数字２桁}\"  \n例：\"00012345\",\"１２－３４\",\"５６７８\",\"00\"",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Coverage.identifier:insuranceCsvIdentifier.system",
        "path" : "Coverage.identifier.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/IdSystem/JP_Coverage_id"
      },
      {
        "id" : "Coverage.identifier:insuranceCsvIdentifier.value",
        "path" : "Coverage.identifier.value",
        "short" : "被保険者識別子（CSV形式）　\"00012345\",\"１２－３４\",\"５６７８\",\"00\"",
        "definition" : "被保険者識別子として、保険者番号と被保険者記号と番号と枝番を全角にした上でダブルコーテーションで囲い、カンマ区切りで連結する。",
        "comment" : "The main (and possibly only) identifier for the coverage - often referred to as a Member Id, Certificate number, Personal Health Number or Case ID. May be constructed as the concatenation of the Coverage.SubscriberID and the Coverage.dependent.  \n保険適用情報のメイン（および場合によっては唯一の）識別子-多くの場合、会員番号、証明書番号、個人健康識別子、または症例IDと呼ばれる。  \n【JP Core仕様】保険者番号と被保険者記号と番号と枝番を全角にした上でダブルコーテーションで囲い、カンマ区切りで連結する。  \nルール：\"{保険者番号:半角英数８桁}\",\"{被保険者記号}\",\"{被保険者番号}\",\"{枝番:半角数字２桁}\"  \n例：\"00012345\",\"１２－３４\",\"５６７８\",\"00\"\n要素を省略する、とある場合には、長さ０の文字列とする。",
        "min" : 1
      },
      {
        "id" : "Coverage.identifier:insuranceCsvIdentifier.assigner",
        "path" : "Coverage.identifier.assigner",
        "short" : "保険者情報",
        "definition" : "健康保険等の保険者情報を設定する。[JP_Organization](StructureDefinition-jp-organization.html)をリソースにて表現する",
        "comment" : "健康保険等の保険者情報を設定する。[JP_Organization](StructureDefinition-jp-organization.html)をリソースにて表現する",
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
        "id" : "Coverage.status",
        "path" : "Coverage.status",
        "definition" : "The status of the resource instance.  \nリソースインスタンスのステータス。",
        "comment" : "This element is labeled as a modifier because the status contains the code entered-in-error that marks the coverage as not currently valid.  \nステータスには、保険適用情報が現在無効であることを示すエラー入力されたコードが含まれているため、この要素は修飾子としてラベル付けされる。",
        "requirements" : "Need to track the status of the resource as 'draft' resources may undergo further edits while 'active' resources are immutable and may only have their status changed to 'cancelled'.  \n「ドラフト」リソースはさらに編集される可能性があり、「アクティブ」リソースは不変であり、ステータスが「キャンセル」に変更されるだけである可能性があるため、リソースのステータスを追跡する必要がある。",
        "isModifierReason" : "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid / この要素は、エラーで入力されたステータスを含むステータス要素であるため、修飾子としてラベル付けされている。これは、リソースが有効として扱われるべきではないことを意味する。"
      },
      {
        "id" : "Coverage.type",
        "path" : "Coverage.type",
        "short" : "Coverage category such as medical or accident　医療保険や事故補償のような分類",
        "definition" : "The type of coverage: social program, medical plan, accident coverage (workers compensation, auto), group health or payment by an individual or organization.  \n補償の種類：社会プログラム、医療計画、事故補償（労働者災害補償、自動車）、グループの健康、または個人または組織による支払い。",
        "comment" : "Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination.  \nすべてのターミノロジの使用がこの一般的なパターンに適合するわけではない。場合によっては、モデルはCodeableConceptを使用せず、`Coding`を直接使用して、テキスト、`Coding`、翻訳、および要素間の関係とpre-coordinationとpost-coordinationの用語関係を管理するための独自の構造を提供する必要がある。  \n【JP Core仕様】「[処方情報 HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf)」等で使用される保険種別コード（system=”http://jpfhir.jp/fhir/core/mhlw/IdSystem/medicalRegistrationNumber”）として、https://www.mhlw.go.jp/content/10800000/000342368.pdf　の別表１１が使用している例があげられている。JP Coreとして本項目に対する用語のバインドは現時点では定義するまでに至っていない。",
        "requirements" : "The order of application of coverages is dependent on the types of coverage.  \n保険適用の適用順序は、保険適用のタイプによって異なる。"
      },
      {
        "id" : "Coverage.policyHolder",
        "path" : "Coverage.policyHolder",
        "short" : "Owner of the policy　ポリシーの所有者",
        "definition" : "The party who 'owns' the insurance policy.  \n保険証券を「所有する」当事者。",
        "comment" : "For example: may be an individual, corporation or the subscriber's employer.  \n例：個人、企業、または加入者の雇用主である可能性がある。",
        "requirements" : "This provides employer information in the case of Worker's Compensation and other policies.  \nこれは、労働者災害補償およびその他のポリシーの場合に雇用者情報を提供する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.subscriber",
        "path" : "Coverage.subscriber",
        "short" : "Subscriber to the policy　被保険者",
        "definition" : "The party who has signed-up for or 'owns' the contractual relationship to the policy or to whom the benefit of the policy for services rendered to them or their family is due.  \nポリシーにサインアップした、またはポリシーとの契約関係を「所有」している当事者、またはポリシーの利益が彼らまたはその家族に提供されることになっている当事者。",
        "comment" : "May be self or a parent in the case of dependents.  \n扶養家族の場合、自己または親である可能性がある。",
        "requirements" : "This is the party who is entitled to the benefits under the policy.  \nこれは、ポリシーに基づいて給付を受ける権利を有する当事者である。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.subscriberId",
        "path" : "Coverage.subscriberId",
        "short" : "ID assigned to the subscriber　被保険者に割り当てられたID",
        "definition" : "The insurer assigned ID for the Subscriber.  \n被保険者に保険者が割り当てたID",
        "requirements" : "The insurer requires this identifier on correspondence and claims (digital and otherwise).  \n保険者は、連絡や請求（デジタルおよびその他）でこの識別子を要求する。  \n保険会社は、通信および請求（デジタルおよびその他）でこの識別子を要求する。  \n【JP Core仕様】被保険者記号と番号を全角にした上でダブルコーテーションで囲い、カンマ区切りで連結する。  \nルール：{被保険者記号}:{被保険者番号}  \n例：\"あいう\",\"５６７８\""
      },
      {
        "id" : "Coverage.beneficiary",
        "path" : "Coverage.beneficiary",
        "definition" : "The party who benefits from the insurance coverage; the patient when products and/or services are provided.  \n保険適用から利益を得る当事者、製品および／またはサービスが提供される際の患者。",
        "comment" : "References SHALL be a reference to an actual FHIR resource, and SHALL be resolvable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.  \n参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。  \n【JP Core仕様】患者Patientリソースへの参照。",
        "requirements" : "This is the party who receives treatment for which the costs are reimbursed under the coverage.  \nこれは、補償の下で費用が償還される治療を受ける側のことである。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "Coverage.dependent",
        "path" : "Coverage.dependent",
        "short" : "被保険者証 枝番",
        "definition" : "A unique identifier for a dependent under the coverage.  \n被保険者証の枝番。",
        "comment" : "Periodically the member number is constructed from the subscriberId and the dependent number.  \n被保険者証の枝番を全角で格納する。",
        "requirements" : "For some coverages a single identifier is issued to the Subscriber and then a unique dependent number is issued to each beneficiary.  \n一部の補償では、単一の識別子が加入者に発行され、次に一意の従属番号が各受益者に発行される。  \n一部の保険では、単一の識別子が加入者に発行され、その後、各受益者に固有の扶養番号が発行される。  \n【JP Core仕様】医療保険で本リソースを使用する場合には、この要素に拡張 InsuredPersonSubNumberに設定した値と同じ、被保険者番号の枝番号全角2桁を設定する。  \n例：\"00\""
      },
      {
        "id" : "Coverage.relationship",
        "path" : "Coverage.relationship",
        "short" : "Beneficiary relationship to the subscriber　加入者との受益者関係",
        "definition" : "The relationship of beneficiary (patient) to the subscriber.  \n受益者（患者）と加入者の関係。",
        "comment" : "Typically, an individual uses policies which are theirs (relationship='self') before policies owned by others.  \n一般的に、個人は、他人が所有するポリシーよりも、自分のポリシー（relationship='self'）を使用する。",
        "requirements" : "To determine relationship between the patient and the subscriber to determine coordination of benefits.  \n患者と加入者の関係を決定し、給付の調整を決定する。  \n【JP Core仕様】「[処方情報 HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf)」等で使用される被保険者区分コード（system=”http://jpfhir.jp/fhir/core/mhlw/CodeSystem/InsuredPersonCategory”）として、https://www.mhlw.go.jp/content/10800000/000342368.pdf　の別表１２が使用できる。  \n　1 被保険者  \n　2 被扶養者"
      },
      {
        "id" : "Coverage.period",
        "path" : "Coverage.period",
        "definition" : "Time period during which the coverage is in force. A missing start date indicates the start date isn't known, a missing end date means the coverage is continuing to be in force.  \n補償範囲が有効である期間。開始日が欠落している場合は、開始日が不明であることを示す。終了日が欠落している場合は、補償範囲が引き続き有効であることを意味する。",
        "comment" : "A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. \"the patient was an inpatient of the hospital for this time range\") or one value from the range applies (e.g. \"give to the patient between these two times\").\nPeriod is not used for a duration (a measure of elapsed time). See [Duration](http://hl7.org/fhir/R4/datatypes.html#Duration).  \nPeriod（期間）は時間の範囲を指定する。使用状況は、範囲全体が適用されるか（たとえば、「患者はこの時間範囲で入院していた」）、範囲から1つの値が適用されるか（たとえば、「この2回の間に患者に投与する」）を指定する。  \nPeriod（期間）は、Duration（時間区間＝経過時間の測定値）には使用されない。 [Duration]（datatypes.html＃Duration）を参照のこと。  \nThis is not a duration - that's a measure of time (a separate type), but a duration that occurs at a fixed value of time. A Period specifies a range of time; the context of use will specify whether the entire range applies (e.g. \"the patient was an inpatient of the hospital for this time range\") or one value from the range applies (e.g. \"give to the patient between these two times\"). If duration is required, specify the type as Interval|Duration.  \nこれはDuration（時間区間）ではない-　Durationは時間の尺度（別のタイプ）だが、時間の固定値で発生する時間区間である。Period（期間）は時間の範囲を指定する。使用状況は、範囲全体が適用されるか（たとえば、「患者はこの時間範囲で入院していた」）、範囲から1つの値が適用されるか（たとえば、「この2回の間に患者に投与する」）を指定する。もし、Duration（時間区間）が必要な場合は、タイプをInterval | Durationとして指定する。  \nこれは期間ではなく-これは時間の尺度（別のタイプ）あるが、時間の固定値で発生する期間である。期間は時間の範囲を指定する。使用状況は、範囲全体が適用されるか（たとえば、「患者はこの時間範囲で入院していた」）、または範囲から1つの値が適用されるか（たとえば、「これら2回の間に患者に与える」）を指定する。期間が必要な場合は、タイプをInterval | Durationとして指定する。  \n【JP Core仕様】医療保険、公費で本リソースを使用する場合には、保険証または公費の有効期間の開始日、終了日をstart とendに yyyy-mm-dd形式で設定する。",
        "requirements" : "Some insurers require the submission of the coverage term.  \n保険会社によっては、補償期間の提出を義務付けているところもある。"
      },
      {
        "id" : "Coverage.payor",
        "path" : "Coverage.payor",
        "short" : "支払者に関する情報",
        "definition" : "The program or plan underwriter or payor including both insurance and non-insurance agreements, such as patient-pay agreements.  \n患者負担契約などの保険契約と保険外契約の両方を含むプログラムまたはプランの引受人または支払人。",
        "comment" : "May provide multiple identifiers such as insurance company identifier or business identifier (BIN number).\nFor selfpay it may provide multiple paying persons and/or organizations.  \n保険会社の識別子や事業者の識別子（BIN番号）など、複数の識別子を提供してもよい。自己負担の場合は、複数の支払者および/または組織を提供してもよい。",
        "requirements" : "Need to identify the issuer to target for claim processing and for coordination of benefit processing.  \n請求処理および給付処理の調整の対象となる発行者を特定する必要がある。  \n【JP Core仕様】医療保険で本リソースを使用する場合には、保険者組織Organizationリソースへの参照。自費の場合には、患者Patientリソースへの参照。公費の場合には、公費負担者組織Organizationリソースへの参照。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Coverage.class",
        "path" : "Coverage.class",
        "definition" : "A suite of underwriter specific classifiers.  \n保険事業者の分類子",
        "comment" : "For example may be used to identify a class of coverage or employer group, Policy, Plan.  \n例えば、保険の種類または雇用者グループ、保険契約、Planを識別するために使用することができる。",
        "requirements" : "The codes provided on the health card which identify or confirm the specific policy for the insurer.  \n健康カードに記載されているコードで、保険者の特定の保険契約を識別または確認するもの。"
      },
      {
        "id" : "Coverage.class.type",
        "path" : "Coverage.class.type",
        "definition" : "The type of classification for which an insurer-specific class label or number and optional name is provided, for example may be used to identify a class of coverage or employer group, Policy, Plan.  \n保険者固有のクラスラベルまたは番号、任意の名前が提供されている分類のタイプを表す。例えば、保険のクラスまたは雇用者グループ、保険契約、Planを識別するために使用することができる。",
        "comment" : "Not all terminology uses fit this general pattern. In some cases, models should not use CodeableConcept and use Coding directly and provide their own structure for managing text, codings, translations and the relationship between elements and pre- and post-coordination.  \nすべての用語の使用がこの一般的なパターンに適合するわけではない。場合によっては、モデルはCodeableConceptを使用せず、`Coding`を直接使用し、テキスト、`Coding`、翻訳、要素間の関係、および事前・事後の用語結合を管理するための独自の構造を提供することが望ましい。",
        "requirements" : "The insurer issued label for a specific health card value.  \n保険者が発行した特定の健康カード番号のラベル。"
      },
      {
        "id" : "Coverage.class.value",
        "path" : "Coverage.class.value",
        "definition" : "The alphanumeric string value associated with the insurer issued label.  \n保険者が発行したラベルに関連付けられた英数字の文字列値。",
        "comment" : "For example, the Group or Plan number.  \n例えば、グループ番号やプラン番号など。",
        "requirements" : "The insurer issued label and value are necessary to identify the specific policy.  \n保険者が発行したラベルと値は、特定の保険契約を識別するために必要なものである。"
      },
      {
        "id" : "Coverage.class.name",
        "path" : "Coverage.class.name",
        "definition" : "A short description for the class.  \n保険種類の簡単な説明。",
        "requirements" : "Used to provide a meaningful description in correspondence to the patient.  \n患者に対応するのに意味のある説明をするために使用する。"
      },
      {
        "id" : "Coverage.order",
        "path" : "Coverage.order",
        "definition" : "The order of applicability of this coverage relative to other coverages which are currently in force. Note, there may be gaps in the numbering and this does not imply primary, secondary etc. as the specific positioning of coverages depends upon the episode of care.  \n現在適用されている他の保障と比較して、この保障の適用可能性が高い順に記載されている。なお、採番にギャップがある場合があり、適用範囲の具体的な位置づけは診療エピソードに依存するため、一次、二次などを意味するものではない。",
        "comment" : "32 bit number; for values larger than this, use decimal  \n32 ビットの数値、これより大きい値の場合は 10 進数を使用する。",
        "requirements" : "Used in managing the coordination of benefits.  \n保険給付の調整管理に使用する。  \n【JP Core仕様】公費情報で本リソースを使用する場合で、複数の公費負担情報がある場合に、その適用順序番号を示す１，２，３．．．を設定する。"
      },
      {
        "id" : "Coverage.network",
        "path" : "Coverage.network",
        "definition" : "The insurer-specific identifier for the insurer-defined network of providers to which the beneficiary may seek treatment which will be covered at the 'in-network' rate, otherwise 'out of network' terms and conditions apply.  \n保険者が定義した医療提供者の保険者定義ネットワークの保険者固有の識別子で、被保険者が「ネットワーク内」の料金でカバーされる治療を受けることができるが、そうでなければ「ネットワーク外」の条件が適用される。",
        "requirements" : "Used in referral for treatment and in claims processing.  \n治療のための紹介や請求処理の際に使用する。"
      },
      {
        "id" : "Coverage.costToBeneficiary",
        "path" : "Coverage.costToBeneficiary",
        "short" : "Patient payments for services/products　サービスやプロダクトに対する患者支払い",
        "definition" : "A suite of codes indicating the cost category and associated amount which have been detailed in the policy and may have been  included on the health card.  \nポリシーに詳細が記載されており、ヘルスカードに含まれている可能性のあるコストカテゴリと関連する金額を示す一連のコード。",
        "comment" : "For example by knowing the patient visit co-pay, the provider can collect the amount prior to undertaking treatment.  \n例えば、患者の訪問時の自己負担額を知ることで、医療提供者は治療を行う前にその金額を回収することができる。  \n【JP Core仕様】公費の場合には自己負担率。判明している場合のみ設定する。",
        "requirements" : "Required by providers to manage financial transaction with the patient.  \n事業者が患者との金銭的な取引を管理するために必要となる。"
      },
      {
        "id" : "Coverage.costToBeneficiary.type",
        "path" : "Coverage.costToBeneficiary.type",
        "definition" : "The category of patient centric costs associated with treatment.  \n治療に伴う患者中心の費用のカテゴリー。",
        "comment" : "For example visit, specialist visits, emergency, inpatient care, etc.  \n例えば、訪問診療、専門医の訪問診療、救急診療、入院診療など。",
        "requirements" : "Needed to identify the category associated with the amount for the patient.  \n患者の金額に関連するカテゴリーを特定する必要があった。"
      },
      {
        "id" : "Coverage.costToBeneficiary.type.coding.system",
        "path" : "Coverage.costToBeneficiary.type.coding.system",
        "comment" : "The URI may be an OID (urn:oid:...) or a UUID (urn:uuid:...).  OIDs and UUIDs SHALL be references to the HL7 OID registry. Otherwise, the URI should come from HL7's list of FHIR defined special URIs or it should reference to some definition that establishes the system clearly and unambiguously.  \n保険や公費における自己負担率の種別を識別するコード体系のコード。  \n\"http://terminology.hl7.org/CodeSystem/coverage-copay-type\""
      },
      {
        "id" : "Coverage.costToBeneficiary.type.coding.code",
        "path" : "Coverage.costToBeneficiary.type.coding.code",
        "comment" : "自己負担率を表すコード　\"copaypct\""
      },
      {
        "id" : "Coverage.costToBeneficiary.value[x]",
        "path" : "Coverage.costToBeneficiary.value[x]",
        "definition" : "The amount due from the patient for the cost category.  \n費用区分の患者からの支払額。",
        "comment" : "Amount may be expressed as a percentage of the service/product cost or a fixed amount of currency.  \n金額は、サービス/製品のコストに対する割合で表現される場合と、通貨の固定額で表現される場合がある。",
        "requirements" : "Needed to identify the amount for the patient associated with the category.  \nカテゴリーに関連する患者の支払い金額を特定する必要があった"
      },
      {
        "id" : "Coverage.costToBeneficiary.exception",
        "path" : "Coverage.costToBeneficiary.exception",
        "definition" : "A suite of codes indicating exceptions or reductions to patient costs and their effective periods.  \n患者費用の例外または削減を示すコードとその有効期間を示すコード群。",
        "requirements" : "Required by providers to manage financial transaction with the patient.  \n事業者が患者との金銭的な取引を管理するために必要となる。"
      },
      {
        "id" : "Coverage.costToBeneficiary.exception.type",
        "path" : "Coverage.costToBeneficiary.exception.type",
        "definition" : "The code for the specific exception.  \n特定の例外のコード。",
        "requirements" : "Needed to identify the exception associated with the amount for the patient.  \n患者の金額に関連する例外を特定する必要があった。"
      },
      {
        "id" : "Coverage.costToBeneficiary.exception.period",
        "path" : "Coverage.costToBeneficiary.exception.period",
        "definition" : "The timeframe during when the exception is in force.  \n例外が発生している間の時間枠。",
        "requirements" : "Needed to identify the applicable timeframe for the exception for the correct calculation of patient costs.  \n患者の費用を正しく計算するための例外の適用時期を特定する必要があった。"
      },
      {
        "id" : "Coverage.subrogation",
        "path" : "Coverage.subrogation",
        "short" : "Reimbursement to insurer　保険者への償還",
        "definition" : "When 'subrogation=true' this insurance instance has been included not for adjudication but to provide insurers with the details to recover costs.  \nsubrogation=trueの場合、この保険インスタンスは裁定のためではなく、保険者に費用回収のための詳細を提供するために含まれている。 (subrogation=代位、subrogation payment=代位納付)",
        "comment" : "Typically, automotive and worker's compensation policies would be flagged with 'subrogation=true' to enable healthcare payors to collect against accident claims.  \n一般的に、自動車保険や労災保険では、医療費支払い者が事故請求に対して回収できるように、subrogation＝true というフラグが立てられている。",
        "requirements" : "See definition for when to be used.  \n使用時期については定義を参照すること。"
      },
      {
        "id" : "Coverage.contract",
        "path" : "Coverage.contract",
        "short" : "Contract details　契約の詳細",
        "definition" : "The policy(s) which constitute this insurance coverage.  \nこの保険の適用範囲を構成するポリシー。",
        "comment" : "References SHALL be a reference to an actual FHIR resource, and SHALL be resolvable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository.  \n参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "requirements" : "To reference the legally binding contract between the policy holder and the insurer.  \n契約者と保険者との間の法的拘束力のある契約を参照するため。"
      }
    ]
  }
}

```
