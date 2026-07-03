# JP Core MedicationStatement Injection Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationStatement Injection Profile**

## Resource Profile: JP Core MedicationStatement Injection Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement_Injection
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationStatement_Injection
* **項目**: *Title*
  * **内容**: JP Core MedicationStatement Injection Profile
* **項目**: *Status*
  * **内容**: Draft ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このProfileは服薬状況を示すものであり，診療情報提供書や退院サマリーなどの他の文書と組み合わせて用いられる。 

 
このProfileは診療情報提供書や退院サマリーなどの医療文書内で服薬情報について記載するために用いられる。このResourceは薬剤処方や，調剤情報，薬剤投与実施情報としては用いられず，それぞれMedicationRequest, MedicationDispense, MedicationAdministrationが用いられる。 

本プロファイルは患者に投与された注射薬剤の記録をMedicationStatementリソースを使用して表現する。 以下、本プロファイルのMedicationStatementリソースを「JP Core MedicationStatement Injectionリソース」と呼ぶ。

MedicationStatementリソースをプロファイルに組み込んだ先行事例として、以下2つのHL7FHIR記述仕様が存在しており、JP Coreとして利用できる仕様については可能な限り取り入れるようにした。ただし、拡張のURLは新たにJP Coreの命名規則に基づいて命名している。

* [診療情報提供書 HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/eReferralFHIR_v1x.pdf)
* [退院時サマリー HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/eDischargeSummaryFHIR_v1x.pdf)

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 各種医療文書、及び他施設への提供文書に、患者の注射薬剤投与情報を記録する
* 紹介元の医療機関や、患者自身（またはその家族等）から提供された、患者の注射薬剤投与情報を記録する

## スコープ

### 対象

本プロファイルの対象は注射薬剤の投与情報を電子的に連携するためのメッセージを記述することである。

### 対象としないこと

本プロファイルは注射薬剤に関するものであり、内服・外用薬剤については対象としない。内服・外用薬剤は、指示の仕方や指示する項目が注射とは大きく異なるため、別のプロファイルとして記述することとする。

また、医療従事者によって管理されている投与実施の記録は、MedicationAdministrationが対応リソースとなるため、MedicationStatementは使用しない。

## プロファイル定義

**Usages:**

* Examples for this Profile: [MedicationStatement/jp-medicationstatement-injection-example-1](MedicationStatement-jp-medicationstatement-injection-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationstatement-injection)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationstatement-injection.csv), [Excel](StructureDefinition-jp-medicationstatement-injection.xlsx), [Schematron](StructureDefinition-jp-medicationstatement-injection.sch) 

### 必須要素

次のデータ項目は必須（データが存在しなければならない）である。

MedicationStatement リソースは、次の要素を持たなければならない。

* status : ステータスは必須である
* medicationCodeableConcept : 医薬品の識別情報は必須であり、medicationCodeableConcept.coding.system, medicationCodeableConcept.coding.code, medicationCodeableConcept.coding.display が必ず存在しなければならない
* subject : 患者の参照情報は必須であり、subject.referenceないしsubject.identifierが必ず存在しなければならない

### Extensions定義

本プロファイルで追加定義された拡張はない。

### 用語定義

HL7 FHIRの基底規格では、薬剤コードをはじめとして、剤形などでSNOMED CTが使われているが、日本ではライセンスの問題もあり普及していない。代替としてJAHIS処方データ交換規約やSS-MIX2で使われている用語集を採用した。

HL7 V2系では用語集を識別するコードシステム名(以下、「CS名」）は文字列であったが、FHIRではURIを指定する必要があるため、それぞれにURIを割り当てた。以下に使用する用語集のCS名とURI表記を列記する。

| | | |
| :--- | :--- | :--- |
| 医薬品 | HOT7 | http://medis.or.jp/CodeSystem/master-HOT7 |
| 医薬品 | HOT9 | http://medis.or.jp/CodeSystem/master-HOT9 |
| 医薬品 | HOT13 | http://medis.or.jp/CodeSystem/master-HOT13 |
| 医薬品 | YJコード | http://capstandard.jp/iyaku.info/CodeSystem/YJ-code |
| 剤形 | MERIT-9(剤形) | http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationFormMERIT9_CS |
| 処方区分 | MERIT-9(処方区分) | http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS |
| 処方区分 | JAHIS注射データ交換規約Ver.2.1C(JHSI表0001) | http://jpfhir.jp/fhir/core/CodeSystem/JHSI0001 |
| 用法種別 | JAMI処方・注射オーダ標準用法規格(時間的要素・機器区分コード表) | http://jami.jp/CodeSystem/MedicationMethodDetailDeviceInjection |
| 薬品単位 | MERIT-9(単位） | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code |
| 力価区分 | 処方情報 HL7FHIR 記述仕様(力価区分) | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthType |
| 頓用条件 | JAMI処方・注射オーダ標準用法規格(表6 イベント区分、イベント詳細区分) | http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationAsNeededConditionJAMI_CS |
| 頓用条件 | MERIT-9(頓用指示) | http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationAsNeededConditionMERIT9_CS |
| 投与部位 | JAMI処方・注射オーダ標準用法規格(部位コード) | http://jami.jp/CodeSystem/MedicationBodySiteExternal |
| 投与部位 | HL7 V2(HL7表0550) | http://terminology.hl7.org/CodeSystem/v2-0550 |
| 投与部位(修飾子) | HL7 V2(HL7表0495) | http://terminology.hl7.org/CodeSystem/v2-0495 |
| 投与装置 | HL7 V2(使用者定義表0164) | http://terminology.hl7.org/CodeSystem/v2-0164 |
| 投与方法 | JAMI処方・注射オーダ標準用法規格(基本用法区分) | http://jami.jp/CodeSystem/MedicationMethodBasicUsage |
| 投与手技 | HL7 V2(使用者定義表0165) | http://terminology.hl7.org/CodeSystem/v2-0165 |
| 投与手技 | JAMI処方・注射オーダ標準用法規格(用法詳細区分) | http://jami.jp/CodeSystem/MedicationMethodDetailUsage |
| 投与手技 | JAHIS注射データ交換規約Ver.2.1C(JHSI表0003) | http://jpfhir.jp/fhir/core/CodeSystem/JHSI0003 |
| 投与経路 | HL7 V2(使用者定義表0162) | http://jpfhir.jp/fhir/core/CodeSystem/route-codes |
| 入外区分 | HL7 V2(HL7表0482) | http://terminology.hl7.org/CodeSystem/v2-0482 |

## 利用方法

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/MedicationStatement?identifier=http://myhospital.com/fhir/medication|1234567890 |
| SHOULD | patient | reference | GET [base]/MedicationStatement?patient=123456 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、オーダIDなどの識別子によるMedicationRequestの検索をサポートしなければならない（SHALL）

```
GET [base]/MedicationStatement?identifier={system|}[code]

```

例：

```
GET [base]/MedicationStatement?identifier=http://myhospital.com/fhir/medication|1234567890

```

指定された識別子に一致するMedicationStatementリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. patient 検索パラメータを使用して、患者のリファレンス情報によるMedicationStatementの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/MedicationStatement?patient=[id]
GET [base]/MedicationStatement?patient=[url]

```

例：

```
GET [base]/MedicationStatement?patient=123456

```

リソースIDが123456の患者のMedicationStatementリソースを含むBundleを検索する。

##### 追加検索パラメータ

追加検索パラメータは定義しない。

#### Operation一覧

本プロファイルに対する操作は定義されていない。

### サンプル

下記の内容の処方に従って調剤する例をFHIRで表現する場合のサンプルを示す。

* [**服薬情報 注射薬**](MedicationStatement-jp-medicationstatement-injection-example-1.md)

## 注意事項

### 記述の単位について

MedicationStatementは薬剤をCodeableConceptとして1つまでしか持つか、Medication Resourceのreferenceをもつことしかできない。 したがって、複数の薬剤を同一のRp番号で表現する場合にはMedicationStatementを繰り返すか、複数の薬剤をまとめたMedication Resouceのインスタンスを参照することとなる。 ワーキンググループでの検討の結果、冗長とはなるがidentifierにRp番号と薬剤番号を記録することとし、MedicationStatementを繰り返すことで表現する方法を推奨することとした。

### 投与薬剤、投与量の記述方法

１回の投与薬剤と投与量は、RP内の薬剤が１薬剤の場合も混注などで複数の薬剤を含む場合も、すべての薬剤を記述したMedicationリソースを contained 属性に内包し、それをMedicationRequest.medicationReference属性で参照するようにする。 Medicationリソースのingredient.itemCodeableConcept要素にCodeableConcept型で各薬剤の識別情報を記述し、ingredient.strength.numerator要素に１回あたりの含有量を記述する。薬剤を識別するコードはHOT7、HOT9、YJコード、⼀般処方名マスターを推奨するが、ローカルコードを使用してもよい。含有量の単位コードは MERIT-9を使用する。ingredient.strength.denominatorには固定値「１回」をMERIT-9を使用して指定する。 dosageInstruction.doseAndRate.doseQuantity要素には、情報が得られる場合には全体の容量をUCUM("http://unitsofmeasure.org")を使用してmL単位で指定する。

「ソリタ－Ｔ３号輸液５００ｍＬ １本」と「アドナ注（静脈用）50mg／10mL １アンプル」計510mLを指示する場合のインスタンス例を示す。

```
"contained": [
  {
    "resourceType": "Medication",
    "id": "#medication",
    "ingredient": [
      {
        "itemCodeableConcept": {
          "coding": [
            {
              "code": "107750602",
              "display": "ソリタ－Ｔ３号輸液５００ｍＬ",
              "system": "http://medis.or.jp/CodeSystem/master-HOT9"
            }
          ]
        },
        "strength": {
          "numerator": {
            "value": 1,
            "unit": "本",
            "system": "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code": "HON"
          },
          "denominator": {
            "value": 1,
            "unit": "回",
            "system": "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code": "TIME"
          }
        }
      }, {
        "itemCodeableConcept": {
          "coding": [
            {
              "code": "108010001",
              "display": "アドナ注（静脈用）50mg／10mL",
              "system": "http://medis.or.jp/CodeSystem/master-HOT9"
            }
          ]
        },
        "strength": {
          "numerator": {
            "value": 1,
            "unit": "アンプル",
            "system": "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code": "AMP"
          },
          "denominator": {
            "value": 1,
            "unit": "回",
            "system": "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code": "TIME"
          }
        }
      }
    ]
  },
],
"medicationReference": {
  "reference": "#medication"
},
"dosageInstruction": [
  {
    "doseAndRate": [
      {
        "doseQuantity": {
          "value": 510,
          "unit": "mL",
          "system": "http://unitsofmeasure.org",
          "code": "mL"
        }
      }
    ]
  }
]

```

### 投与日時

薬が投与された（または投与される予定の）日時をeffectiveDateTime or effectivePeriod要素に[RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)形式で記述する。 タイムゾーンはJST(+09:00)を指定する。

開始日時、終了日時が明確である場合はeffectivePeriodに記述する。

```
"effectivePeriod": {
  "start": "2022-07-01T08:00:00+09:00",
  "end": "2022-07-14T18:00:00+09:00"
}

```

開始日時しか存在せず終了日時が明確でない場合、effectivePeriodのstartとendに同じ値を記述するか、effectiveDateTime要素に記述する。

```
"effectiveDateTime": "2022-08-25T08:30:00+09:00"

```

### 投与申告日時

情報提供者により投与が申告された日時は、dateAsserted要素にdateTime型で記述する。

```
"dateAsserted": "2022-08-25T08:35:59+09:00"

```

### 情報提供者

投与情報の提供者を、informationSource要素にReference型でリソースの参照情報を記述する。

| | |
| :--- | :--- |
| 患者自身 | Patient |
| 患者の家族、またはキーパーソン等 | RelatedPerson |
| 医療従事者（紹介医等） | Practitioner, PractitionerRole |
| 施設等（情報提供担当者が明確でない場合） | Organization |

```
"informationSource" : {
  "reference": "RelatedPerson/123456",
  "display": "患者 花子（母親）"
}

```

### 派生元情報

投与情報の派生元となった処方(MedicationRequest)、調剤情報(MedicationDispense)等が存在する場合、derivedFrom要素にReference型でリソースの参照情報を記述する。

```
"derivedFrom" : {
  "reference": "MedicationRequest/123456"
}

```

### 投与理由（対象疾患等）

この投薬の理由、対象疾患などを、reasonCode要素にCodeableConcept型で記述する。 投与理由で使用するコードは、MEDIS標準病名マスター 病名交換用コード("http://medis.or.jp/CodeSystem/master-disease-exCode")を推奨する。

```
"reasonCode": {
  "coding": [
    {
      "system": "http://medis.or.jp/CodeSystem/master-disease-exCode",
      "code": "B0EF",
      "display": "持続腹痛"
    }
  ]
}

```

### 用法・用量

医薬品の用法・用量をdosage要素で記述する。 dosage要素の記述ルールについては、「JP Core MedicationRequest Injection」プロファイルを参照のこと。

### 投与情報に関する特記事項

投与情報の特記事項（コメントなど）は、note要素にAnnotation型で記述する。

## その他、参考文献・リンク等

1. HL7, FHIR MedicationDispense Resource,[http://hl7.org/fhir/R4/medicationstatement.html](http://hl7.org/fhir/R4/medicationstatement.html)
1. 保健医療福祉情報システム工業会, JAHIS 注射データ交換規約 Ver.2.1C,[https://www.jahis.jp/standard/detail/id=590](https://www.jahis.jp/standard/detail/id=590)
1. 日本医療情報学会, 退院時サマリー HL7FHIR 記述仕様 (第1版),[https://std.jpfhir.jp/stddoc/eDischargeSummaryFHIR_v1x.pdf](https://std.jpfhir.jp/stddoc/eDischargeSummaryFHIR_v1x.pdf)
1. 日本医療情報学会, 診療情報提供書 HL7FHIR 記述仕様 (第1版),[https://std.jpfhir.jp/stddoc/eReferralFHIR_v1x.pdf](https://std.jpfhir.jp/stddoc/eReferralFHIR_v1x.pdf)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationstatement-injection",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement_Injection",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationStatement_Injection",
  "title" : "JP Core MedicationStatement Injection Profile",
  "status" : "draft",
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
  "description" : "このProfileは服薬状況を示すものであり，診療情報提供書や退院サマリーなどの他の文書と組み合わせて用いられる。",
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
  "purpose" : "このProfileは診療情報提供書や退院サマリーなどの医療文書内で服薬情報について記載するために用いられる。このResourceは薬剤処方や，調剤情報，薬剤投与実施情報としては用いられず，それぞれMedicationRequest, MedicationDispense, MedicationAdministrationが用いられる。",
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
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationStatement",
        "path" : "MedicationStatement",
        "short" : "服薬情報",
        "definition" : "患者が薬剤を服用している状況についての情報である。"
      },
      {
        "id" : "MedicationStatement.identifier",
        "path" : "MedicationStatement.identifier",
        "short" : "外部から参照されるID",
        "definition" : "このインスタンスが外部から参照されるために使われるIDである。それ以外に任意のIDを付与してもよい。\r\nこのIDは業務手順によって定められた処方オーダーに対して、直接的なURL参照が適切でない場合も含めて関連付けるために使われる。この業務手順のIDは実施者によって割り当てられたものであり、リソースが更新されたりサーバーからサーバーに転送されたとしても固定のものとして存続する。",
        "comment" : "これは業務IDであって、リソースに対するIDではない。"
      },
      {
        "id" : "MedicationStatement.status",
        "path" : "MedicationStatement.status",
        "definition" : "服薬状況のを示す。コード表： http://hl7.org/fhir/CodeSystem/medication-statement-status\r\nactive | completed | entered-in-error |intended | stopped | on-hold | unknown | not-take",
        "comment" : "このエレメントはmodifierとされている。StatusとはこのResourceが現在妥当な状態ではないことも示すからである。",
        "isModifierReason" : "このエレメントは modifier である。Statusエレメントが entered-in-error という正当な情報として扱うべきではない状態の値も取り得るからである。"
      },
      {
        "id" : "MedicationStatement.statusReason",
        "path" : "MedicationStatement.statusReason",
        "short" : "服薬状況の理由",
        "definition" : "現在の服薬状況を示す上記のstatusとなった理由",
        "comment" : "コード化せずにtextのみで表現する。"
      },
      {
        "id" : "MedicationStatement.category",
        "path" : "MedicationStatement.category",
        "short" : "薬剤使用区分",
        "definition" : "薬剤が服用されると想定されている場所。日本では「院外」「院内」「入院」「外来」などの区分を想定する。\r\n一般的には、外来や入院などどこでこの薬剤が投与、内服されるかを想定した区分である。\r\n処方病棟や処方した診療科をOrganization resourceで表現することが冗長である場合にはこの区分が用いられることもある。\r\nHL7 FHIRではvalue setとして http://terminology.hl7.org/CodeSystem/medicationrequest-category がデフォルトで用いられるが、日本での使用の場合持参薬をカバーする必要があり、JAHIS処方データ規約V3.0Cに記載されているMERIT-9処方オーダ表7とJHSP0007表を組み合わせて持ちいることとする"
      },
      {
        "id" : "MedicationStatement.medication[x]",
        "path" : "MedicationStatement.medication[x]",
        "short" : "What medication was supplied　医薬品",
        "definition" : "医薬品の識別情報は必須でありmedicationReference.referenceが必ず存在しなければならない、JP Coreでは注射の医薬品情報は単一薬剤の場合も Medicationリソースとして記述し、medicationCodeableConceptは使用しない。参照するMedicationリソースは、MedicationRequest.contained属性に内包することが望ましいが、外部参照としても良い。",
        "comment" : "If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource.\r\n\r\nひとつのtext要素と、複数のcoding 要素を記述できる。処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ずtext要素に格納した上で、それをコード化した情報を1個以上のcoding 要素に記述する。\r\n\r\n厚生労働省標準であるHOT9コード（販社指定が不要な場合にはHOT7コード）または広く流通しているYJコードを用いるか、一般名処方の場合には厚生労働省保険局一般名処方マスタのコードを使用して、Coding要素（コードsystemを識別するURI、医薬品のコード、そのコード表における医薬品の名称の3つからなる）で記述する。\r\n\rなお、上記のいずれの標準的コードも付番されていない医薬品や医療材料の場合には、薬機法の下で使用されているGS1標準の識別コードであるGTIN(Global Trade Item Number)の調剤包装単位（最少包装単位、個別包装単位）14桁を使用する。\r\n\rひとつの処方薬、医療材料を複数のコード体系のコードで記述してもよく、その場合にcoding 要素を繰り返して記述する。\rただし、ひとつの処方薬を複数のコードで繰り返し記述する場合には、それらのコードが指し示す処方薬、医療材料は当然同一でなければならない。\rまた、処方を発行した医療機関内でのデータ利用のために、医療機関固有コード体系によるコード（ハウスコード、ローカルコード）の記述を含めてもよいが、その場合でも上述したいずれかの標準コードを同時に記述することが必要である。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication"
            ]
          }
        ]
      },
      {
        "id" : "MedicationStatement.subject",
        "path" : "MedicationStatement.subject",
        "short" : "処方箋が発行された患者に対する参照",
        "definition" : "JP Coreでは患者を表すPatientリソースへの参照。\r\n一般には薬剤が投与される対象となる患者を表現するPatient Resourceに対するリンク。",
        "comment" : "処方オーダーの対象は必須項目である。\r\n二次利用のためにどこに実際の対象がいるのかについての情報は提供されない。特定の対象に対して匿名化することも必要である。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "MedicationStatement.effective[x]",
        "path" : "MedicationStatement.effective[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationStatement.effective[x]:effectivePeriod",
        "path" : "MedicationStatement.effective[x]",
        "sliceName" : "effectivePeriod",
        "short" : "服薬期間",
        "definition" : "薬が服用される期間",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "MedicationStatement.effective[x]:effectivePeriod.start",
        "path" : "MedicationStatement.effective[x].start",
        "short" : "開始日",
        "definition" : "薬の服用を開始した日"
      },
      {
        "id" : "MedicationStatement.effective[x]:effectivePeriod.end",
        "path" : "MedicationStatement.effective[x].end",
        "short" : "終了日",
        "definition" : "薬の服用を終了する日",
        "comment" : "この値は必ず境界日を含む。2012-02-03T10:00:00は2012-02-03を終了時刻(end)の値とする期間を示す。"
      },
      {
        "id" : "MedicationStatement.dateAsserted",
        "path" : "MedicationStatement.dateAsserted",
        "short" : "このステートメントが言明された日",
        "definition" : "情報源となったインスタンスでこのステートメントが言明された日"
      },
      {
        "id" : "MedicationStatement.informationSource",
        "path" : "MedicationStatement.informationSource",
        "short" : "この服用状況についての情報を提供した人物あるいは組織についての参照",
        "definition" : "この服用状況についての情報を提供した人物あるいは組織についての参照"
      },
      {
        "id" : "MedicationStatement.derivedFrom",
        "path" : "MedicationStatement.derivedFrom",
        "short" : "その他の支持情報",
        "definition" : "MedicationStatementリソースと関連するMedicationRequestやその他の支持情報を表すリソースと関連付けられるようにする。"
      },
      {
        "id" : "MedicationStatement.reasonCode",
        "path" : "MedicationStatement.reasonCode",
        "short" : "この投薬の理由。対象疾患",
        "definition" : "この薬剤た投与された理由",
        "comment" : "このコードは疾患分類であっても良い。JP Coreでは傷病名マスターの使用を前提とする。"
      },
      {
        "id" : "MedicationStatement.reasonCode.coding",
        "path" : "MedicationStatement.reasonCode.coding",
        "short" : "投与理由，対象疾患についてのコード"
      },
      {
        "id" : "MedicationStatement.reasonReference",
        "path" : "MedicationStatement.reasonReference",
        "short" : "服薬理由を支持するObservation, Condition, DiagnosticReportについての参照。"
      },
      {
        "id" : "MedicationStatement.note",
        "path" : "MedicationStatement.note",
        "short" : "他のフィールドには記述できないこのstatementについての追加情報",
        "definition" : "他の属性には記載できないこのstatementについての備考情報"
      },
      {
        "id" : "MedicationStatement.dosage",
        "path" : "MedicationStatement.dosage",
        "short" : "この薬剤がどのように服用されたのか，服用すべきだったのかを示す情報",
        "definition" : "患者にこの薬剤がどのように服用すべきかを示す情報",
        "type" : [
          {
            "code" : "Dosage",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosage_Injection"
            ]
          }
        ]
      },
      {
        "id" : "MedicationStatement.dosage.extension:rateComment",
        "path" : "MedicationStatement.dosage.extension",
        "sliceName" : "rateComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_RateComment"
            ]
          }
        ]
      }
    ]
  }
}

```
