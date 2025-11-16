# JP Core MedicationAdministration Injection Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationAdministration Injection Profile**

## Resource Profile: JP Core MedicationAdministration Injection Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration_Injection
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationAdministration_Injection
* **項目**: *Title*
  * **内容**: JP Core MedicationAdministration Injection Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このプロファイルはMedicationAdministrationリソースに対して、注射薬剤処方投与実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 

このResource/Profileは注射の薬剤処方の投与実施情報を表現する。薬剤処方は指示する項目、使用する用語集、プロセスなどにおいて諸外国と日本では異なっており、日本国内で規格を運用するためにExtensionの追加や用語集の追加・変更を行った。現在、日本での注射関連規格として利用されている [JAHIS注射データ交換規約Ver.2.1C](https://www.jahis.jp/standard/detail/id=590) を参考にした。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 電子カルテから特定の患者の注射実施情報を検索する
* SS-MIX2やJAHIS注射データ交換規約に準拠した注射実施メッセージをJSONに変換する

## スコープ

### 対象

このProfileの対象は注射の一般的な薬剤処方の投与実施情報を電子的に連携するためのメッセージを記述することである。

### 対象としないこと

このProfileは注射・注入される薬剤の処方に関するものであり、内服・外用薬剤については対象としない。内服・外用薬剤は、指示の仕方や指示する項目が注射とは大きく異なるため、 JP Core MedicationAdministrationプロファイルとして記述することとする。

また、このリソースは薬剤の投与実施に関するものであり、指示（オーダ）、調剤や払い出しは対象としない。それぞれ、MedicationRequest、MedicationDispense が対応するリソースである。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md)
* Examples for this Profile: [MedicationAdministration/jp-medicationadministration-injection-example-1](MedicationAdministration-jp-medicationadministration-injection-example-1.md) and [MedicationAdministration/jp-medicationadministration-injection-example-2](MedicationAdministration-jp-medicationadministration-injection-example-2.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationadministration-injection)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationadministration-injection.csv), [Excel](StructureDefinition-jp-medicationadministration-injection.xlsx), [Schematron](StructureDefinition-jp-medicationadministration-injection.sch) 

### 必須要素

次のデータ項目は必須（データが存在しなければならない）である。

MedicationAdministrationリソースは、次の要素を持たなければならない。

* status : ステータスは必須であり、JP Coreでは `completed` or `stopped` に限定される
* medicationReference : 医薬品の識別情報は必須でありmedicationReference.referenceが必ず存在しなければならない、JP Coreでは注射の医薬品情報は単一薬剤の場合もMedicationリソースとして記述し、MedicationRequest.contained属性に内包しmedicationCodeableConceptは使用しない
* subject : 患者の参照情報は必須でありsubject.referenceないしsubject.identifierが必ず存在しなければならない
* effectiveDateTime : 投与実施日時であり、JP Coreでは必須である

MedicationAministrationリソースに内包されるMedicationリソースでは、次の要素を持たなければならない。

* ingredient.itemCodeableConcept : 医薬品の識別情報であり、JP Coreでは必須である

※投与実施のユースケースにおいては、実施投与量(ingredient.strength)が必須であることが望ましいが、ワーキンググループでの検討の結果、投与中止のユースケースも考慮して必須としない結論となった。

### Extensions定義

JP Core MedicationAdministration Injection プロファイルで使用される拡張は次の通りである。

| | | | |
| :--- | :--- | :--- | :--- |
| 依頼科 | 依頼科を格納するための拡張 | [JP_MedicationAdministration_RequestDepartment](StructureDefinition-jp-medicationadministration-requestdepartment.md) | CodeableConcept |
| 依頼日時 | 依頼日時を格納するための拡張 | [JP_MedicationAdministration_RequestAuthoredOn](StructureDefinition-jp-medicationadministration-requestauthoredon.md) | DateTime |
| 実施場所 | 実施場所を格納するための拡張 | [JP_MedicationAdministration_Location](StructureDefinition-jp-medicationadministration-location.md) | Reference(Location) |
| 依頼医 | 依頼医を格納するための拡張 | [JP_MedicationAdministration_Requester](StructureDefinition-jp-medicationadministration-requester.md) | Reference(Practitioner) |
| 未分類コメント | 未分類コメントを格納するための拡張 | [JP_MedicationAdministration_UncategorizedComment](StructureDefinition-jp-medicationadministration-uncategorizedcomment.md) | CodeableConcept/String |
| RP内薬剤番号 | RP内の薬剤の連番を格納する拡張《medicationReference配下》 | [JP_Medication_Ingredient_DrugNo](StructureDefinition-jp-medication-ingredient-drugno.md) | integer |
| 力価区分 | 投与量が製剤単位か成分単位かを格納する拡張《medicationReference配下》 | [JP_Medication_IngredientStrength_StrengthType](StructureDefinition-jp-medication-ingredientstrength-strengthtype.md) | CodeableConcept |
| 用法コメント | 用法コメントを格納するための拡張 | [JP_MedicationDosage_DosageComment](StructureDefinition-jp-medicationdosage-dosagecomment.md) | CodeableConcept/String |
| 投与装置 | 投与装置を格納する拡張 | [JP_MedicationDosage_Device](StructureDefinition-jp-medicationdosage-device.md) | Reference (Device) |
| 指示ライン | 指示ラインを格納する拡張< | [JP_MedicationDosage_Line](StructureDefinition-jp-medicationdosage-line.md) | CodeableConcept |
| ラインコメント | ラインコメントを格納するための拡張 | [JP_MedicationDosage_LineComment](StructureDefinition-jp-medicationdosage-linecomment.md) | CodeableConcept/String |
| 投与部位詳細 | 投与部位詳細を格納するための拡張《dosageInstruction配下》 | [bodySite(hl7.org)](http://hl7.org/fhir/R4/extension-bodysite.html) | Reference (BodyStructure) |
| 投与部位コメント | 投与部位コメントを格納するための拡張 | [JP_MedicationDosage_SiteComment](StructureDefinition-jp-medicationdosage-sitecomment.md) | CodeableConcept/String |
| 投与経路コメント | 投与経路コメントを格納するための拡張 | [JP_MedicationDosage_RouteComment](StructureDefinition-jp-medicationdosage-routecomment.md) | CodeableConcept/String |
| 手技コメント | 手技コメントを格納するための拡張 | [JP_MedicationDosage_MethodComment](StructureDefinition-jp-medicationdosage-methodcomment.md) | CodeableConcept/String |
| 投与速度コメント | 投与速度コメントを格納するための拡張 | [JP_MedicationDosage_RateComment](StructureDefinition-jp-medicationdosage-ratecomment.md) | CodeableConcept/String |

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
| 投与経路 | JAMI処方・注射オーダ標準用法規格(用法詳細区分) | http://jami.jp/CodeSystem/MedicationMethodDetailUsage |
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
| MAY | effective-time,medication,performer,request | date,reference,reference,reference | GET [base]/MedicationAdministration?medication.ingredient-code=http://medis.or.jp/CodeSystem/master-HOT9|105271807 |

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

[JAHIS注射データ交換規約Ver.2.1C](https://www.jahis.jp/standard/detail/id=590)に記載されている下記の注射実施をFHIRで表現する場合のサンプルを示す。

* [**ワンショット静脈注射 実施**](MedicationAdministration-jp-medicationadministration-injection-example-1.md)
* [**点滴注射 実施**](MedicationAdministration-jp-medicationadministration-injection-example-2.md)

## 注意事項

### 記述の単位について

MedicationAdministrationは薬剤をCodeableConceptとして1つまでしか持つか、Medicationリソースのreferenceをもつことしかできない。したがって、複数の薬剤を同一のRp番号で表現する場合にはMedicationAdministrationを繰り返すか、複数の薬剤をまとめたMedication Resourceのインスタンスを参照することとなる。ワーキンググループでの検討の結果、複数の薬剤をまとめたMedicationリソースのインスタンスをcontained属性に内包した上で参照することとした。

### 投与薬剤、投与量の記述方法

１回の投与薬剤と投与量は、RP内の薬剤が１薬剤の場合も混注などで複数の薬剤を含む場合も、すべての薬剤を記述したMedicationリソースを contained 属性に内包し、それをMedicationRequest.medicationReference属性で参照するようにする。 Medicationリソースのingredient.itemCodeableConcept要素にCodeableConcept型で各薬剤の識別情報を記述し、ingredient.strength.numerator要素に１回あたりの含有量を記述する。薬剤を識別するコードはHOT7、HOT9、YJコードを推奨するが、ローカルコードを使用してもよい。含有量の単位コードは MERIT-9を使用する。ingredient.strength.denominatorには固定値「１回」をMERIT-9を使用して指定する。 dosage.dose要素には、情報が得られる場合には全体の容量をUCUM(`http://unitsofmeasure.org`)を使用してmL単位で指定する。

### 投薬管理ステータス

投与が実施された場合、status要素に `completed` を記述する。

```
"status": "completed"

```

投与が中止された場合、status要素に `stopped` を記述する。

```
"status": "stopped"

```

### 実施日

投与が実施された日時をeffectiveDateTime、またはeffectivePeriod要素に[RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)形式で記述する。 タイムゾーンはJST(+09:00)を指定する。

開始日時、終了日時が明確である場合はeffectivePeriodに記述する。（e.g. 点滴注射）

```
"effectivePeriod": {
  "start": "2016-07-01T08:05:21+09:00",
  "end": "2016-07-01T13:05:43+09:00"
}

```

開始日時しか存在せず終了日時が明確でない場合、effectivePeriodのstartとendに同じ値を記述するか、effectiveDateTime要素に記述する。（e.g. ワンショット注射）

```
"effectiveDateTime": "2016-08-25T08:30:00+09:00"

```

### 実施者

投与を実施した医療従事者（自己管理の場合は患者）をperformer要素に記述する。

performer.functionには、FHIR標準のValueSetである `http://terminology.hl7.org/CodeSystem/med-admin-perform-function` から、実施者を表す `performer` を固定で記述する。 performer.actorには、医療従事者(Practitioner)、または患者(Patient)リソースの参照を記述する。

```
"performer": {
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
    "reference": "Practitioner/1"
  }
}

```

### 実施場所

投与を実施した場所（病棟、病室、ベッド番号など）を、拡張「JP_MedicationAdministration_Location」を使用して、Reference型でLocationリソースの参照情報を記述する。 (Location Resourceの記述仕様については、当プロファイルのスコープ外とする)

```
{
  "resourceType": "MedicationAdministration",
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Location",
      "valueReference": {
        "reference": "Location/1"
      }
    }
  ]
}

```

### 実施投与ライン

投与時に使用したラインを記述する場合は、dosage要素で拡張「JP_MedicationDosage_Line」を使用し、CodeableConcept型で指定する。推奨するコードシステムはないので、ローカルコードを使用する。

```
"dosage": {
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Line",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://jpfhir.jp/fhir/Examples/CodeSystem/JP_MedicationRequestDosageInstructionLine_CS",
            "code": "01",
            "display": "末梢ルート"
          }
        ]
      }
    }
  ]
}

```

### 実施投与経路

「1:内服」、「2:外用」などJAMI標準用法コードにて基本用法区分として表現される区分は、dosage.route 要素にコードまたは文字列で指定する。基本用法区分を識別するURIとして、"http://jami.jp/CodeSystem/MedicationMethodBasicUsage"を使用する。

```
"dosage": {
  "route": {
    "coding": [
      {
        "system": "http://jpfhir.jp/fhir/core/CodeSystem/route-codes",
        "code": "IV",
        "display": "静脈内"
      }
    ]
  }
}

```

### 実施投与部位

投与部位を指定する場合は、dosage.site 要素に、CodeableConcept型で指定する。部位コードは、JAMI標準用法コード 表13 外用部位コード（"http://jami.jp/CodeSystem/MedicationBodySiteExternal"）を推奨する。 HL7表0550 身体部位("http://terminology.hl7.org/CodeSystem/v2-0550")とHL7表0495 身体部位修飾子("http://terminology.hl7.org/CodeSystem/v2-0495")を組み合わせて使用してもよいが、その場合は拡張「BodyStructure」を使用する。 この拡張は BodyStructureリソースを参照することができるので、location 要素にHL7表0550 身体部位("http://terminology.hl7.org/CodeSystem/v2-0550")のコードを、locationQualifier 要素に 身体部位修飾子("http://terminology.hl7.org/CodeSystem/v2-0495")のコードをそれぞれ指定したBodyStructureリソースをMedicationRequestリソースのcontained属性に内包し、それをExtension.valueReference 要素で参照するようにする。

投与部位「左腕」をJAMI標準用法コードで指定した場合のインスタンス例を示す。

```
"dosage": [
  {
    "site": {
      "coding": [
        {
          "system": "http://jami.jp/CodeSystem/MedicationBodySiteExternal",
          "code": "73L",
          "display": "左腕"
        }
      ]
    },


```

投与部位「左腕」をHL7表0550 身体部位とHL7表0495 身体部位修飾子で指定した場合のインスタンス例を示す。

```
"contained": [
  {
    "resourceType": "BodyStructure",
    "id": "#site",
    "location": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0550",
          "code": "ARM",
          "display": "腕"
        }
      ]
    },
    "locationQualifier": [
      {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v2-0495",
            "code": "L",
            "display": "左"
          }
        ]
      }
    ]
  }
],
"dosage": [
  {
    "site": {
      "extension": [
        {
          "url": "http://hl7.org/fhir/core/StructureDefinition/bodySite",
          "valueReference": "#site"
        }
      ]
    }
  }
]

```

### 実施投与手技

「A:貼付」、「B:塗布」などJAMI標準用法コードにて用法詳細区分として表現される区分は、dosage.method 要素にコードまたは文字列で指定する。 用法詳細区分を識別するURIとして、"http://jami.jp/CodeSystem/MedicationMethodDetailUsage"を使用する。

```
"dosage": {
  "method": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/v2-0165",
        "code": "IVP",
        "display": "IVプッシュ"
      }
    ]
  }
}

```

### 実施投与量

Medication.ingredientに記述される薬剤の合計容量(mL)を dosage.dose に、SimpleQuantity型で記録する。単位コードには、医薬品単位略号を使用する。

以下薬剤を混注した際の合計容量「510mL」を記述したインスタンス例を示す。

```
ソリタ－Ｔ３号輸液５００ｍＬ ... 1本
アドナ注（静脈用）５０ｍｇ／１０ｍＬ ... 1アンプル

```

=> **510mL** (500mL + 10mL) をdosage.doseに記述する。

```
"dosage": {
  "dose": {
    "value": 510,
    "unit": "mL",
    "system": "http://unitsofmeasure.org",
    "code": "mL"
  }
}

```

### 投与速度

点滴注射など一定の速度で時間をかけて投与する場合、その投与速度は dosageInstruction.doseAndRate.rateRatioを使用してRatio型で表現する。単位コードには、UCUM(`http://unitsofmeasure.org`)を使用する。

投与速度「100mL/h」を記述したインスタンス例を示す。

```
"dosage": {
  "rateRatio": {
    "numerator": {
      "value": 100,
      "unit": "mL",
      "system": "http://unitsofmeasure.org",
      "code": "mL"
    },
    "denominator": {
      "value": 1,
      "unit": "h",
      "system": "http://unitsofmeasure.org",
      "code": "h"
    }
  }
}

```

### 各種実施コメント

#### 投与経路コメント

投与経路を補足するためのコメントは、route要素に対して定義した拡張「JP_MedicationAdministration_Route_RouteComment」を使用する。 この拡張は、コメントがコード化されている場合はCodeableConcept型を使用して記述する。コード化されていない場合はString型を使用して記述する。 複数のコメントを記述する場合は、この拡張を繰り返して記述する。

投与経路コメントをString型で記述したインスタンス例を示す。

```
"route": {
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Route_RouteComment",
      "valueString": "右手に実施"
    }
  ],
  "coding": [
    {
      "system": "http://jpfhir.jp/fhir/core/CodeSystem/route-codes",
      "code": "IV",
      "display": "静脈内"
    }
  ]
}

```

#### 投与部位コメント

投与部位を補足するためのコメントは、site要素に対して定義した拡張「JP_MedicationAdministration_Site_SiteComment」を使用する。 この拡張は、コメントがコード化されている場合はCodeableConcept型を使用して記述する。コード化されていない場合はString型を使用して記述する。 複数のコメントを記述する場合は、この拡張を繰り返して記述する。

投与部位コメントをString型で記述したインスタンス例を示す。

```
"site": {
  "extension": [
    {
      "url": "http://hl7.org/fhir/core/StructureDefinition/bodySite",
      "valueReference": {
        "reference": "BodyStructure/1",
        "display": "右腕"
      }
    },
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Site_SiteComment",
      "valueString": "左利きのため"
    }
  ]
}

```

#### 手技コメント

手技を補足するためのコメントは、method要素に対して定義した拡張「JP_MedicationAdministration_Method_MethodComment」を使用する。 この拡張は、コメントがコード化されている場合はCodeableConcept型を使用して記述する。コード化されていない場合はString型を使用して記述する。 複数のコメントを記述する場合は、この拡張を繰り返して記述する。

手技コメントをString型で記述したインスタンス例を示す。

```
"method": {
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Method_MethodComment",
      "valueString": "１分ほどかけて緩徐に行いました"
    }
  ],
  "coding": [
    {
      "system": "http://jpfhir.jp/medication/99ILL",
      "code": "101",
      "display": "静注(末梢)"
    }
  ]
}

```

#### ラインコメント

ラインを補足するためのコメントは、dosage要素に対して定義した拡張「JP_MedicationDosage_LineComment」を使用する。 この拡張は、コメントがコード化されている場合はCodeableConcept型を使用して記述する。コード化されていない場合はString型を使用して記述する。 複数のコメントを記述する場合は、この拡張を繰り返して記述する。

ラインコメントをString型で記述したインスタンス例を示す。

```
"dosage": {
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Line",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://jpfhir.jp/fhir/Examples/CodeSystem/JP_MedicationRequestDosageInstructionLine_CS",
            "code": "01",
            "display": "末梢ルート"
          }
        ]
      }
    },
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_LineComment",
      "valueString": "末梢キープ"
    }
  ]
}

```

#### 投与速度コメント

投与速度を補足するためのコメントは、rate要素に対して定義した拡張「JP_MedicationAdministration_Rate_RateComment」を使用する。 この拡張は、コメントがコード化されている場合はCodeableConcept型を使用して記述する。コード化されていない場合はString型を使用して記述する。 複数のコメントを記述する場合は、この拡張を繰り返して記述する。

投与速度コメントをString型で記述したインスタンス例を示す。

```
"rateRatio": {
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Rate_RateComment",
      "valueString": "倍速で実施"
    }
  ],
  "numerator": {
    "value": 102,
    "unit": "mL",
    "system": "http://unitsofmeasure.org",
    "code": "mL"
  },
  "denominator": {
    "value": 1,
    "unit": "h",
    "system": "http://unitsofmeasure.org",
    "code": "h"
  }
}

```

#### 用法コメント

用法を補足するためのコメントは、dosage要素に対して定義した拡張「JP_MedicationDosage_DosageComment」を使用する。 この拡張は、コメントがコード化されている場合はCodeableConcept型を使用して記述する。コード化されていない場合はString型を使用して記述する。 複数のコメントを記述する場合は、この拡張を繰り返して記述する。

用法コメントをString型で記述したインスタンス例を示す。

```
"dosage": {
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_DosageComment",
      "valueString": "痙攣が発生したため、主治医に確認の上実施しました"
    }
  ]
}

```

#### 進捗コメント

進捗を補足するためのコメントは、reasonCode要素を使用してCodeableConcept型でテキストによる記述とコードによる記述のどちらかを選択することができる。

進捗コメントをテキストで記述したインスタンス例を示す

```
"reasonCode": {
  "text": "容体急変のため倍の速度で実施"
}

```

#### 未分類コメント

上記のコメントに分類できない、またはシステム的に分類して管理されていない場合、MedicationAdministrationに対して定義した拡張「JP_MedicationAdministration_UncategorizedComment」を使用する。 この拡張は、コメントがコード化されている場合はCodeableConcept型を使用して記述する。コード化されていない場合はString型を使用して記述する。 複数のコメントを記述する場合は、この拡張を繰り返して記述する。

未分類コメントをString型で記述したインスタンス例を示す。

```
{
  "resourceType": "MedicationAdministration",
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_UncategorizedComment",
      "valueString": "１分ほどかけて緩徐に行いました"
    },
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_UncategorizedComment",
      "valueString": "痙攣が発生したため、主治医に確認の上実施しました"
    }
  ]
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

投薬依頼を行なった医師を、拡張「JP_MedicationAdministration_Requester」を使用して、Reference型でPractitionerリソースの参照情報を記述する。 (Practitioner Resourceの記述仕様については、当プロファイルのスコープ外とする)

```
{
  "resourceType": "MedicationAdministration",
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Requester",
      "valueReference": {
        "reference": "Practitioner/2"
      }
    }
  ]
}

```

### 依頼日時

投薬依頼を行なった日時を、拡張「JP_MedicationAdministration_RequestAuthoredOn」を使用して、[RFC3339](https://datatracker.ietf.org/doc/html/rfc3339)形式で記述する。 タイムゾーンはJST(+09:00)を指定する。

```
{
  "resourceType": "MedicationAdministration",
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_RequestAuthoredOn",
      "valueDateTime": "2016-08-20T09:30:00+09:00"
    }
  ]
}

```

### 薬剤処方の各種指示情報の記述方法について

投与実施の基となった薬剤処方の用法などの情報は、特に記述のない限り JP Core MedicationRequest Injection と同様の記述方法とする。該当する項目としては以下のものがある。

* RP番号、薬剤番号、施用番号
* 処方箋番号（オーダID）
* 投与方法、投与手技、投与経路、投与ライン、投与装置
* 入外区分

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
  "id" : "jp-medicationadministration-injection",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration_Injection",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationAdministration_Injection",
  "title" : "JP Core MedicationAdministration Injection Profile",
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
  "description" : "このプロファイルはMedicationAdministrationリソースに対して、注射薬剤処方投与実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
        "path" : "MedicationAdministration",
        "short" : "患者への注射薬剤投与記録"
      },
      {
        "id" : "MedicationAdministration.extension:uncategorizedComment",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "uncategorizedComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_UncategorizedComment"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.medication[x]",
        "path" : "MedicationAdministration.medication[x]",
        "definition" : "医薬品の識別情報は必須でありmedicationReference.referenceが必ず存在しなければならない、JP Coreでは注射の医薬品情報は単一薬剤の場合も Medicationリソースとして記述し、medicationCodeableConceptは使用しない。参照するMedicationリソースは、MedicationRequest.contained属性に内包することが望ましいが、外部参照としても良い。",
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
        "id" : "MedicationAdministration.dosage",
        "path" : "MedicationAdministration.dosage",
        "definition" : "投薬量情報の詳細を説明する。線量、率、場所、ルートなど。"
      },
      {
        "id" : "MedicationAdministration.dosage.extension",
        "path" : "MedicationAdministration.dosage.extension",
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
        "id" : "MedicationAdministration.dosage.extension:dosageComment",
        "path" : "MedicationAdministration.dosage.extension",
        "sliceName" : "dosageComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_DosageComment"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.extension:device",
        "path" : "MedicationAdministration.dosage.extension",
        "sliceName" : "device",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Device"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.extension:line",
        "path" : "MedicationAdministration.dosage.extension",
        "sliceName" : "line",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Line"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.extension:lineComment",
        "path" : "MedicationAdministration.dosage.extension",
        "sliceName" : "lineComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_LineComment"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.extension:rateComment",
        "path" : "MedicationAdministration.dosage.extension",
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
        "id" : "MedicationAdministration.dosage.site.extension:bodySite",
        "path" : "MedicationAdministration.dosage.site.extension",
        "sliceName" : "bodySite",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/bodySite|5.2.0"]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.site.extension:siteComment",
        "path" : "MedicationAdministration.dosage.site.extension",
        "sliceName" : "siteComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_SiteComment"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.dosage.route",
        "path" : "MedicationAdministration.dosage.route",
        "short" : "体への投与経路",
        "definition" : "患者への、または患者への治療薬の投与経路または生理学的経路を指定するコード。たとえば、局所、静脈内など。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationRouteHL70162_VS"
        }
      },
      {
        "id" : "MedicationAdministration.dosage.route.extension:routeComment",
        "path" : "MedicationAdministration.dosage.route.extension",
        "sliceName" : "routeComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_RouteComment"
            ]
          }
        ]
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
        "id" : "MedicationAdministration.dosage.method.extension:methodComment",
        "path" : "MedicationAdministration.dosage.method.extension",
        "sliceName" : "methodComment",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_MethodComment"
            ]
          }
        ]
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
        "id" : "MedicationAdministration.dosage.rate[x]:rateQuantity",
        "path" : "MedicationAdministration.dosage.rate[x]",
        "sliceName" : "rateQuantity",
        "short" : "投与速度(流量)を指定する単位は流量を表す単位（e.g. 量/時間)を指定する",
        "definition" : "投与速度(流量)を指定する単位は流量を表す単位（e.g. 量/時間)を指定する",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
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
