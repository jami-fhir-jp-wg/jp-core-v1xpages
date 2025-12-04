# JP Core MedicationAdministration Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationAdministration Profile**

## Resource Profile: JP Core MedicationAdministration Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationAdministration
* **項目**: *Title*
  * **内容**: JP Core MedicationAdministration Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはMedicationAdministrationリソースに対して、内服・外用薬剤処方投与実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 

このResource/Profileは内服、外用の薬剤処方の投与実施情報を表現する。薬剤処方は指示する項目、使用する用語集、プロセスなどにおいて諸外国と日本では異なっており、日本国内で規格を運用するためにExtensionの追加や用語集の追加・変更を行った。現在、日本での処方関連規格として利用されているJAHIS 処方データ交換規約 Ver 3.0C を参考にした。

薬剤処方のFHIR仕様に関しては、先行事例として「[処方情報 HL7FHIR 記述仕様](https://std.jpfhir.jp/stddoc/ePrescriptionDataFHIR_v1x.pdf)」があるが、利用できる仕様については可能な限り取り入れるようにした。ただし、拡張のURLは新たにJP Coreの命名規則に基づいて命名している。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 電子カルテから特定の患者の処方実施情報を検索する
* SS-MIX2やJAHIS処方データ交換規約に準拠した処方実施メッセージをJSONに変換する

## スコープ

### 対象

このProfileの対象は内服、外用の一般的な薬剤処方の投与実施情報を電子的に連携するためのメッセージを記述することである。

### 対象としないこと

このProfileは内服、外用の薬剤に関するものであり、注射薬剤については対象としない。注射薬剤は、指示の仕方や指示する項目が内服、外用とは大きく異なるため、JP Core MedicationAdministration Injectionプロファイルとして記述することとする。

また、このリソースは薬剤の投与実施に関するものであり、指示（オーダ）、調剤や払い出しは対象としない。それぞれ、MedicationRequest、MedicationDispense が対応するリソースである。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md) and [JP Core Procedure Profile](StructureDefinition-jp-procedure.md)
* Examples for this Profile: [MedicationAdministration/jp-medicationadministration-example-1](MedicationAdministration-jp-medicationadministration-example-1.md) and [MedicationAdministration/jp-medicationadministration-example-2](MedicationAdministration-jp-medicationadministration-example-2.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationadministration)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationadministration.csv), [Excel](StructureDefinition-jp-medicationadministration.xlsx), [Schematron](StructureDefinition-jp-medicationadministration.sch) 

### 必須要素

次のデータ項目は必須（データが存在しなければならない）である。

MedicationAdministration リソースは、次の要素を持たなければならない。

* status : ステータスは必須であり、JP Coreでは `completed` or `stopped` に限定される
* medicationCodeableConcept : 医薬品の識別情報は必須であり、medicationCodeableConcept.coding.system, medicationCodeableConcept.coding.code, medicationCodeableConcept.coding.display が必ず存在しなければならない
* subject : 患者の参照情報は必須であり、subject.reference ないし subject.identifier が必ず存在しなければならない
* effectiveDateTime : 投与実施日時であり、JP Coreでは必須である

※投与実施のユースケースにおいては、実施投与量(dose)が必須であることが望ましいが、ワーキンググループでの検討の結果、投与中止のユースケースも考慮して必須としない結論となった。

### Extensions定義

JP Core MedicationAdministration プロファイルで使用される拡張は次の通りである。

| | | | |
| :--- | :--- | :--- | :--- |
| 依頼科 | 依頼科を格納するための拡張 | [JP_MedicationAdministration_RequestDepartment](StructureDefinition-jp-medicationadministration-requestdepartment.md) | CodeableConcept |
| 依頼日時 | 依頼日時を格納するための拡張 | [JP_MedicationAdministration_RequestAuthoredOn](StructureDefinition-jp-medicationadministration-requestauthoredon.md) | DateTime |
| 実施場所 | 実施場所を格納するための拡張 | [JP_MedicationAdministration_Location](StructureDefinition-jp-medicationadministration-location.md) | Reference(Location) |
| 依頼医 | 依頼医を格納するための拡張 | [JP_MedicationAdministration_Requester](StructureDefinition-jp-medicationadministration-requester.md) | Reference(Practitioner) |

### 用語定義

HL7 FHIRの基底規格では、薬剤コードをはじめとして、剤形などでSNOMED CTが使われているが、国としてライセンスを取得していない。代替としてJAHIS処方データ交換規約やSS-MIX2で使われている用語集を採用した。

HL7 V2系では用語集を識別するコーディングシステム名(以下、「CS名」）は文字列であったが、FHIRではURIを指定する必要があるため、それぞれにURIを割り当てた。以下に使用する用語集のCS名とURI表記を列記する。

| | | |
| :--- | :--- | :--- |
| 医薬品 | HOT7 | http://medis.or.jp/CodeSystem/master-HOT7 |
| 医薬品 | HOT9 | http://medis.or.jp/CodeSystem/master-HOT9 |
| 医薬品 | HOT13 | http://medis.or.jp/CodeSystem/master-HOT13 |
| 医薬品 | YJコード | http://capstandard.jp/iyaku.info/CodeSystem/YJ-code |
| 医薬品 | ⼀般処⽅名マスター | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationGeneralOrderCode |
| 薬品単位 | MERIT-9(単位） | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code |
| 力価区分 | 処方情報 HL7FHIR 記述仕様(力価区分) | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthType |
| 用法 | JAMI処方・注射オーダ標準用法規格(用法コード) | http://jami.jp/CodeSystem/MedicationUsage |
| 用法 | JAMI処方・注射オーダ標準用法規格(補足用法コード) | http://jami.jp/CodeSystem/MedicationUsageAdditional |
| 部位 | JAMI処方・注射オーダ標準用法規格(部位コード) | http://jami.jp/CodeSystem/MedicationBodySiteExternal |
| 投与方法 | JAMI処方・注射オーダ標準用法規格(基本用法区分) | http://jami.jp/CodeSystem/MedicationMethodBasicUsage |
| 入外区分 | HL7V2(HL7表0482) | http://terminology.hl7.org/CodeSystem/v2-0482 |

### 項目の追加

MedicationAdministrationリソースでは、依頼元のMedicationRequestリソースをrequest要素にReferenceで参照できるようになっているが、 依頼元のMedicationRequestリソースが取得できないケースも考慮して、依頼情報を直接記述できるように以下の項目を追加した。

* 依頼科の追加（拡張「JP_MedicationAdministration_RequestDepartment」を使用）
* 依頼医の追加（拡張「JP_MedicationAdministration_Requester」を使用）
* 依頼日時の追加（拡張「JP_MedicationAdministration_RequestAuthoredOn」を使用）

また、投薬実施場所（病棟、病室、ベッド番号など）を記述できるように以下の項目を追加した。

* 実施場所の追加（拡張「JP_MedicationAdministration_Location」を使用）

## 利用方法

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/MedicationAdministration?identifier=http://myhospital.com/fhir/medication|1234567890 |
| SHOULD | patient | reference | GET [base]/MedicationAdministration?patient=123456 |
| SHOULD | patient,effective-time | reference,date | GET [base]/MedicationAdministration?patient=123456&effective-time=eq2013-01-14 |
| MAY | effective-time,code,performer,request | date,token,reference,reference | GET [base]/MedicationAdministration?code=http://medis.or.jp/CodeSystem/master-HOT9|105271807 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、オーダIDなどの識別子によるMedicationAdministrationの検索をサポートしなければならない（SHALL）

```
GET [base]/MedicationAdministration?identifier={system|}[token]

```

例：

```
GET [base]/MedicationAdministration?identifier=http://myhospital.com/fhir/medication|1234567890

```

指定された識別子に一致するMedicationAdministrationリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. patient 検索パラメータを使用して、患者のリファレンス情報によるMedicationAdministrationの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/MedicationAdministration?patient=[id]
GET [base]/MedicationAdministration?patient=[url]

```

例：

```
GET [base]/MedicationAdministration?patient=123456

```

リソースIDが123456の患者のMedicationAdministrationリソースを含むBundleを検索する。
1. patient,effective-time 検索パラメータを使用して、患者のリファレンス情報と払い出し日によるMedicationAdministrationの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/MedicationAdministration?patient=[id]&effective-time=[date]
GET [base]/MedicationAdministration?patient=[url]&effective-time=[date]

```

例：

```
GET [base]/MedicationAdministration?patient=123456&effective-time=eq2013-01-14

```

リソースIDが123456の患者の2013-01-14に投与実施されたMedicationAdministrationリソースを含むBundleを検索する。

##### 追加検索パラメータ

追加検索パラメータは定義しない。

#### Operation一覧

JP MedicationAdministration リソースに対する操作は定義されていない。

### サンプル

[JAHIS処方データ交換規約 Ver.3.0C](https://www.jahis.jp/standard/detail/id=564)の137ページに記載されている下記の処方実施をFHIRで表現する場合のサンプルを示す。

* [**投薬実施 ムコダイン錠２５０ｍｇ**](MedicationAdministration-jp-medicationadministration-example-1.md)
* [**投薬中止 パンスポリンＴ錠１００ １００ｍｇ**](MedicationAdministration-jp-medicationadministration-example-2.md)

## 注意事項

### 記述の単位について

MedicationAdministrationは薬剤をCodeableConceptとして1つまでしか持つか、Medication Resourceのreferenceをもつことしかできない。 したがって、複数の薬剤を同一のRp番号で表現する場合にはMedicationAdministrationを繰り返すか、複数の薬剤をまとめたMedication Resourceのインスタンスを参照することとなる。 ワーキンググループでの検討の結果、冗長とはなるがidentifierにRp番号と薬剤番号を記録することとし、MedicationAdministrationを繰り返すことで表現する方法を推奨することとした。

基本的にはMedicationRequestに対応したMedicationAdministrationインスタンスを生成する。 ただし、内服薬剤処方のMedicationRequestは複数回、複数日の服薬タイミングをまとめて1つのインスタンスで記述するが、MedicationAdministrationは1回の服薬単位の粒度でインスタンスを生成する必要がある。 例えば、MedicationRequestの用法、投与日数が「１日３回 朝昼夕食後 １４日分」の場合、3 x 14 = 42 (x 薬剤数) の処方実施情報インスタンスが生成される。

### 投与実施の記述方法

### 投薬管理ステータス

投与が実施された場合、status要素に `completed` を記述する。

```
"status": "completed"

```

### 実施日

投与が実施された日時をeffectiveDateTime or effectivePeriod要素に[RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)形式で記述する。 タイムゾーンはJST(+09:00)を指定する。

開始日時、終了日時が明確である場合はeffectivePeriodに記述する。

```
"effectivePeriod": {
  "start": "2016-07-01T08:05:21+09:00",
  "end": "2016-07-01T13:05:43+09:00"
}

```

開始日時しか存在せず終了日時が明確でない場合、effectivePeriodのstartとendに同じ値を記述するか、effectiveDateTime要素に記述する。

```
"effectiveDateTime": "2016-08-25T08:30:00+09:00"

```

### 実施者

投与を実施した医療従事者（自己管理の場合は患者）をperformer要素に記述する。

performer.functionには、FHIR標準のValueSetである `http://terminology.hl7.org/CodeSystem/med-admin-perform-function` から、実施者を表す `performer` を固定で記述する。 performer.actorには、医療従事者(Practitioner)、または患者(Patient)リソースの参照を記述する。

```
"performer": [
  {
    "function": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/med-admin-perform-function",
          "code": "performer",
          "display": "Performer"
        }
      ]
    },
    "actor": {
      "reference": "Practitioner/1",
      "display": "看護師 夏子"
    }
  }
]

```

### 実施場所

投与を実施した場所（病棟、病室、ベッド番号など）を、拡張「JP_MedicationAdministrationLocation」を使用して、Reference型でLocationリソースの参照情報を記述する。 (Location Resourceの記述仕様については、当プロファイルのスコープ外とする)

```
"extension": [
  {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministrationLocation",
    "valueReference": {
      "reference": "Location/1"
    }
  }
]

```

### 実施情報

「1:内服」、「2:外用」などJAMI標準用法コードにて基本用法区分として表現される区分は、dosage.route 要素にコードまたは文字列で指定する。基本用法区分を識別するURIとして、"http://jami.jp/CodeSystem/MedicationMethodBasicUsage"を使用する。

「A:貼付」、「B:塗布」などJAMI標準用法コードにて用法詳細区分として表現される区分は、dosage.method 要素にコードまたは文字列で指定する。 用法詳細区分を識別するURIとして、"http://jami.jp/CodeSystem/MedicationMethodDetailUsage"を使用する。

投与量は dosage.dose に、SimpleQuantity型で記録する。単位コードには、医薬品単位略号を使用する。

```
"dosage": {
  "route": {
    "coding": [
      {
        "system": "http://jami.jp/CodeSystem/MedicationMethodDetailUsage",
        "code": "10",
        "display": "経口"
      }
    ]
  },
  "method": {
    "coding": [
      {
        "system": "http://jami.jp/CodeSystem/MedicationMethodBasicUsage",
        "code": "1",
        "display": "内服"
      }
    ]
  },
  "dose": {
    "value": 1,
    "unit": "錠",
    "system": "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
    "code": "TAB"
  }
}

```

### 投薬依頼情報

実施の元となった投薬依頼(MedicationRequest)リソースの参照を記述する。

```
"request": {
  "reference": "MedicationRequest/1"
}

```

### 依頼科

投薬依頼を行なった診療科を、拡張「JP_MedicationAdministration_RequestDepartment」を使用して、CodeableConcept型で記述する。

```
{
  "resourceType": "MedicationAdministration",
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_RequestDepartment",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
            "code": "01",
            "display": "内科"
          }
        ]
      }
    }
  ]
}

```

### 依頼医師

投薬依頼を行なった医師を、拡張「JP_MedicationAdministrationRequester」を使用して、Reference型でPractitionerリソースの参照情報を記述する。 (Practitioner Resourceの記述仕様については、当プロファイルのスコープ外とする)

```
{
  "resourceType": "MedicationAdministration",
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministrationRequester",
      "valueReference": {
        "reference": "Practitioner/2"
      }
    }
  ]
}

```

### 薬剤処方の各種指示情報の記述方法について

投薬実施の基となった薬剤処方の用法などの情報は、特に記述のない限り JP Core MedicationRequest と同様の記述方法とする。該当する項目としては以下のものがある。

* RP番号、薬剤番号
* 処方箋番号（オーダID）
* 入外区分

### 依頼日時

投薬依頼を行なった日時を、拡張「JP_MedicationAdministrationRequestAuthoredOn」を使用して、[RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)形式で記述する。 タイムゾーンはJST(+09:00)を指定する。

```
{
  "resourceType": "MedicationAdministration",
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministrationRequestAuthoredOn",
      "valueDateTime": "2016-08-20T09:30:00+09:00"
    }
  ]
}

```

### 投与中止の記述方法

### 投薬管理ステータス

投与が中止された場合、status要素に `stopped` を記述する。

```
"status": "stopped"

```

### 実施日

投与を実施する予定であった日時をeffectiveDateTime要素に[RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)形式で記述する。 タイムゾーンはJST(+09:00)を指定する。

```
"effectiveDateTime": "2016-08-25T08:30:00+09:00"

```

### 投薬依頼情報

投与実施と同様

## その他、参考文献・リンク等

1. HL7, FHIR MedicationRequest Resource,[https://hl7.org/fhir/R4/medicationrequest.html](https://hl7.org/fhir/R4/medicationrequest.html)
1. 保健医療福祉情報システム工業会, JAHIS 処方データ交換規約 Ver.3.0C,[https://www.jahis.jp/standard/detail/id=564](https://www.jahis.jp/standard/detail/id=564)
1. 日本医療情報学会MERIT-9研究会, 医療情報交換規約運用指針、MERIT-9 処方オーダver 1.0,[http://merit-9.mi.hama-med.ac.jp/jahis/SHOHOU.pdf](http://merit-9.mi.hama-med.ac.jp/jahis/SHOHOU.pdf)
1. 保健医療福祉情報システム工業会, JAHISデータ交換規約（共通編）Ver.1.1,[https://www.jahis.jp/standard/detail/id=125](https://www.jahis.jp/standard/detail/id=125)
1. 保健医療福祉情報システム工業会, JAHIS注射データ交換規約Ver.2.1C,[https://www.jahis.jp/standard/detail/id=590](https://www.jahis.jp/standard/detail/id=590)
1. Mike Henderson, 日本HL7協会監修、「HL7メッセージ交換」、第2版、インナービジョン社、2013年
1. 厚生労働省、保険医療機関及び保険医療養担当規則、平三〇厚労令二〇・一部改正,[https://www.mhlw.go.jp/web/t_doc?dataId=84035000&dataType=0&pageNo=1](https://www.mhlw.go.jp/web/t_doc?dataId=84035000&dataType=0&pageNo=1)
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
  "id" : "jp-medicationadministration",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationAdministration",
  "title" : "JP Core MedicationAdministration Profile",
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
  "description" : "このプロファイルはMedicationAdministrationリソースに対して、内服・外用薬剤処方投与実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
    },
    {
      "identity" : "w3c.prov",
      "uri" : "http://www.w3.org/ns/prov",
      "name" : "W3C PROV"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministrationBase",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationAdministration",
        "path" : "MedicationAdministration"
      },
      {
        "id" : "MedicationAdministration.identifier",
        "path" : "MedicationAdministration.identifier",
        "min" : 2
      },
      {
        "id" : "MedicationAdministration.identifier:orderInRp",
        "path" : "MedicationAdministration.identifier",
        "sliceName" : "orderInRp",
        "short" : "同一RP番号（剤グループ）での薬剤の表記順",
        "definition" : "同一剤グループでの薬剤を表記する際の順番。XML形式と異なりJSON形式の場合、表記順は項目の順序を意味しない。したがって、薬剤の記載順を別に規定する必要があるためIDを用いて表現する。",
        "comment" : "同一剤グループ内での薬剤の順番を1から順の番号で示す。",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "MedicationAdministration.identifier:orderInRp.system",
        "path" : "MedicationAdministration.identifier.system",
        "short" : "RP番号内（剤グループ内）の連番を示すsystem値",
        "definition" : "剤グループ内番号の名前空間を識別するURI。固定値 http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex"
      },
      {
        "id" : "MedicationAdministration.identifier:orderInRp.value",
        "path" : "MedicationAdministration.identifier.value",
        "short" : "RP番号内（剤グループ内）の連番",
        "definition" : "剤グループ内連番。",
        "comment" : "value は string型であり、数値はゼロサプレス、つまり、'01'でなく'1'と指定すること。",
        "min" : 1
      },
      {
        "id" : "MedicationAdministration.medication[x]",
        "path" : "MedicationAdministration.medication[x]",
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
        "id" : "MedicationAdministration.subject",
        "path" : "MedicationAdministration.subject",
        "short" : "投与対象患者",
        "definition" : "投与を受ける患者",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.context",
        "path" : "MedicationAdministration.context",
        "short" : "Encounter、または一部として実施されるケアエピソード",
        "definition" : "投薬が行われた患者と医療提供者の間の訪問、入院、またはその他の接触。  \n受診情報や入院情報を表すEncounterへの参照。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter",
              "http://hl7.org/fhir/StructureDefinition/EpisodeOfCare"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.supportingInformation",
        "path" : "MedicationAdministration.supportingInformation",
        "short" : "投与をサポートする追加情報",
        "definition" : "薬の投与をサポートする追加情報（たとえば、患者の身長や体重）。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。"
      },
      {
        "id" : "MedicationAdministration.effective[x]",
        "path" : "MedicationAdministration.effective[x]",
        "short" : "開始時間と終了時間",
        "definition" : "投与が行われた（または「notGiven」属性がtrueの場合は行われなかった）特定の日時または時間間隔。錠剤を飲み込むなど、多くの管理では、dateTimeの使用がより適切である。",
        "comment" : "投与実施日時であり、JP Coreでは必須である。"
      },
      {
        "id" : "MedicationAdministration.performer",
        "path" : "MedicationAdministration.performer",
        "short" : "投薬を実施した人",
        "definition" : "投薬およびそれに関与した人"
      },
      {
        "id" : "MedicationAdministration.performer.actor",
        "path" : "MedicationAdministration.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Device"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.reasonCode",
        "path" : "MedicationAdministration.reasonCode",
        "short" : "投薬が実施された理由",
        "definition" : "投薬が実施された理由を示すコード"
      },
      {
        "id" : "MedicationAdministration.reasonReference",
        "path" : "MedicationAdministration.reasonReference",
        "short" : "薬が投与された理由を裏付ける状態または観察",
        "definition" : "薬が投与された理由を裏付ける状態または観察",
        "comment" : "これは、投薬要求の理由である状態への参照。コードのみが存在する場合は、reasonCodeを使用する。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_DiagnosticReport_Common"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.request",
        "path" : "MedicationAdministration.request",
        "short" : "実施された元の投与依頼情報",
        "definition" : "投与を実行する元になった投与指示や権限への参照情報。",
        "comment" : "これは、orderまたはinstance-orderのいずれかであるMedicationRequestへの参照。インテントが他の値である場合は、MedicationRequestsを参照しないこと。",
        "requirements" : "これは、インテント（意図）がorderまたはinstance-orderのいずれかであるMedicationRequestへの参照である。  \nインテントが他の値である場合は、MedicationRequestsを参照しないこと。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.device",
        "path" : "MedicationAdministration.device",
        "short" : "投与に使用されるデバイス",
        "definition" : "患者に薬を投与する際に使用されるデバイスへの参照。たとえば、特定の輸液ポンプ。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。"
      },
      {
        "id" : "MedicationAdministration.note",
        "path" : "MedicationAdministration.note",
        "short" : "投与に関する備考情報",
        "definition" : "構造化された注釈情報がないシステムの場合、この要素によって作成者や作成時刻情報なしで単一の注釈を簡単に伝達できる。投与情報に付帯する潜在的な情報や修飾的な情報を伝えるために、この要素に叙述的な記述でそれらを含める必要がある場合がある。   \n*注釈は、計算可能な「変更」情報を伝達するために使用されるべきではない*。 （ユーザの行動を強制することはほとんど不可能であるため、これはSHOULDである）。"
      },
      {
        "id" : "MedicationAdministration.dosage",
        "path" : "MedicationAdministration.dosage",
        "definition" : "投薬量情報の詳細を説明する。線量、率、場所、ルートなど。"
      },
      {
        "id" : "MedicationAdministration.dosage.text",
        "path" : "MedicationAdministration.dosage.text",
        "short" : "フリーテキストの投与方法の説明　SIG:用法",
        "definition" : "フリーテキストの投与量用法は、投与される投与量や用法が複雑すぎてコーディングできない場合に使用できる。コード化された投与量や用法が存在する場合、フリーテキストの投与量や用法は、人間に表示するためにまだ存在している可能性がある。  \n投与量や用法のこの指示は、実際に投与される薬の投与量や用法を反映する必要がある。"
      },
      {
        "id" : "MedicationAdministration.dosage.site",
        "path" : "MedicationAdministration.dosage.site",
        "short" : "投与部位",
        "definition" : "薬が最初に体内に入った解剖学的部位のコード化された記述。たとえば、「左腕」。",
        "comment" : "ユースケースでBodySiteリソースの属性が必要な場合（たとえば、個別に識別して追跡するため）、標準の拡張機能[bodySite]（extension-bodysite.html）を使用する。要約コード、または場所の非常に正確な定義への参照、あるいはその両方である可能性がある。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationBodySiteJAMIExternal_VS"
        }
      },
      {
        "id" : "MedicationAdministration.dosage.method",
        "path" : "MedicationAdministration.dosage.method",
        "short" : "投与方法",
        "definition" : "投与方法",
        "comment" : "ターミノロジは投与する経路あるいは剤型をあらかじめ指定するために用いられる。",
        "requirements" : "コード化された値は体内に薬剤が投与される方法を示している。注射ではよく使われる。たとえば、緩徐に注入、深部に静注など。"
      },
      {
        "id" : "MedicationAdministration.dosage.method.coding",
        "path" : "MedicationAdministration.dosage.method.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "MedicationAdministration.dosage.method.coding:unitDigit1",
        "path" : "MedicationAdministration.dosage.method.coding",
        "sliceName" : "unitDigit1",
        "short" : "投与⽅法に対応するJAMI 用法コード表基本用法１桁コード",
        "definition" : "投与⽅法に対応するJAMI 用法コード表基本用法１桁コードを識別するURI。",
        "comment" : "コードは臨時で列記したものや、コードのリストからSNOMED CTのように公式に定義されたものまである（HL7 v3 core principle を参照)。FHIR自体ではコーディング規約を定めてはいないし、意味を暗示するために利用されない(SHALL NOT)。一般的に UserSelected = trueの場合には一つのコードシステムが使われる。",
        "requirements" : "他のコードシステムへの変換や代替のコードシステムを使ってエンコードしてもよい。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationMethodJAMIBasicUsage_VS"
        }
      },
      {
        "id" : "MedicationAdministration.dosage.method.coding:unitDigit1.system",
        "path" : "MedicationAdministration.dosage.method.coding.system",
        "min" : 1,
        "fixedUri" : "http://jami.jp/CodeSystem/MedicationMethodBasicUsage"
      },
      {
        "id" : "MedicationAdministration.dosage.method.coding:unitDigit2",
        "path" : "MedicationAdministration.dosage.method.coding",
        "sliceName" : "unitDigit2",
        "short" : "投与⽅法に対応するJAMI 用法コード表基本用法2桁コード",
        "definition" : "投与⽅法に対応するJAMI 用法コード表基本用法2桁コードを識別するURI。２桁コードhttp://jami.jp/CodeSystem/MedicationUsage",
        "comment" : "コードは臨時で列記したものや、コードのリストからSNOMED CTのように公式に定義されたものまである（HL7 v3 core principle を参照)。FHIR自体ではコーディング規約を定めてはいないし、意味を暗示するために利用されない(SHALL NOT)。一般的に UserSelected = trueの場合には一つのコードシステムが使われる。",
        "requirements" : "他のコードシステムへの変換や代替のコードシステムを使ってエンコードしてもよい。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationMethodJAMIDetailUsage_VS"
        }
      },
      {
        "id" : "MedicationAdministration.dosage.method.coding:unitDigit2.system",
        "path" : "MedicationAdministration.dosage.method.coding.system",
        "min" : 1,
        "fixedUri" : "http://jami.jp/CodeSystem/MedicationMethodDetailUsage"
      },
      {
        "id" : "MedicationAdministration.dosage.method.text",
        "path" : "MedicationAdministration.dosage.method.text",
        "short" : "投与⽅法のテキスト表現",
        "definition" : "投与⽅法のテキスト表現。コードで指定できない場合、本要素で文字列として指定してもよい。",
        "comment" : "textエレメントはcodingのdisplayNameエレメントと一致することがよくある。",
        "requirements" : "ターミノロジ由来のコードは必ずしも人間が使う言葉の全てのニュアンスを含めた正確な意味を捉えているわけではなく、適切なコードが見つからない場合もある。そのような場合でもtextエレメントは元々の意味のすべてを捉えるために使うことができる。"
      },
      {
        "id" : "MedicationAdministration.dosage.dose",
        "path" : "MedicationAdministration.dosage.dose",
        "short" : "用量あたりの投薬量",
        "definition" : "1回の投与イベントで投与される薬剤の量。この値は、投与が錠剤の飲み込みや注射などの本質的に瞬間的なイベントである場合に使用する。",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationSimpleQuantity"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.rate[x]",
        "path" : "MedicationAdministration.dosage.rate[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "単位時間あたりの用量",
        "definition" : "薬が患者に導入された、または導入される予定の速度を識別する。  \n通常、注入の速度。 1時間あたり100mlまたは100ml/時。単位時間あたりのレートとして表すこともできる。 2時間あたり500ml。その他の例：200mcg/分または200mcg/1分。 1リットル/8時間。",
        "comment" : "レートが時間の経過とともに変化し、これをMedicationAdministrationで記述する場合は、各変更を、特定のMedicationAdministration.dosage.rateと、レート変更が発生した日時を使用して、個別のMedicationAdministrationとして記述する必要がある。通常、MedicationAdministration.dosage.rate要素は、平均レートを伝達するためには使用されない。"
      },
      {
        "id" : "MedicationAdministration.dosage.rate[x]:rateRatio",
        "path" : "MedicationAdministration.dosage.rate[x]",
        "sliceName" : "rateRatio",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_DosePerPeriod"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.eventHistory",
        "path" : "MedicationAdministration.eventHistory",
        "short" : "ライフサイクルで関心のあるイベントのリスト",
        "definition" : "投与が確認されたときなど、発生した関連のあるベントのサマリー。"
      }
    ]
  }
}

```
