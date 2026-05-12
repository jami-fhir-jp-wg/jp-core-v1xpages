# JP Core MedicationRequest Injection Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationRequest Injection Profile**

## Resource Profile: JP Core MedicationRequest Injection Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationRequest_Injection
* **項目**: *Title*
  * **内容**: JP Core MedicationRequest Injection Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはMedicationRequestリソースに対して、注射薬剤処方のデータを送受信するための基礎となる制約と拡張を定めたものである。 

本プロファイルは注射、注入の薬剤処方（以下、「注射処方」）をMedicationRequestリソースを使用して表現する。注射処方は指示する項目、使用する用語集、プロセスなどにおいて諸外国と日本では異なっており、日本国内で規格を運用するためにExtensionの追加や用語集の追加・変更を行った。現在、日本での注射関連規格として利用されているJAHIS 注射データ交換規約 Ver 2.1CおよびSS-MIX2 Ver.1.2hを参考にした。 以下、本プロファイルのMedicationRequestリソースを「JP Core MedicationRequest Injectionリソース」と呼ぶ。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 電子カルテから特定の患者の注射オーダ情報を検索する
* 退院時サマリや診療情報提供書において注射の投薬情報を記述する
* 各種検査レポートや診断レポートにおいて注射の投薬情報を記述する
* SS-MIX2のOMP-02(注射オーダ)メッセージやJAHIS注射データ交換規約に準拠した注射オーダメッセージをJSONに変換する

## スコープ

### 対象

本プロファイルの対象は注射、注入の一般的な薬剤処方を電子的に連携するためのメッセージを記述することである。

### 対象としないこと

本プロファイルは注射、注入の薬剤に関するものであり、内服、外用の薬剤については対象としない。内服、外用の薬剤は、指示の仕方や指示する項目が注射、注入とは大きく異なるため、JP Core MedicationRequestプロファイルとして記述することとする。

また、本プロファイルのMedicationRequestリソースは薬剤の指示（オーダ）に関するものであり、調剤や払い出し、実施記録は対象としない。それぞれ、MedicationDispense, MedicationAdministrationが対応するリソースである。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core DiagnosticReport Common Profile](StructureDefinition-jp-diagnosticreport-common.md), [JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md), [JP Core MedicationDispense Injection Profile](StructureDefinition-jp-medicationdispense-injection.md) and [JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md)
* Examples for this Profile: [MedicationRequest/jp-medicationrequest-injection-example-1](MedicationRequest-jp-medicationrequest-injection-example-1.md) and [MedicationRequest/jp-medicationrequest-injection-example-2](MedicationRequest-jp-medicationrequest-injection-example-2.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationrequest-injection)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationrequest-injection.csv), [Excel](StructureDefinition-jp-medicationrequest-injection.xlsx), [Schematron](StructureDefinition-jp-medicationrequest-injection.sch) 

### 必須要素

次のデータ項目は必須（データが存在しなければならない）である。

MedicationRequestリソースは、次の要素を持たなければならない。

* status : ステータスは必須である
* intent : 意図は必須である
* medicationReference : 医薬品の識別情報は必須でありmedicationReference.referenceが必ず存在しなければならない、JP Coreでは注射の医薬品情報は単一薬剤の場合も Medicationリソースとして記述し、MedicationRequest.contained属性に内包しmedicationCodeableConceptは使用しない
* subject : 患者の参照情報は必須であり、subject.referenceないしsubject.identifierが必ず存在しなければならない
* authoredOn : 処方依頼日時であり、JP Coreでは必須である
* dosageInstruction.text : フリーテキストの用法指示であり、JP Coreでは必須である
* dosageInstruction.timing : 投薬タイミングを記録し、JP Coreでは必須である

MedicationRequestリソースに内包されるMedicationリソースでは、次の要素を持たなければならない。

* ingredient.itemCodeableConcept : 医薬品の識別情報であり、JP Coreでは必須である
* ingredient.strength : 医薬品の投与量であり、JP Coreでは必須である

### Extensions定義

JP Core MedicationRequest Injectionプロファイルで使用される拡張は次の通りである。

| | | | |
| :--- | :--- | :--- | :--- |
| RP内薬剤番号 | RP内の薬剤の連番を格納する拡張《medicationReference配下》 | [JP_Medication_Ingredient_DrugNo](StructureDefinition-jp-medication-ingredient-drugno.md) | integer |
| 力価区分 | 投与量が製剤単位か成分単位かを格納する拡張《medicationReference配下》 | [JP_Medication_IngredientStrength_StrengthType](StructureDefinition-jp-medication-ingredientstrength-strengthtype.md) | CodeableConcept |
| 用法コメント | 用法コメントを格納するための拡張《dosageInstruction配下》 | [JP_MedicationDosage_DosageComment](StructureDefinition-jp-medicationdosage-dosagecomment.md) | CodeableConcept/String |
| 指示ライン | 指示ラインを格納する拡張《dosageInstruction配下》 | [JP_MedicationDosage_Line](StructureDefinition-jp-medicationdosage-line.md) | CodeableConcept |
| ラインコメント | ラインコメントを格納するための拡張《dosageInstruction配下》 | [JP_MedicationDosage_LineComment](StructureDefinition-jp-medicationdosage-linecomment.md) | CodeableConcept/String |
| 投与装置 | 投与装置を格納する拡張《dosageInstruction配下》 | [JP_MedicationDosage_Device](StructureDefinition-jp-medicationdosage-device.md) | Reference (Device) |
| 投与経路コメント | 投与経路コメントを格納するための拡張《dosageInstruction配下》 | [JP_MedicationDosage_RouteComment](StructureDefinition-jp-medicationdosage-routecomment.md) | CodeableConcept/String |
| 投与部位詳細 | 投与部位詳細を格納するための拡張《dosageInstruction配下》 | [bodySite(hl7.org)](http://hl7.org/fhir/R4/extension-bodysite.html) | Reference (BodyStructure) |
| 投与部位コメント | 投与部位コメントを格納するための拡張《dosageInstruction配下》 | [JP_MedicationDosage_SiteComment](StructureDefinition-jp-medicationdosage-sitecomment.md) | CodeableConcept/String |
| 手技コメント | 手技コメントを格納するための拡張《dosageInstruction配下》 | [JP_MedicationDosage_MethodComment](StructureDefinition-jp-medicationdosage-methodcomment.md) | CodeableConcept/String |
| 投与速度コメント | 投与速度コメントを格納するための拡張《dosageInstruction配下》 | [JP_MedicationDosage_RateComment](StructureDefinition-jp-medicationdosage-ratecomment.md) | CodeableConcept/String |
| 調剤指示 | 薬剤単位の調剤指示を表現するための拡張 | [JP_MedicationRequest_DispenseRequest_InstructionForDispense](StructureDefinition-jp-medicationrequest-dispenserequest-instructionfordispense.md) | CodeableConcept/string |
| 頓用回数 | 頓用の場合など調剤量を錠数ではなく回数で表現したい場合の回数を格納する拡張 | [JP_MedicationRequest_DispenseRequest_ExpectedRepeatCount](StructureDefinition-jp-medicationrequest-dispenserequest-expectedrepeatcount.md) | integer |

### 用語定義

HL7 FHIRの基底規格では、薬剤コードをはじめとして、剤形などでSNOMED CTが使われているが、国としてライセンスを取得していない。代替としてJAHIS注射データ交換規約やSS-MIX2で使われている用語集を採用した。

HL7 ver 2系では用語集を識別するコーディングシステム名(以下、「CS名」）は文字列であったが、FHIRではURIを指定する必要があるため、それぞれにURIを割り当てた。以下に使用する用語集のCS名とURI表記を列記する。

| | | |
| :--- | :--- | :--- |
| 医薬品 | HOT7 | http://medis.or.jp/CodeSystem/master-HOT7 |
| 医薬品 | HOT9 | http://medis.or.jp/CodeSystem/master-HOT9 |
| 医薬品 | HOT13 | http://medis.or.jp/CodeSystem/master-HOT13 |
| 医薬品 | YJコード | http://capstandard.jp/iyaku.info/CodeSystem/YJ-code |
| 剤形 | MERIT-9(剤形) | http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationFormMERIT9_CS |
| 処方区分 | MERIT-9(処方区分) | http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS |
| 処方区分 | JAHIS注射データ交換規約Ver.2.1C(JHSI表0001) | http://jpfhir.jp/fhir/core/CodeSystem/JHSI0001 |
| 用法種別 | JAMI処方・注射オーダ標準用法規格(時間的要素・機器区分コード表) | http://jami.jp/CodeSystem/MedicationUsage（仮） |
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

### 項目の追加

日本国内の電子カルテシステムでの注射オーダの運用に合わせ、以下の項目を追加した。

* 指示手技の追加（dosageInstruction.methodを使用）
* 指示ラインの追加（拡張「JP_MedicationDosage_Line」を使用）
* 投与装置の追加（拡張「JP_MedicationDosage_Device」を使用）
* 調剤指示の追加（拡張「JP_MedicationRequest_DispenseRequest_InstructionForDispense」を使用）
* 頓用回数の追加（拡張「JP_MedicationRequest_DispenseRequest_ExpectedRepeatCount」を使用）
* RP番号の追加（identifierを使用）
* 薬剤番号（拡張「JP_Medication_Ingredient_DrugNo」を使用）
* 施用番号の追加（dosageInstruction.sequenceを使用）
* ⼒価区分の追加（拡張「JP_Medication_IngredientStrength_StrengthType」を使用）
* 用法種別の追加（dosageInstruction.additionalInstructionを使用）

## 利用方法

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/MedicationRequest?identifier=http://myhospital.com/fhir/medication|1234567890 |
| SHOULD | patient | reference | GET [base]/MedicationRequest?patient=123456 |
| SHOULD | patient,date | reference,date | GET [base]/MedicationRequest?patient=123456&date=eq2013-01-14 |
| SHOULD | patient,authoredon | reference,date | GET [base]/MedicationRequest?patient=123456&authoredon=eq2013-01-14 |
| MAY | date,authoredon,category,code,requester | date,date,token,token,reference | GET [base]/MedicationRequest?code=http://medis.or.jp/CodeSystem/master-HOT9|105271807 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、オーダIDなどの識別子によるMedicationRequestの検索をサポートしなければならない（SHALL）

```
GET [base]/MedicationRequest?identifier={system|}[token]

```

例：

```
GET [base]/MedicationRequest?identifier=http://myhospital.com/fhir/medication|1234567890

```

指定された識別子に一致するMedicationRequestリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. patient 検索パラメータを使用して、患者のリファレンス情報によるMedicationRequestの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/MedicationRequest?patient=[id]
GET [base]/MedicationRequest?patient=[url]

```

例：

```
GET [base]/MedicationRequest?patient=123456

```

リソースIDが123456の患者のMedicationRequestリソースを含むBundleを検索する。
1. patient,date 検索パラメータを使用して、患者のリファレンス情報と投薬日によるMedicationRequestの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/MedicationRequest?patient=[id]&date=[date]
GET [base]/MedicationRequest?patient=[url]&date=[date]

```

例：

```
GET [base]/MedicationRequest?patient=123456&date=eq2013-01-14

```

リソースIDが123456の患者の2013-01-14に服用するMedicationRequestリソースを含むBundleを検索する。
1. patient,authoredon 検索パラメータを使用して、患者のリファレンス情報と依頼日によるMedicationRequestの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/MedicationRequest?patient=[id]&authoredon=[date]
GET [base]/MedicationRequest?patient=[url]&authoredon=[date]

```

例：

```
GET [base]/MedicationRequest?patient=123456&authoredon=eq2013-03-21

```

リソースIDが123456の患者の2013-03-21に依頼されたMedicationRequestリソースを含むBundleを検索する。

##### 追加検索パラメータ

追加検索パラメータは定義しない。

#### Operation一覧

JP Core MedicationRequest Injection リソースに対する操作は定義されていない。

### サンプル

ホリゾン注射液１０ｍｇ１アンプルを左腕に静脈注射する処方例をFHIRで表現する場合のサンプルを示す。

-[**注射処方指示 ホリゾン注射液１０ｍｇワンショット静脈注射**](MedicationRequest-jp-medicationrequest-injection-example-1.md)

## 注意事項

### 記述の単位について

MedicationRequestは薬剤をCodeableConceptとして1つまでしか持つか、Medicationリソースのreferenceをもつことしかできない。したがって、複数の薬剤を同一のRp番号で表現する場合にはMedicationRequestを繰り返すか、複数の薬剤をまとめたMedication Resourceのインスタンスを参照することとなる。ワーキンググループでの検討の結果、複数の薬剤をまとめたMedicationリソースのインスタンスをcontained属性に内包した上で参照することとした。

１オーダ内に複数のRpがある場合には、MedicationRequestを繰り返し、identifier属性にオーダ番号、Rp番号をそれぞれ持つことでリソース間の関係性がわかるようにする。

１オーダ内にRpごとに複数の施用（投薬）を持つことができるシステムの場合は、dosageInstruction要素を施用単位で繰り返すことにより１つのMedicationRequestインスタンスで記述することができる。その場合、施用ごとに投与タイミングを dosageInstruction.timing で指定し、施用番号を dosageInstruction.sequenceで記述する。

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

### 投与速度の記述方法

点滴注射など一定の速度で時間をかけて投与する場合、その投与速度は dosageInstruction.doseAndRate.rateRatioを使用してRatio型で表現する。単位コードには、UCUM("http://unitsofmeasure.org")を使用する。

投与速度「100mL/h」を記述したインスタンス例を示す。

```
"dosageInstruction": [
  {
    "doseAndRate": [
      {
        "rateRatio": {
          "numerator": {
            "value": 100,
            "unit": "mL",
            "system": "http://unitsofmeasure.org",
            "code": "mL"
          },
          "denominator": {
            "value": 1,
            "unit": "時間",
            "system": "http://unitsofmeasure.org",
            "code": "h"
          }
        }
      }
    ]
  }


```

### 力価区分の記述方法

用量は製剤量で記述することを基本とするが、必要に応じて原薬量指定も可能とする。この識別は、Medication.ingredient.strength要素に対して定義した拡張「JP_Medication_IngredientStrength_StrengthType」を使用する。この拡張を識別するURIとして、"http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_IngredientStrength_StrengthType"を使用し、値はCodeableConcept型を使用して力価区分コードを指定することで行い、製剤量は「1」、原薬量は「2」とする。

投与量「１本」を製剤量で記録したインスタンス例を示す。

```
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
      "extension": [
        {
          "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_IngredientStrength_StrengthType",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthType",
                "code": "1",
                "display": "製剤量"
              }
            ]
          }
        }
      ],
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
    },


```

### 調剤容量の記述方法

調剤容量はdispenseRequest.quantityに、SimpleQuantity型で記録する。単位コードはUCUM("http://unitsofmeasure.org")を使用する。

```
"dispenseRequest": {
  "quantity": {
    "value": 510,
    "unit": "mL",
    "system": "http://unitsofmeasure.org",
    "code": "mL"
  }
}

```

### 調剤指示の記述方法

単一の薬剤に対する調剤指示は、dispenseRequest要素に対して定義した拡張「InstructionForDispense」を使用する。この拡張は、CodeableConcept型を使用して、コード化された指示ないしテキストによる指示を記録できる。両方を併記してもよい。テキストによる指示を記録する場合は text要素を使用する。一つの薬剤に対して、複数の指示を記録する場合には、この拡張を、拡張単位で繰り返して記録する

薬剤単位の調剤指示を表すインスタンス例を示す。

```
"dispenseRequest": {
  "extension": [
    {
      "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense",
      "valueCodeableConcept": {
        "text": "5mLに溶解して2mL抜きとる"
      }
    }
  ],

```

### 投与開始日時、投与終了日時の記述方法

注射・注入の薬剤の場合、内服・外用の薬剤と異なり投与タイミングは投与開始日時と投与終了日時を指定することが多い。投与開始日時、投与終了日時は、dosageInstruction.timing.repeat.boundsPeriod要素を使用してPeriod型で表現する。なお、ワンショットの場合は投与終了日時は省略するか、投与開始日時と同じ値を指定する。

開始日時「2021/07/07 09:00」終了日時「同 11:00」を記述したインスタンス例を示す。

```
"dosageInstruction": [
  {
    "timing": {
      "repeat": {
        "boundsPeriod": {
          "start": "2021-07-07T09:00:00+09:00",
          "end": "2021-07-07T11:00:00+09:00"
        }
      }
    }
  }


```

### 投与開始タイミングのあいまい指示の記述方法

例えば「07/15 夕方」など、投与開始タイミングを時刻ではなくイベントで指定する場合、dosageInstruction.timing.event要素で日付をdateTime型で、dosageInstruction.timing.when要素でタイミングをcode型で表現する。コードは、EventTiming("https://hl7.org/fhir/R4/valueset-event-timing.html")を使用する。あいまい指示の場合、投与終了タイミングを指定することはできない。

あいまい指示「2021/07/15 夕方」を指定した場合のインスタンス例を示す。

```
"dosageInstruction": [
  {
    "timing": {
      "event": "2021-07-15",
      "when": "EVE"
    }
  }
],

```

### 頓用指示の頓用条件、頓用回数の記述方法

例えば「疼痛時10回分」など、頓用の場合の投与条件や投与回数を表現したい場合、投与条件は dosageInstruction.timing.code 要素に CodeableConcept型で指定する。コードは、JAMI処方・注射オーダ標準用法規格の表6 イベント区分、イベント詳細区分("http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationAsNeededConditionJAMI_CS")を推奨するが、MERIT-9 処方オーダ 表5 頓用指示("http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationAsNeededConditionMERIT9_CS") を使用してもよい。 頓用回数は、dispenseRequest要素に対して定義した拡張「JP_MedicationRequest_DispenseRequest_ExpectedRepeatCount」を使用し、integer型で頓用回数を記載する。 また、頓用指示の場合、dosageInstruction.asNeededBoolean に true を指定する。

頓用条件、頓用回数「疼痛時10回分」をJAMI処方・注射オーダ標準用法規格、MERIT-9の両方を使用して指定した場合のインスタンス例を示す。

```
"dosageInstruction": [
  {
    "asNeededBoolean": true,
    "timing": {
      "code": {
        "coding": [
          {
            "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationAsNeededConditionJAMI_CS",
            "code": "11",
            "display": "疼痛時"
          },
          {
            "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationAsNeededConditionMERIT9_CS",
            "code": "PRNpain",
            "display": "疼痛時"
          },
        ]
      }
    }
  }
],
"dispenseRequest": {
  "extension": {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DispenseRequest_ExpectedRepeatCount",
    "valueInteger": 10
  }
}

```

### 投与部位の記述方法

投与部位を指定する場合は、dosageInstruction.site 要素に、CodeableConcept型で指定する。部位コードは、JAMI標準用法コード 表13 外用部位コード（"http://jami.jp/CodeSystem/MedicationBodySiteExternal"）を推奨する。 HL7表0550 身体部位("http://terminology.hl7.org/CodeSystem/v2-0550")とHL7表0495 身体部位修飾子("http://terminology.hl7.org/CodeSystem/v2-0495")を組み合わせて使用してもよいが、その場合は拡張「BodyStructure」を使用する。 この拡張は BodyStructureリソースを参照することができるので、location 要素にHL7表0550 身体部位("http://terminology.hl7.org/CodeSystem/v2-0550")のコードを、locationQualifier 要素に 身体部位修飾子("http://terminology.hl7.org/CodeSystem/v2-0495")のコードをそれぞれ指定したBodyStructureリソースをMedicationRequestリソースのcontained属性に内包し、それをExtension.valueReference 要素で参照するようにする。

投与部位「左腕」をJAMI標準用法コードで指定した場合のインスタンス例を示す。

```
"dosageInstruction": [
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
"dosageInstruction": [
  {
    "site": {
      "extension": [
        {
          "url": "http://hl7.org/fhir/core/Extension/StructureDefinition/bodySite",
          "valueReference": "#site"
        }
      ]
    }
  }
]

```

複数の部位に投与量を記録する場合は、dosageInstruction 要素を複数繰り返す。

### 投与経路、投与手技の記述方法

「静脈内」「眼内」などの投与経路は、dosageInstruction.route 要素にコードまたは文字列で指定する。使用するコード表はHL7 V2の使用者定義表0162 投薬経路を推奨し、その場合識別するURIとして、"http://jpfhir.jp/fhir/core/CodeSystem/route-codes"を使用する。

「0:静脈注射」、「1:中心静脈注射」などJAMI標準用法コードにて用法詳細区分として表現される区分（注射では「投与手技」とも呼ばれる）は、dosageInstruction.method 要素にコードまたは文字列で指定する。 用法詳細区分を識別するURIとして、"http://jami.jp/CodeSystem/MedicationMethodBasicUsage"を使用する。HL7 V2の使用者定義表0165("http://terminology.hl7.org/CodeSystem/v2-0165")やJAHIS注射データ交換規約のJHSI表0003 精密持続点滴("http://jpfhir.jp/fhir/core/CodeSystem/JHSI0003)を使用してもよい。

```
"route": {
  "coding": [
    {
      "system": "http://jpfhir.jp/fhir/core/CodeSystem/route-codes",
      "code": "IV",
      "display": "静脈内"
    }
  ]
},
"method": {
  "coding": [
    {
      "system": "http://jami.jp/CodeSystem/MedicationMethodDetailUsage",
      "code": "30",
      "display": "静脈注射"
    }
  ]
}

```

### 指示ライン

「末梢ルートメイン１」など、投与時に使用するラインを指示したい場合は、dosageInstruction要素で拡張「JP_MedicationDosage_Line」を使用し、CodeableConcept型で指定する。推奨するコードシステムはないので、ローカルコードを使用する。

指示ライン「末梢ルートメイン１」をローカルコードで指定した場合のインスタンス例を示す。

```
"dosageInstruction": [
  {
    "extension": [
      {
        "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Line",
        "valueCodeableConcept": {
          "coding": [
            {
              "system": "http://jpfhir.jp/fhir/Examples/CodeSystem/JP_MedicationRequestDosageInstructionLine_CS",
              "code": "01",
              "display": "末梢ルートメイン１"
            }
          ]
        }
      }
    ]
  }
]

```

### 投与装置の記述方法

「シリンジポンプ」など、投与時に使用する装置を指示したい場合は、dosageInstruction要素で拡張「JP_MedicationDosage_Device」を使用し、contained 属性に内包した Deviceリソースに対するリファレンスを指定する。 内包したDeviceリソースでは type属性に装置の種類をCodeableConcept型で指定する。推奨するコードシステムはないので、ローカルコードを使用する。 HL7 V2の使用者定義表0164 投薬装置を使用してもよい。

投与装置「点滴ポンプ」を使用者定義表0164で指定した場合のインスタンス例を示す。

```
"contained" : [ 
  {
    "resourceType": "Device",
    "id": "21125ef6-3566-b94a-3101-c7848866afd1",
    "type": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0164",
          "code": "IVP",
          "display": "点滴ポンプ"
        }
      ]
    }
  }
],
"dosageInstruction": [
  {
    "extension": [
      {
        "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_Device",
        "valueReference": {
          "reference" : "21125ef6-3566-b94a-3101-c7848866afd1",
          "type" : "Device"
        }
      }
    ],
  }
]

```

### 注射箋オーダ番号(オーダID)の記述方法

注射箋を識別する番号も、同様に MedicationRequestリソースの identifier 要素で表現することができる。

```
"identifier": [
  {
    "system": "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
    "value": "2020-00123456"
  },
]

```

### RP番号、薬剤番号、施用番号の記述方法

HL7 FHIRでは、注射箋の中で同一の用法を持つ剤グループ(RP)は、剤単位に個別のMedicationRequestリソースに展開される。このとき、剤グループの番号（RP番号と呼ぶ）と、同一剤グループ内での順番は、いずれも MedicationRequestリソースの identifier で表現することができる。RP番号を識別するURIとして、"http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber"を使用する。同一剤グループ内での順番を識別するURIとして、"http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex"を使用する。value は 文字列型であり、数値はゼロサプレス、つまり、"01"でなく"1"と指定すること。

```
"identifier": [
  {
    "system": "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber",
    "value": "1"
  },
  {
    "system": "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex",
    "value": "1"
  }
]

```

同一剤グループ内での順番（薬剤番号）は、Medication.ingredient要素に対して定義した拡張「JP_Medication_Ingredient_DrugNo」を使用する。この拡張を識別するURIとして、"http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_Ingredient_DrugNo"を使用し、値はinteger型で指定する。

薬剤番号「1」を記述したインスタンス例を示す。

```
"ingredient": [
  {
    "extension": [
      {
        "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_Ingredient_DrugNo",
        "valueInteger": 1
      }
    ],


```

一方、投与のそれぞれのタイミングの順番である施用番号については、MedicationRequestリソースの dosageInstruction.sequence で表現することができる。すなわち、同一RPの薬剤を複数回投与する場合、投与のタイミングごとに dosageInstructionごと繰り返し、そのタイミングは dosageInstruction.timing で表現することになる。

開始日時「2021/07/07 09:00」「同 13:00」「2021/07/08 09:00」を記述したインスタンス例を示す。

```
"dosageInstruction": [
  {
    "sequence": 1,
    "timing": {
      "repeat": {
        "boundsDuration": {
          "start": "2021-07-07T09:00:00+09:00"
        }
      }
    }
  },
  {
    "sequence": 2,
    "timing": {
      "repeat": {
        "boundsDuration": {
          "start": "2021-07-07T13:00:00+09:00"
        }
      }
    }
  },
  {
    "sequence": 3,
    "timing": {
      "repeat": {
        "boundsDuration": {
          "start": "2021-07-08T09:00:00+09:00"
        }
      }
    }
  },


```

### 入外区分

薬剤オーダの入院、外来を区別するための区分として表現される入外区分は、HL7V2で定義されているHL7表0482を使用し、category要素にコードおよび文字列で指定することができる。入外区分を識別するURIとして、"http://terminology.hl7.org/CodeSystem/v2-0482"を使用する。

```
"category": [ {
  "coding": [ {
    "system": "http://terminology.hl7.org/CodeSystem/v2-0482",
    "code": "O",
    "display": "外来オーダ"
  } ]
},

```

### 処方区分

薬剤オーダの運用上の区分である処方区分は、MERIT-9(処方区分)およびJAHIS注射データ交換規約Ver.2.1CのJHSI表0001を使用し、category要素に2種類のコードおよび文字列で指定することができる。MERIT-9(処方区分)を識別するURIとして"http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS"を、JHSI表0001を識別するURIとして"http://jpfhir.jp/fhir/core/CodeSystem/JHSI0001"を使用する。

```
"category": [ {
  "coding": [ {
    "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS",
    "code": "IHP",
    "display": "入院処方"
  } ]
}, {
  "coding": [ {
    "system": "http://jpfhir.jp/fhir/core/CodeSystem/JHSI0001",
    "code": "FTP",
    "display": "定時処方"
  } ]
}, 

```

### 用法種別

ワンショットや点滴など、薬剤オーダの時間的な区分である用法種別は、JAMI処方・注射オーダ標準用法規格の表14 時間的要素・機器区分コード表を使用し、dosageInstruction.additionalInstruction要素にコードおよび文字列で指定することができる。時間的要素・機器区分コード表を識別するURIとして"http://jami.jp/CodeSystem/MedicationUsage"（仮）を使用する。

```
"dosageInstruction": [
  {
    "additionalInstruction": [
      {
        "coding": [ {
          "system": "http://jami.jp/CodeSystem/MedicationUsage",
          "code": "1",
          "display": "ワンショット"
        } ]
      }
    ]
  }
],

```

### 各種コメントの記述方法

薬剤オーダのコメントとしては、薬剤単位につくもの、用法指示などRP単位につくもの、注射箋全体につくものがある。 全体のコメントはCommunicationリソースを使用し、薬剤単位、RP単位のコメントは、調剤指示以外はコード化されていれば dosageInstruction.additionalInstruction 要素ないしそうでないものは dosageInstruction.patientInstruction 要素を使用し、調剤指示は dispenseRequest要素に対して定義した拡張「InstructionForDispense」を使用する。

## その他、参考文献・リンク等

1. HL7, FHIR MedicationRequest Resource,[https://hl7.org/fhir/R4/medicationrequest.html](https://hl7.org/fhir/R4/medicationrequest.html)
1. HL7, FHIR Medication Resource,[https://hl7.org/fhir/R4/medication.html](https://hl7.org/fhir/R4/medication.html)
1. HL7, FHIR BodyStructure Resource,[https://hl7.org/fhir/R4/bodystructure.html](https://hl7.org/fhir/R4/bodystructure.html)
1. 保健医療福祉情報システム工業会, JAHIS 注射データ交換規約 Ver.2.1C,[https://www.jahis.jp/standard/detail/id=590](https://www.jahis.jp/standard/detail/id=590)
1. 日本医療情報学会MERIT-9研究会, 医療情報交換規約運用指針、MERIT-9 処方オーダver 1.0,[http://merit-9.mi.hama-med.ac.jp/jahis/SHOHOU.pdf](http://merit-9.mi.hama-med.ac.jp/jahis/SHOHOU.pdf)
1. 保健医療福祉情報システム工業会, JAHISデータ交換規約（共通編）Ver.1.2,[https://www.jahis.jp/standard/detail/id=725](https://www.jahis.jp/standard/detail/id=725)
1. 保健医療福祉情報システム工業会, JAHIS注射データ交換規約Ver.2.1C,[https://www.jahis.jp/standard/detail/id=590](https://www.jahis.jp/standard/detail/id=590)
1. Mike Henderson, 日本HL7協会監修、「HL7メッセージ交換」、第2版、インナービジョン社、2013年
1. 一般社団法人医療情報システム開発センター, 医薬品HOT コードマスター,[http://www2.medis.or.jp/hcode/](http://www2.medis.or.jp/hcode/)
1. 日本医療情報学会、SS-MIX2仕様書・ガイドライン,[http://www.jami.jp/jamistd/ssmix2.php](http://www.jami.jp/jamistd/ssmix2.php)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationrequest-injection",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationRequest_Injection",
  "title" : "JP Core MedicationRequest Injection Profile",
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
  "description" : "このプロファイルはMedicationRequestリソースに対して、注射薬剤処方のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest",
        "short" : "患者あるいはグループに対しての注射薬剤処方オーダ",
        "definition" : "患者への薬の供給と注射や点滴の指示を共に提供するオーダ。ケアプランやワークフローパターンとハーモナイズし、入院や外来でも使えるようにするため、このリソースは\"MedicationPrescription\"や\"MedicationOrder\"ではなく、\"MedicationRequest\"と呼ばれる。MedicationRequestプロファイルからの派生プロファイルである。"
      },
      {
        "id" : "MedicationRequest.identifier",
        "path" : "MedicationRequest.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "rules" : "open"
        },
        "short" : "外部から参照されるID",
        "definition" : "このインスタンスが外部から参照されるために使われるIDである。処方箋全体としてのIDとしては使用しない。  \n処方箋内で同一の用法をまとめて表記されるRp番号はこのIdentifier elementの別スライスで表現する。それ以外に任意のIDを付与してもよい。  \nこのIDは業務手順によって定められた処方オーダに対して、直接的なURL参照が適切でない場合も含めて関連付けるために使われる。この業務手順のIDは実施者によって割り当てられたものであり、リソースが更新されたりサーバからサーバに転送されたとしても固定のものとして存続する。",
        "comment" : "これは業務IDであって、リソースに対するIDではない。  \nSlice定義は下記のようになる。  \n[Sliceで定義される識別子]  \n　- rpNumber : 処方箋内部の剤グループとしてのRp番号  \n　- orderInRp : 同一RP番号（剤グループ）での薬剤の表記順  \n　- requestIdentifier : 処方オーダに対するID  \n　- prescriptionIdentifierCommon : 全国で⼀意になる発番ルールにもとづき発行される処方箋ID  \n[invariantで定義される識別子]  \n　- jp-inv-local-prescriptionid : 医療機関毎に管理される処方箋に対するID  ",
        "min" : 1,
        "constraint" : [
          {
            "key" : "jp-inv-local-prescriptionid",
            "severity" : "error",
            "human" : "施設処方箋IDを記述する場合には、identifier.systemは、'urn:oid:1.2.392.100495.20.3.11.[1+施設番号10桁]'でなければならない。",
            "expression" : "system.all(substring(0,31)!='urn:oid:1.2.392.100495.20.3.11.' or substring(31).matches('^1(0[1-9]|[1-3][0-9]|4[0-7])([0-9])([0-9]{7})$'))",
            "source" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest_Injection"
          }
        ]
      },
      {
        "id" : "MedicationRequest.identifier:rpNumber",
        "path" : "MedicationRequest.identifier",
        "sliceName" : "rpNumber",
        "short" : "処方箋内部の剤グループとしてのRp番号",
        "definition" : "処方箋内で同一用法の薬剤を慣用的にまとめて、Rpに番号をつけて剤グループとして一括指定されることがある。このスライスでは剤グループに対して割り振られたRp番号を記録する。",
        "comment" : "剤グループに複数の薬剤が含まれる場合、このグループ内の薬剤には同じRp番号が割り振られる。",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "MedicationRequest.identifier:rpNumber.system",
        "path" : "MedicationRequest.identifier.system",
        "short" : "Rp番号(剤グループ番号)についてのsystem値",
        "definition" : "ここで付番されたIDがRp番号であることを明示するためにOID-urlとして定義された。http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumberで固定される。",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber"
      },
      {
        "id" : "MedicationRequest.identifier:rpNumber.value",
        "path" : "MedicationRequest.identifier.value",
        "short" : "Rp番号(剤グループ番号)",
        "definition" : "Rp番号(剤グループ番号)。\"1\"など。",
        "comment" : "value は string型であり、数値はゼロサプレス、つまり、'01'でなく'1'と指定すること。",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.identifier:requestIdentifier",
        "path" : "MedicationRequest.identifier",
        "sliceName" : "requestIdentifier",
        "short" : "処方オーダに対するID",
        "definition" : "薬剤をオーダする単位としての処方依頼に対するID。MedicationRequestは単一の薬剤でインスタンスが作成される。",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "MedicationRequest.identifier:requestIdentifier.system",
        "path" : "MedicationRequest.identifier.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier"
      },
      {
        "id" : "MedicationRequest.identifier:requestIdentifier.value",
        "path" : "MedicationRequest.identifier.value",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.identifier:prescriptionIdentifierCommon",
        "path" : "MedicationRequest.identifier",
        "sliceName" : "prescriptionIdentifierCommon",
        "short" : "全国で⼀意となる処方箋ID",
        "definition" : "薬剤をオーダする単位としての処方箋に対するID。MedicationRequestは単一の薬剤でインスタンスが作成されるが、それの集合としての処方箋のID。全国で⼀意になる発番ルールにもとづく場合には urn:oid:1.2.392.100495.20.3.11 とする。",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "MedicationRequest.identifier:prescriptionIdentifierCommon.system",
        "path" : "MedicationRequest.identifier.system",
        "min" : 1,
        "fixedUri" : "urn:oid:1.2.392.100495.20.3.11"
      },
      {
        "id" : "MedicationRequest.identifier:prescriptionIdentifierCommon.value",
        "path" : "MedicationRequest.identifier.value",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "short" : "オーダの現在の状態を示すコード",
        "definition" : "オーダの現在の状態を示すコード。一般的には active か completed の状態であるだろう。",
        "comment" : "このエレメントはmodifierとされている。StatusとはこのResourceが現在妥当な状態ではないことも示すからである。",
        "isModifierReason" : "このエレメントは modifier である。Statusエレメントが entered-in-error という正当な情報として扱うべきではない状態の値も取り得るからである。"
      },
      {
        "id" : "MedicationRequest.statusReason",
        "path" : "MedicationRequest.statusReason",
        "short" : "現在のステータスの理由",
        "definition" : "現在のステータスの理由",
        "comment" : "一般的には「保留(suspended)」や「中止(cancelled)」といった例外的状態を示すために持ちいられる。MedicationRequestオーダが発生した理由についてはreasonCodeに記載され、この項目は用いられない。"
      },
      {
        "id" : "MedicationRequest.intent",
        "path" : "MedicationRequest.intent",
        "short" : "投薬指示の意図",
        "definition" : "投薬指示の意図 が提案(proposal)、計画(plan)、あるいは他の要求によるものかを示す。",
        "comment" : "処方をオーダする場合、MedicationRequestのどの段階でオーダしたのかについて、この項目を指定することが期待される。たとえば、proposalであれば患者、関係者、医師あるいは機器からの提案として作成される。\"plan\"であれば、医師、患者、関係者そして機器からの提案として生成される。\"original-order\"は医師にしか作成できない。  \ninstance-orderはリクエストあるいはオーダをインスタンス化する段階であり、MedicationAdministrationレコードにも使われる。  \nintentはこのresourceが実際に適応される時に変化するため、このエレメントはmodifierとしてラベルされる。",
        "isModifierReason" : "このエレメントは全ての記述的な属性の解釈を変える。たとえば、「リクエストすることが推奨される時間」と「リクエストすることが承認された時間」、あるいは「リクエストすることが推奨される人」と「リクエストすることが承認された人」など"
      },
      {
        "id" : "MedicationRequest.category",
        "path" : "MedicationRequest.category",
        "short" : "薬剤使用区分",
        "definition" : "このMedicationRequest Resourceが使用される区分を示す。日本では「院外」「院内」「入院」「外来」などの区分を想定する。  \n一般的には、外来や入院などどこでこの薬剤が投与、内服されるかを想定した区分である。  \n処方病棟や処方した診療科をOrganization resourceで表現することが冗長である場合にはこの区分が用いられることもある。  \nHL7 FHIRではvalue setとして http://terminology.hl7.org/CodeSystem/medicationrequest-category がデフォルトで用いられるが、日本での使用の場合持参薬をカバーする必要があり、JAHIS処方データ規約V3.0Cに記載されているMERIT-9処方オーダ表7とJHSP0007表を組み合わせて持ちいることとする。",
        "comment" : "薬剤が投与あるいはその他の用途で利用されると想定される場面についての区分である。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationCategoryInjeciton_VS"
        }
      },
      {
        "id" : "MedicationRequest.priority",
        "path" : "MedicationRequest.priority",
        "short" : "オーダの優先度",
        "definition" : "このMedicationRequestオーダの優先度。他のオーダと比較して表現される。",
        "comment" : "FHIRでは文字列の大きさが1MBを超えてはならない(SHALL NOT)。"
      },
      {
        "id" : "MedicationRequest.doNotPerform",
        "path" : "MedicationRequest.doNotPerform",
        "short" : "要求が禁止された行為であればTrue",
        "definition" : "このオーダが実施していけないものであればTrueを表示される",
        "comment" : "もし、doNotPerformに指定がなければ、オーダは実施してもよいものである。(たとえば、「実施せよ」)",
        "isModifierReason" : "このエレメントは実施すべきオーダを否定するものであるため、このエレメントはmodifierとされている。（たとえば、この薬剤オーダが不適切なものであったり初歩宇部着物ではない場合)"
      },
      {
        "id" : "MedicationRequest.reported[x]",
        "path" : "MedicationRequest.reported[x]",
        "short" : "初期記録にはない報告",
        "definition" : "このレコードは元々の一次記録から報告されたものか、二次的に「報告された」資料から取り込まれたものかを示す。報告の情報源についても示される。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Organization",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.medication[x]",
        "path" : "MedicationRequest.medication[x]",
        "short" : "What medication was supplied　医薬品",
        "definition" : "医薬品の識別情報は必須でありmedicationReference.referenceが必ず存在しなければならない、JP Coreでは注射の医薬品情報は単一薬剤の場合も Medicationリソースとして記述し、medicationCodeableConceptは使用しない。参照するMedicationリソースは、MedicationRequest.contained属性に内包することが望ましいが、外部参照としても良い。",
        "comment" : "If only a code is specified, then it needs to be a code for a specific product. If more information is required, then the use of the medication resource is recommended.  For example, if you require form or lot number, then you must reference the Medication resource.  \nひとつのtext要素と、複数のcoding 要素を記述できる。処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ずtext要素に格納した上で、それをコード化した情報を1個以上のcoding 要素に記述する。  \n厚生労働省標準であるHOT9コード、HOT13コード（販社指定が不要な場合にはHOT7コード）または広く流通しているYJコードを用いるか、一般名処方の場合には厚生労働省保険局一般名処方マスタのコードを使用して、Coding要素（コードsystemを識別するURI、医薬品のコード、そのコード表における医薬品の名称の3つからなる）で記述する。  \nなお、上記のいずれの標準的コードも付番されていない医薬品や医療材料の場合には、薬機法の下で使用されているGS1標準の識別コードであるGTIN(Global Trade Item Number)の調剤包装単位（最少包装単位、個別包装単位）14桁を使用する。  \nひとつの処方薬、医療材料を複数のコード体系のコードで記述してもよく、その場合にcoding 要素を繰り返して記述する。  \nただし、ひとつの処方薬を複数のコードで繰り返し記述する場合には、それらのコードが指し示す処方薬、医療材料は当然同一でなければならない。  \nまた、処方を発行した医療機関内でのデータ利用のために、医療機関固有コード体系によるコード（ハウスコード、ローカルコード）の記述を含めてもよいが、その場合でも上述したいずれかの標準コードを同時に記述することが必要である。",
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
        "id" : "MedicationRequest.subject",
        "path" : "MedicationRequest.subject",
        "short" : "処方箋が発行された対象(個人あるいはグループ)",
        "definition" : "JP Coreでは患者を表すPatientリソースへの参照。  \n一般には薬剤が投与される対象となる人（あるいはグループ)を表現するResourceに対するリンク。",
        "comment" : "処方オーダの対象は必須項目である。  \n二次利用のためにどこに実際の対象がいるのかについての情報は提供されない。特定の対象に対して匿名化することも必要である。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "MedicationRequest.encounter",
        "path" : "MedicationRequest.encounter",
        "short" : "encounter/admission/stay のいずれかとして記録された診察",
        "definition" : "JP Coreでの使用は規定されていない。  \nこの対象となるリソース[x]が作成される間やこの記録が作成される対象のencounterは密接に関連している。",
        "comment" : "このエレメントは一般的には外来でのイベントに対応するが、診察が公式に終わる前や後にこの診察についてのコンテキストに対応して開始される活動についても対応する。もし、診療のエピソードに関連させる必要があれば、extensionとして扱われることがある。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.supportingInformation",
        "path" : "MedicationRequest.supportingInformation",
        "short" : "薬剤オーダについて補助的情報",
        "definition" : "薬剤をオーダするときに補助的となる追加情報（たとえば、患者の身長や体重））を含む。",
        "comment" : "参照先は実存するFHIR Resourceでなければならず(SHALL)、解決可能(アクセスコントロールや、一時的に利用不可であることなどは許容される)でなければならない(SHALL)。解決の方法はURLから取得可能であるか、Resource型が適応できるかどうか、正規のURLとして絶対的参照を扱うことができるか、ローカルのレジストリ／リポジトリから参照することができるかである。"
      },
      {
        "id" : "MedicationRequest.authoredOn",
        "path" : "MedicationRequest.authoredOn",
        "short" : "この処方オーダが最初に記述された日時",
        "definition" : "JP Coreでは必須。処方指示が最初に作成された日時。秒の精度まで記録する。タイムゾーンも付与しなければならない。",
        "min" : 1
      },
      {
        "id" : "MedicationRequest.requester",
        "path" : "MedicationRequest.requester",
        "short" : "このオーダを発行した人・物",
        "definition" : "JP Coreではこのエレメントに対する規定はない。  \nこのオーダを発行した責任のある人、組織、機器。",
        "comment" : "参照先は実存するFHIR Resourceでなければならず(SHALL)、解決可能(アクセスコントロールや、一時的に利用不可であることなどは許容される)でなければならない(SHALL)。解決の方法はURLから取得可能であるか、Resource型が適応できるかどうか、正規のURLとして絶対的参照を扱うことができるか、ローカルのレジストリ／リポジトリから参照することができるかである。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Device"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.performer",
        "path" : "MedicationRequest.performer",
        "short" : "薬剤投与・管理を行った者",
        "definition" : "薬物治療を実施すると予定された者。（たとえば、薬剤投与を行った者）",
        "comment" : "参照先は実存するFHIR Resourceでなければならず(SHALL)、解決可能(アクセスコントロールや、一時的に利用不可であることなどは許容される)でなければならない(SHALL)。解決の方法はURLから取得可能であるか、Resource型が適応できるかどうか、正規のURLとして絶対的参照を扱うことができるか、ローカルのレジストリ／リポジトリから参照することができるかである。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/CareTeam"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.performerType",
        "path" : "MedicationRequest.performerType",
        "short" : "薬剤投与を行った職種",
        "definition" : "薬剤の投与・管理を行った職種を示す。",
        "comment" : "Performerを示さずにこのエレメントが指定された場合は、このエレメントは薬剤の投与／管理が指定の職種でなければならないと言うことを示している。Performerと共に指定された場合は、もし指定されたPerformerが実施できない場合に薬剤投与・管理を行うものについての要件が示されたことを意味する。",
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_PractitionerRole_VS"
        }
      },
      {
        "id" : "MedicationRequest.recorder",
        "path" : "MedicationRequest.recorder",
        "short" : "投薬オーダの入力者",
        "definition" : "JP Coreではこのエレメントに対する規定はない。  \nたとえば口答指示や電話でのオーダにより、他の人の代理で処方を入力した人。",
        "comment" : "参照先は実存するFHIR Resourceでなければならず(SHALL)、解決可能(アクセスコントロールや、一時的に利用不可であることなどは許容される)でなければならない(SHALL)。解決の方法はURLから取得可能であるか、Resource型が適応できるかどうか、正規のURLとして絶対的参照を扱うことができるか、ローカルのレジストリ／リポジトリから参照することができるかである。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.reasonCode",
        "path" : "MedicationRequest.reasonCode",
        "short" : "薬を注文するあるいは注文しない理由や適応",
        "definition" : "このエレメントに対するJP Coreの規定はない。  \n薬剤をオーダするあるいはしないことを示した理由。",
        "comment" : "このエレメントは病名コードであってもよい。もし、すべての条件を示す記録があって他の詳細な記録が必要であれば、reasonReferenceを使用すること。"
      },
      {
        "id" : "MedicationRequest.reasonReference",
        "path" : "MedicationRequest.reasonReference",
        "short" : "処方箋が書かれた理由について補足するCondition ResourceまたはObservation Resource",
        "definition" : "薬剤がなぜオーダされたのかを説明する条件や観察。",
        "comment" : "薬剤オーダの理由を示すこれは条件や観察についての参照である。もし、コードだけであればreasonCodeを使用すること。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.instantiatesCanonical",
        "path" : "MedicationRequest.instantiatesCanonical",
        "short" : "FHIRプロトコルまたは定義のインスタンス",
        "definition" : "このMedicationRequestの一部あるいは全部が遵守するprotocolやguideline, ordersetなど他の定義を示すURL。",
        "comment" : "[Canonical References](references.html#canonical)を参照すること。"
      },
      {
        "id" : "MedicationRequest.instantiatesUri",
        "path" : "MedicationRequest.instantiatesUri",
        "short" : "外部プロトコルまたは定義のインスタンス",
        "definition" : "このMedicationRequestの一部あるいは全部が遵守するprotocolやguideline, ordersetなど他の定義を示すURL。",
        "comment" : "以下参照。 http://en.wikipedia.org/wiki/Uniform_resource_identifier"
      },
      {
        "id" : "MedicationRequest.basedOn",
        "path" : "MedicationRequest.basedOn",
        "short" : "オーダが実施される根拠",
        "definition" : "このMedicationRequestの全部あるいは一部を満たす計画やオーダ。",
        "comment" : "参照先は実存するFHIR Resourceでなければならず(SHALL)、解決可能(アクセスコントロールや、一時的に利用不可であることなどは許容される)でなければならない(SHALL)。解決の方法はURLから取得可能であるか、Resource型が適応できるかどうか、正規のURLとして絶対的参照を扱うことができるか、ローカルのレジストリ／リポジトリから参照することができるかである。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/CarePlan",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_CarePlan",
              "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest",
              "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common",
              "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.groupIdentifier",
        "path" : "MedicationRequest.groupIdentifier",
        "short" : "このRequestを一部とする複数のオーダを構成するID",
        "definition" : "一人の処方者が同時期に前後して作成した全てのリクエストに共通するIDで、処方や薬品請求のIDを示す。",
        "requirements" : "リクエストは\"basedOn\"での関連付け（たとえば、あるリクエストが他のリクエストを満たす）か、あるいは共通の請求伝票に書かれているを示すことで関連付けられる。同じ請求伝票にあるリクエストは最初に作成されてからは変更や維持などについては独立したものと見なされる。"
      },
      {
        "id" : "MedicationRequest.courseOfTherapyType",
        "path" : "MedicationRequest.courseOfTherapyType",
        "short" : "薬剤投与の全体的なパターン",
        "definition" : "患者が内服する薬剤についての管理の全体的なパターンについての記載。",
        "comment" : "この属性は薬剤プロトコールと混同してはならない。"
      },
      {
        "id" : "MedicationRequest.insurance",
        "path" : "MedicationRequest.insurance",
        "short" : "適用される保険",
        "definition" : "リクエストされたサービスについて支払いが求め裸得ることになる、保険のプランや適応範囲の拡大、事前の権限付与、かつ/または事前の判定。",
        "comment" : "参照先は実存するFHIR Resourceでなければならず(SHALL)、解決可能(アクセスコントロールや、一時的に利用不可であることなどは許容される)でなければならない(SHALL)。解決の方法はURLから取得可能であるか、Resource型が適応できるかどうか、正規のURLとして絶対的参照を扱うことができるか、ローカルのレジストリ／リポジトリから参照することができるかである。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Coverage",
              "http://hl7.org/fhir/StructureDefinition/ClaimResponse"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.note",
        "path" : "MedicationRequest.note",
        "short" : "薬剤単位の備考",
        "definition" : "他の属性では伝えることができなかったMedicationRequestについての付加的情報。",
        "comment" : "構造化されたアノテーションが内システムでは、作成者や記録時間のない一つのアノテーションで情報を伝達している。このエレメントに情報の修正を要する可能性があるためにナラティブな情報も必要としている。Annotationsには機械処理が可能で修正される（\"modifying\")情報を伝達することに使うべきではない(SHOULD NOT)。これがSHOULDである理由はユーザの行動を強制することはほぼ不可能であるからである。"
      },
      {
        "id" : "MedicationRequest.dosageInstruction",
        "path" : "MedicationRequest.dosageInstruction",
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
        "id" : "MedicationRequest.dispenseRequest",
        "path" : "MedicationRequest.dispenseRequest",
        "short" : "調剤・払い出しについての承認事項",
        "definition" : "薬剤オーダ(MedicationRequest, Medication Prescription, Medication Orderなどとしても表現される）や薬剤オーダとの一部としての薬剤の払い出しあるいは提供。この情報はオーダとしてかならず伝えられるというわけではないことに注意。薬剤部門で調剤・払い出しを完了するための施設（たとえば病院）やシステムでのサポートに関する設定をしてもよい。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.id",
        "path" : "MedicationRequest.dispenseRequest.id",
        "short" : "内部エレメントを参照するためのユニークID",
        "definition" : "エレメント間参照のためのユニークID。空白を含まない全ての文字を使ってもよい(MAY)。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.extension",
        "path" : "MedicationRequest.dispenseRequest.extension",
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
        "id" : "MedicationRequest.dispenseRequest.extension:instructionForDispense",
        "path" : "MedicationRequest.dispenseRequest.extension",
        "sliceName" : "instructionForDispense",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DispenseRequest_InstructionForDispense"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dispenseRequest.extension:expectedRepeatCount",
        "path" : "MedicationRequest.dispenseRequest.extension",
        "sliceName" : "expectedRepeatCount",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationRequest_DispenseRequest_ExpectedRepeatCount"
            ]
          }
        ]
      },
      {
        "id" : "MedicationRequest.dispenseRequest.initialFill",
        "path" : "MedicationRequest.dispenseRequest.initialFill",
        "short" : "初回の調剤詳細",
        "definition" : "初回の薬剤払い出しでの期間や量への指示",
        "comment" : "このエレメントを設定するときには量あるいは期間が指定されていなければならない。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.initialFill.quantity",
        "path" : "MedicationRequest.dispenseRequest.initialFill.quantity",
        "short" : "初回の調剤量",
        "definition" : "初回の払い出しとして提供される薬剤の量。",
        "comment" : "このエレメントはどのような量を表現するか定義するためにコンテキストにあわせてよく定義される。したがって、どのような単位でも利用することができる。使用されるコンテキストによってcomparatorエレメントで値が定義されることもある。",
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
        "id" : "MedicationRequest.dispenseRequest.initialFill.duration",
        "path" : "MedicationRequest.dispenseRequest.initialFill.duration",
        "short" : "初回の調剤期間",
        "definition" : "初回に行われる調剤、払い出しで予定される期間",
        "comment" : "このエレメントはどのような量を表現するか定義するためにコンテキストにあわせてよく定義される。したがって、どのような単位でも利用することができる。使用されるコンテキストによってcomparatorエレメントで値が定義されることもある。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.dispenseInterval",
        "path" : "MedicationRequest.dispenseRequest.dispenseInterval",
        "short" : "再調剤までの最短期間",
        "definition" : "再調剤、払い出しを行う予定までの最短の期間",
        "comment" : "このエレメントはどのような量を表現するか定義するためにコンテキストにあわせてよく定義される。したがって、どのような単位でも利用することができる。使用されるコンテキストによってcomparatorエレメントで値が定義されることもある。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.validityPeriod",
        "path" : "MedicationRequest.dispenseRequest.validityPeriod",
        "short" : "許可された払い出し期間",
        "definition" : "このエレメントは処方の有効期間（処方が失効する日）を示す。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.validityPeriod.start",
        "path" : "MedicationRequest.dispenseRequest.validityPeriod.start",
        "short" : "境界を含む開始時刻",
        "definition" : "期間の開始を示す。境界も含まれる。",
        "comment" : "このエレメントが設定されていなければ、下限が不明であることを示す。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.validityPeriod.end",
        "path" : "MedicationRequest.dispenseRequest.validityPeriod.end",
        "short" : "継続中でなければ境界を含む終了時刻",
        "definition" : "期間の終了時刻。もし、期間の終了が示されていなければ、このインスタンスが生成された時点での終了時刻が不明であったか計画されていなかったかである。開始時刻(start)は過去であることもあり、終了時刻(end)は未来であることもあり、その時点での見込みあるいは予定された終了時刻を意味する。",
        "comment" : "終了時刻は全ての日付・時刻に対応する。たとえば、2012-02-03T10:00:00は2012-02-03を終了時刻(end)の値とする期間を示す。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "path" : "MedicationRequest.dispenseRequest.numberOfRepeatsAllowed",
        "short" : "許可されたリフィル回数",
        "definition" : "リフィル回数を示す整数である。患者が処方された薬を最初の払い出しから追加で受け取ることができる回数である。使用上の注意：この整数には最初の払い出しが含まれない。オーダが「30錠に加えて3回リフィル可」であれば、このオーダで合計で最大4回、120錠が患者に受け渡される。この数字を0とすることで，処方者がリフィルを許可しないということを明示することができる。",
        "comment" : "許可された払い出し回数は，最大でこの数字に1を足したものである。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.quantity",
        "path" : "MedicationRequest.dispenseRequest.quantity",
        "short" : "調剤量",
        "definition" : "1回の調剤で払い出される薬剤の量",
        "comment" : "このエレメントはどのような量を表現するか定義するためにコンテキストにあわせてよく定義される。したがって、どのような単位でも利用することができる。使用されるコンテキストによってcomparatorエレメントで値が定義されることもある。",
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
        "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration",
        "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration",
        "short" : "調剤日数",
        "definition" : "供給される製品が使用されるか、あるいは払い出しが想定されている時間を指定する期間。",
        "comment" : "状況によっては、この属性は物理的に供給される量というよりも、想定されている期間に供給される薬剤の量を指定する数量の代わりに使われることもある。たとえば、薬剤が90日間供給される（オーダされた量に基づいて）など。可能であれば、量も示した方がより正確になる。expectedSupplyDurationは外部要因に影響をうけることのある予測値である。"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.unit",
        "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.unit",
        "fixedString" : "日"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.system",
        "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.system",
        "fixedUri" : "http://unitsofmeasure.org"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.code",
        "path" : "MedicationRequest.dispenseRequest.expectedSupplyDuration.code",
        "fixedCode" : "d"
      },
      {
        "id" : "MedicationRequest.dispenseRequest.performer",
        "path" : "MedicationRequest.dispenseRequest.performer",
        "short" : "想定された払い出し薬局",
        "definition" : "処方者によって指定される調剤・払い出しを行うと想定されているOrganizationを示す。  \nIndicates the intended dispensing Organization specified by the prescriber.",
        "comment" : "参照先は実存するFHIR Resourceでなければならず(SHALL)、解決可能(アクセスコントロールや、一時的に利用不可であることなどは許容される)でなければならない(SHALL)。解決の方法はURLから取得可能であるか、Resource型が適応できるかどうか、正規のURLとして絶対的参照を扱うことができるか、ローカルのレジストリ／リポジトリから参照することができるかである。",
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
        "id" : "MedicationRequest.substitution",
        "path" : "MedicationRequest.substitution",
        "short" : "後発医薬品への変更可否情報",
        "definition" : "後発医薬品への変更可否情報。代替薬剤を払い出してよいかどうかを示している。代替薬剤を使用しなければいけない場合もあれば、使用しない場合もある。このブロックでは処方者の意図が示される。もし、何も指定されていなければ代替薬品を用いてもよい。"
      },
      {
        "id" : "MedicationRequest.substitution.allowed[x]",
        "path" : "MedicationRequest.substitution.allowed[x]",
        "short" : "後発医薬品への変更可否情報",
        "definition" : "後発医薬品への変更可否情報。",
        "comment" : "代替品が許可されるかどうかは無視できないので、このエレメントはmodifierとしてラベルされる。",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationSubstitutionNotAllowedReason_VS"
        }
      },
      {
        "id" : "MedicationRequest.substitution.reason",
        "path" : "MedicationRequest.substitution.reason",
        "short" : "後発医薬品への変更不可理由",
        "definition" : "【JP Core仕様】後発医薬品への変更不可の理由を示す。令和6年保険改訂により、長期収載医薬品の変更不可を指定する場合は「医療上の必要性がある」または「患者希望による」のいずれかを指定する。",
        "comment" : "代替品の理由を表す一般的パターンに全てのターミノロジが適応しているわけではない。情報モデルはCodeableConceptではなく、直接Codingをを使用してテキストやコーディング、翻訳、そしてエレメントと事前条件、事後条件の関係について管理するためにその構造を提示する必要がある。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationSubstitutionProhibitionReason_VS"
        }
      },
      {
        "id" : "MedicationRequest.priorPrescription",
        "path" : "MedicationRequest.priorPrescription",
        "short" : "前回のオーダ/処方",
        "definition" : "関連する先行オーダや処方を表現するMedicationRequest Resourceへのリンク。",
        "comment" : "参照先は実存するFHIR Resourceでなければならず(SHALL)、解決可能(アクセスコントロールや、一時的に利用不可であることなどは許容される)でなければならない(SHALL)。解決の方法はURLから取得可能であるか、Resource型が適応できるかどうか、正規のURLとして絶対的参照を扱うことができるか、ローカルのレジストリ／リポジトリから参照することができるかである。"
      },
      {
        "id" : "MedicationRequest.detectedIssue",
        "path" : "MedicationRequest.detectedIssue",
        "short" : "実施時の臨床的問題",
        "definition" : "患者に対して1回以上の実施されたか提案された診療行為によって、実際に起きたあるいは起きる可能性のある臨床的問題。たとえば、薬剤官相互作用や重複治療、薬剤量についての警告など。DetectedIssueリソースへの参照。",
        "comment" : "このエレメントは意思決定支援システムや臨床医によって指摘された問題点を扱うことができ、問題を表すためのステップについての情報を扱ってもよい。"
      },
      {
        "id" : "MedicationRequest.eventHistory",
        "path" : "MedicationRequest.eventHistory",
        "short" : "ライフサイクルで関心のあるイベントのリスト",
        "definition" : "このリソースの現在のバージョンをユーザから見て関係していそうなキーとなる更新や状態遷移と識別される過去のバージョンのこのリソースあるいは調剤請求あるいはEvent ResourceについてのProvenance resourceへの参照。",
        "comment" : "このエレメントには全てのバージョンのMedicationRequestについてのProvenanceが取り込まれているわけではない。「関連する」あるいは重要と思われたものだけである。現在のバージョンのResourceに関連したProvenance resourceを含めてはならない(SHALL NOT)。（もし、Provenanceとして「関連した」変化と思われれば、後の更新の一部として取り込まれる必要があるだろう。それまでは、このバージョンを_revincludeを使ってprovenanceとして指定して直接クエリーを発行することができる。全てのProvenanceがこのRequestについての履歴を対象として持つべきである。）"
      }
    ]
  }
}

```
