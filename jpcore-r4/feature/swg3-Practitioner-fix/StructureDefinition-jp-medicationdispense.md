# JP Core MedicationDispense Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationDispense Profile**

## Resource Profile: JP Core MedicationDispense Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispense
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationDispense
* **項目**: *Title*
  * **内容**: JP Core MedicationDispense Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはMedicationDispenseリソースに対して、内服・外用薬剤処方調剤・払い出し記録のデータを送受信するための基礎となる制約と拡張を定めたものである。JP_MedicationDispenseBaseプロファイルからの派生プロファイルである。 

本プロファイルは内服、外用の薬剤処方の調剤情報をMedicationDispenseリソースを使用して表現する。薬剤処方は指示する項目、使用する用語集、プロセスなどにおいて諸外国と日本では異なっており、日本国内で規格を運用するためにExtensionの追加や用語集の追加・変更を行った。現在、日本での処方関連規格として利用されているJAHIS 処方データ交換規約 Ver 3.0C、JAHIS電子版お薬手帳データフォーマット仕様書Ver.2.4を参考にした。 以下、本プロファイルのMedicationDispenseリソースを「JP Core MedicationDispenseリソース」と呼ぶ。

薬剤処方のFHIR仕様に関しては、先行事例として「[処方情報 HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf)」があるが、JP Coreとして利用できる仕様については可能な限り取り入れるようにした。ただし、拡張のURLは新たにJP Coreの命名規則に基づいて命名している。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 医療機関内の薬剤部門システムや調剤薬局のシステムから特定の患者の処方調剤情報を検索する
* 地域連携システムにおいて投薬情報を電子的に情報交換する

## スコープ

### 対象

本プロファイルの対象は内服、外用の一般的な薬剤処方の調剤情報を電子的に連携するためのメッセージを記述することである。

### 対象としないこと

本プロファイルは内服、外用の薬剤に関するものであり、注射薬剤については対象としない。注射薬剤は、指示の仕方や指示する項目が内服、外用とは大きく異なるため、JP Core MedicationDispense Injectionプロファイルとして記述することとする。

また、本プロファイルのMedicationDispenseリソースは薬剤の調剤に関するものであり、指示（オーダ）、内服確認や実施記録は対象としない。それぞれ、MedicationRequest, MedicationAdministrationが対応するリソースである。

## プロファイル定義

**Usages:**

* Examples for this Profile: [MedicationDispense/jp-medicationdispense-example-1](MedicationDispense-jp-medicationdispense-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationdispense)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationdispense.csv), [Excel](StructureDefinition-jp-medicationdispense.xlsx), [Schematron](StructureDefinition-jp-medicationdispense.sch) 

### 必須要素

次のデータ項目は必須（データが存在しなければならない）である。

MedicationDispense リソースは、次の要素を持たなければならない。

* status : ステータスは必須である
* medicationCodeableConcept : 医薬品の識別情報は必須であり、medicationCodeableConcept.coding.system, medicationCodeableConcept.coding.code, medicationCodeableConcept.coding.display が必ず存在しなければならない
* subject : 患者の参照情報は必須であり、subject.referenceないしsubject.identifierが必ず存在しなければならない
* whenHandedOver : 払い出し日時であり、JP Coreでは必須である
* quantity : 調剤量は必須であり、quantity.value, quantity.unit, quantity.system, quantity.code が必ず存在しなければならない
* dosageInstruction.text : フリーテキストの用法指示であり、JP Coreでは必須である
* dosageInstruction.timing : 服用タイミングを記録しJP Coreでは必須である、dosageInstruction.timing.code.coding.code, dosageInstruction.timing.code.coding.system が必ず存在しなければならない

### Extensions定義

JP Core MedicationDispense プロファイルで使用される拡張は次の通りである。

| | | | |
| :--- | :--- | :--- | :--- |
| 調剤結果 | 薬剤単位の調剤結果 | [JP_MedicationDispense_Preparation](StructureDefinition-jp-medicationdispense-preparation.md) | CodeableConcept |
| 服用開始日 | 服用開始日を格納する拡張《dosageInstruction配下》 | [JP_MedicationDosage_PeriodOfUse](StructureDefinition-jp-medicationdosage-periodofuse.md) | Period |
| 実服用日数 | 実服用日数を格納する拡張《dosageInstruction配下》 | [JP_MedicationDosage_UsageDuration](StructureDefinition-jp-medicationdosage-usageduration.md) | Duration |

### 用語定義

HL7 FHIRの基底規格では、薬剤コードをはじめとして、剤形などでSNOMED CTが使われているが、国としてライセンスを取得していない。代替としてJAHIS処方データ交換規約やSS-MIX2で使われている用語集を採用した。

HL7 V2系では用語集を識別するコードシステム名(以下、「CS名」）は文字列であったが、FHIRではURIを指定する必要があるため、それぞれにURIを割り当てた。以下に使用する用語集のCS名とURI表記を列記する。

| | | |
| :--- | :--- | :--- |
| 医薬品 | HOT7 | http://medis.or.jp/CodeSystem/master-HOT7 |
| 医薬品 | HOT9 | http://medis.or.jp/CodeSystem/master-HOT9 |
| 医薬品 | HOT13 | http://medis.or.jp/CodeSystem/master-HOT13 |
| 医薬品 | YJコード | http://capstandard.jp/iyaku.info/CodeSystem/YJ-code |
| 医薬品 | ⼀般処⽅名マスター | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationGeneralOrderCode |
| 剤形 | MERIT-9(剤形) | http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationFormMERIT9_CS |
| 薬品単位 | MERIT-9(単位） | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code |
| 力価区分 | 処方情報 HL7FHIR 記述仕様(力価区分) | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthType |
| 用法 | JAMI処方・注射オーダ標準用法規格(用法コード) | http://jami.jp/CodeSystem/MedicationUsage |
| 用法 | JAMI処方・注射オーダ標準用法規格(補足用法コード) | http://jami.jp/CodeSystem/MedicationUsageAdditional |
| 部位 | JAMI処方・注射オーダ標準用法規格(部位コード) | http://jami.jp/CodeSystem/MedicationBodySiteExternal |
| 投与方法 | JAMI処方・注射オーダ標準用法規格(基本用法区分) | http://jami.jp/CodeSystem/MedicationMethodBasicUsage |
| 投与経路 | HL7 V2(使用者定義表0162) | http://jpfhir.jp/fhir/core/CodeSystem/route-codes |
| 入外区分 | HL7V2(HL7表0482) | http://terminology.hl7.org/CodeSystem/v2-0482 |

### 項目の追加

療養担当則23条では、「保険医は、処方箋を交付する場合には、様式第二号若しくは第二号の二又はこれらに準ずる様式の処方箋に必要な事項を記載しなければならない。」とされており、外来処方、院内処方の区分を明示していない。 したがって、個別のユースケースにおいては一部を省略されることも前提の上で、規格としてはこれに準拠すべきと考え、様式に収載されている以下の項目を追加した。

* 服用開始日の追加（拡張「JP_MedicationDosage_PeriodOfUse」を使用）
* 実服用日数の追加（拡張「JP_MedicationDosage_UsageDuration」を使用）
* 調剤結果の追加（拡張「JP_MedicationDispense_Preparation」を使用）
* 一日量処方への対応（doseInstruction.doseAndRate.rateRatioを使用）
* RP番号、薬剤番号の追加（identifierを使用）
* ⼒価区分の追加（dosageInstruction.doseAndRate.typeを使用）

## 利用方法

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/MedicationDispense?identifier=http://myhospital.com/fhir/medication|1234567890 |
| SHOULD | patient | reference | GET [base]/MedicationDispense?patient=123456 |
| SHOULD | patient,whenhandedover | referenece,date | GET [base]/MedicationDispense?patient=123456&whenhandedover=eq2013-01-14 |
| MAY | whenhandedover,whenprepared,context,code,performer | date,date,token,token,token | GET [base]/MedicationDispense?code=http://medis.or.jp/CodeSystem/master-HOT9|105271807 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、オーダIDなどの識別子によるMedicationRequestの検索をサポートしなければならない（SHALL）

```
GET [base]/MedicationDispense?identifier={system|}[token]

```

例：

```
GET [base]/MedicationDispense?identifier=http://myhospital.com/fhir/medication|1234567890

```

指定された識別子に一致するMedicationDispenseリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. patient 検索パラメータを使用して、患者のリファレンス情報によるMedicationDispenseの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/MedicationDispense?patient=[id]
GET [base]/MedicationDispense?patient=[url]

```

例：

```
GET [base]/MedicationDispense?patient=123456

```

リソースIDが123456の患者のMedicationDispenseリソースを含むBundleを検索する。
1. patient,whenhandedover 検索パラメータを使用して、患者のリファレンス情報と払い出し日によるMedicationDispenseの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/MedicationDispense?patient=[id]&whenhandedover=[date]
GET [base]/MedicationDispense?patient=[url]&whenhandedover=[date]

```

例：

```
GET [base]/MedicationDispense?patient=123456&whenhandedover=eq2013-01-14

```

リソースIDが123456の患者の2013-01-14に払い出されたMedicationDispenseリソースを含むBundleを検索する。

##### 追加検索パラメータ

追加検索パラメータは定義しない。

#### Operation一覧

JP Core MedicationDispense リソースに対する操作は定義されていない。

### サンプル

下記の内容の処方に従って調剤する例をFHIRで表現する場合のサンプルを示す。

* [**調剤実施 内服薬**](MedicationDispense-jp-medicationdispense-example-1.md)

## 注意事項

### 記述の単位について

MedicationDispenseは薬剤をCodeableConceptとして1つまでしか持つか、Medication Resourceのreferenceをもつことしかできない。 したがって、複数の薬剤を同一のRp番号で表現する場合にはMedicationDispenseを繰り返すか、複数の薬剤をまとめたMedication Resouceのインスタンスを参照することとなる。 ワーキンググループでの検討の結果、冗長とはなるがidentifierにRp番号と薬剤番号を記録することとし、MedicationDispenseを繰り返すことで表現する方法を推奨することとした。

### 調剤量の記述方法

調剤量はquantityに、SimpleQuantity型で記録する。単位コードには、投与量と同様に医薬品単位略号を使用する。 調剤日数を記述したい場合は、daysSupply要素にSimpleQuantity方で記述し、単位コードはUCUMを使用する。

21錠（1日3錠×7日分）を調剤する場合のインスタンス例を以下に示す。

```
"quantity": {
  "value": 21,
  "unit": "錠",
  "system": "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
  "code": "TAB"
},
"daysSupply": {
  "value": 7,
  "unit": "日",
  "system": "http://unitsofmeasure.org",
  "code": "d"
}

```

### 力価区分の記述方法

用量は製剤量で記述することを基本とするが、必要に応じて原薬量指定も可能とする。この識別の記述方法は、JP Core MedicationRequestと同様とする。

### 代替医薬品への変更内容の記述方法

調剤時に行ったジェネリック医薬品などへの変更内容の記述は、substitution.wasSubstituted, substitution.type, substitution.reason を使用する。 変更の種類はデフォルトのコード表（"http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution"）を使用する。 変更の理由はデフォルトのコード表（"http://terminology.hl7.org/CodeSystem/v3-ActReason")を使用するかフリーテキストで記述する。ローカルのコード表を使用してもよい。

ジェネリック医薬品への変更の場合のインスタンス例を以下に示す。

```
"substitution" : {
  "wasSubstituted" : true,
  "type" : {
    "coding" : [
      {
        "code" : "G",
        "system" : "http://terminology.hl7.org/CodeSystem/v3-substanceAdminSubstitution",
        "display" : "generic composition"
      }
    ]
  },
  "reason": [
    {
      "coding" : [
        {
          "code" : "RR",
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "display" : "regulatory requirement"
        }
      ]
    }
  ]
}

```

### 払い出し先

調剤された薬剤が払い出された先は、destination要素にReference型でLocationリソースの参照情報を記述する。

```
"destination" : {
  "reference" : "Location/12A"
}

```

### 払い出し日時

調剤された薬剤が払い出された日時は、whenHandedOver要素にdateTime型で記述する。

### 調剤日時

薬剤が実際に調剤された日時は、whenPrepared要素にdateTime型で記述する。

### 調剤実施者

調剤を実際に行った医療従事者は、performer.actor要素にReference型でPractitionerリソースの参照情報を記述する。役割に応じて複数の医療従事者を記述できる。

```
"performer" : [
  {
    "function" : {
      "coding" : [
        {
          "code" : "packager",
          "system" : "http://terminology.hl7.org/CodeSystem/medicationdispense-performer-function",
          "display" : "Packager"
        }
      ]
    },
    "actor" : {
      "reference" : "Practitioner/01234567"
    }
  }
]

```

### 調剤結果の記述方法

単一の薬剤に対する調剤結果は、MedicationDispenseに対して定義した拡張「JP_MedicationDispense_Preparation」を使用する。 この拡張は、CodeableConcept型を使用してテキストによる指示とコードによる指示のどちらかを記述することができる。 一つの薬剤に対して、複数の指示を記録する場合には、この拡張を、拡張単位で繰り返して記録する。 調剤結果で使用するコードは、処方情報 HL7FHIR 記述仕様(調剤指示)("http://jami.jp/CodeSystem/DrugDispensePreparationMethod")を推奨する。

薬剤単位の調剤結果を表すインスタンス例を示す。

```
"extension": [
  {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDispense_Preparation",
    "valueCodeableConcept": {
      "coding": [
        {
          "code": "C",
          "system": "http://jami.jp/CodeSystem/DrugDispensePreparationMethod",
          "display": "粉砕指示"
        }
      ]
    }
  }, 
  {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDispense_Preparation",
    "valueCodeableConcept": {
      "text" : "嚥下障害のため、上記粉砕指示"
    }
  } 
],


```

### 疑義照会の内容

調剤時に行った疑義照会の内容は、note要素にAnnotation型で記述する。

### 調剤時の特記事項（コメントなど）

調剤時の特記事項（コメントなど）も、note要素にAnnotation型で記述する。

### 薬剤処方の各種指示情報の記述方法について

調剤の基となった薬剤処方の用法などの情報は、特に記述のない限り JP Core MedicationRequest と同様の記述方法とする。該当する項目としては以下のものがある。

* 服用期間、実服用日数
* 服用開始日
* １回量と１日量
* 外用部位
* RP番号、薬剤番号
* 処方箋番号（オーダID）
* 投与方法、投与経路
* 入外区分
* 調剤指示以外の薬剤単位、RP単位のコメント
* 不均等投与
* 隔日投与、曜日指定投与

## その他、参考文献・リンク等

1. HL7, FHIR MedicationDispense Resource,[https://hl7.org/fhir/R4/MedicationDispense.html](https://hl7.org/fhir/R4/MedicationDispense.html)
1. 保健医療福祉情報システム工業会, JAHIS 処方データ交換規約 Ver.3.0C,[https://www.jahis.jp/standard/detail/id=564](https://www.jahis.jp/standard/detail/id=564)
1. 日本医療情報学会MERIT-9研究会, 医療情報交換規約運用指針、MERIT-9 処方オーダver 1.0,[http://merit-9.mi.hama-med.ac.jp/jahis/SHOHOU.pdf](http://merit-9.mi.hama-med.ac.jp/jahis/SHOHOU.pdf)
1. 保健医療福祉情報システム工業会, JAHISデータ交換規約（共通編）Ver.1.1,[https://www.jahis.jp/standard/detail/id=125](https://www.jahis.jp/standard/detail/id=125)
1. 保健医療福祉情報システム工業会, JAHIS注射データ交換規約Ver.2.1C,[https://www.jahis.jp/standard/detail/id=590](https://www.jahis.jp/standard/detail/id=590)
1. 児玉 義憲、[hl7v2-to-fhir, https://github.com/Acedia-Belphegor/hl7v2-to-fhir/](https://github.com/Acedia-Belphegor/hl7v2-to-fhir/)
1. Mike Henderson, 日本HL7協会監修、「HL7メッセージ交換」、第2版、インナービジョン社、2013年
1. 一般社団法人医療情報システム開発センター, 医薬品HOT コードマスター,[http://www2.medis.or.jp/hcode/](http://www2.medis.or.jp/hcode/)
1. 日本医療情報学会、SS-MIX2仕様書・ガイドライン,[http://www.jami.jp/jamistd/ssmix2.php](http://www.jami.jp/jamistd/ssmix2.php)
1. 保健医療福祉情報システム工業会, JAHIS電子処方箋実装ガイドVer.1.2,[https://www.jahis.jp/standard/detail/id=774](https://www.jahis.jp/standard/detail/id=774)
1. 日本医療情報学会, 処方情報 HL7FHIR 記述仕様(2021年10月),[https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf](https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationdispense",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispense",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationDispense",
  "title" : "JP Core MedicationDispense Profile",
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
  "description" : "このプロファイルはMedicationDispenseリソースに対して、内服・外用薬剤処方調剤・払い出し記録のデータを送受信するための基礎となる制約と拡張を定めたものである。JP_MedicationDispenseBaseプロファイルからの派生プロファイルである。",
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
      "identity" : "rx-dispense-rmim",
      "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
      "name" : "V3 Pharmacy Dispense RMIM"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispenseBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationDispense",
        "path" : "MedicationDispense"
      },
      {
        "id" : "MedicationDispense.identifier",
        "path" : "MedicationDispense.identifier",
        "min" : 2
      },
      {
        "id" : "MedicationDispense.identifier:orderInRp",
        "path" : "MedicationDispense.identifier",
        "sliceName" : "orderInRp",
        "short" : "同一RP番号（剤グループ）での薬剤の表記順",
        "definition" : "同一剤グループでの薬剤を表記する際の順番。XML形式と異なりJSON形式の場合、表記順は項目の順序を意味しない。したがって、薬剤の記載順を別に規定する必要があるためIDを用いて表現する。",
        "comment" : "同一剤グループ内での薬剤の順番を1から順の番号で示す。",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "MedicationDispense.identifier:orderInRp.system",
        "path" : "MedicationDispense.identifier.system",
        "short" : "RP番号内（剤グループ内）の連番を示すsystem値",
        "definition" : "剤グループ内番号の名前空間を識別するURI。固定値 http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex"
      },
      {
        "id" : "MedicationDispense.identifier:orderInRp.value",
        "path" : "MedicationDispense.identifier.value",
        "short" : "RP番号内（剤グループ内）の連番",
        "definition" : "剤グループ内連番。",
        "comment" : "value は string型であり、数値はゼロサプレス、つまり、'01'でなく'1'と指定すること。",
        "min" : 1
      },
      {
        "id" : "MedicationDispense.medication[x]",
        "path" : "MedicationDispense.medication[x]",
        "short" : "コード集で定義された医薬品コード",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "description" : "処方する製剤を表すコード。",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationCode_VS"
        }
      },
      {
        "id" : "MedicationDispense.authorizingPrescription",
        "path" : "MedicationDispense.authorizingPrescription",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.dosageInstruction",
        "path" : "MedicationDispense.dosageInstruction",
        "type" : [
          {
            "code" : "Dosage",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosage"
            ]
          }
        ]
      }
    ]
  }
}

```
