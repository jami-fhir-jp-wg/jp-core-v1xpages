# JP Core Condition Diagnosis Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Diagnosis Profile**

## Resource Profile: JP Core Condition Diagnosis Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition_Diagnosis
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Condition_Diagnosis
* **項目**: *Title*
  * **内容**: JP Core Condition Diagnosis Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはConditionリソースに対して、患者の診断に関する情報を送受信するための共通の制約と拡張を定めたものである。 

本プロファイルは、診療情報提供書や退院時サマリーなどで患者の診断に関する情報を表現するJP_Condition_Diagnosisリソースの記録・更新・検索を行う上で、準拠するべき必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

## スコープ

* JP_Condition_Diagnosisリソースは、診療情報提供書や退院時サマリーの傷病名、現病歴、既往歴に記述する、医療者が専門的な知識に基づき診断した結果などの情報を表現する。
* JP_Condition_Diagnosisリソースは、診療報酬請求に必要な病名やDPC病名、プロブレムとして記述される症状、所見なども対象とするが、それらの記述に必要な固有の属性（主傷病かどうか、医療資源を最も投入した傷病名かどうか、など）は含まれない。
* JP_Condition_Diagnosisリソースは、歯科で用いられる病名（歯科病名）は対象としない。

## 想定シナリオ

本プロファイルは、以下のようなユースケースを想定する。

* 診療情報提供書や退院時サマリにおいて傷病名を記述する
* 電子カルテで医師が登録した病名情報を検索する
* 地域連携システムにおいて患者の病名情報を電子的に情報交換する
* 各種検査オーダーにおいて対象となる病名情報（依頼病名）を記述する
* SS-MIX2やJAHIS病名情報データ交換規約に準拠した病名オーダメッセージをJSONに変換する

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core Encounter Profile](StructureDefinition-jp-encounter.md)
* Examples for this Profile: [Condition/jp-condition-diagnosis-example-1](Condition-jp-condition-diagnosis-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-condition-diagnosis)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-condition-diagnosis.csv), [Excel](StructureDefinition-jp-condition-diagnosis.xlsx), [Schematron](StructureDefinition-jp-condition-diagnosis.sch) 

### 必須要素

本プロファイルに準拠するためには、次の項目の値が存在しなければならない。

* subject : 本リソースを所有する患者

### Extensions定義

本プロファイルで定義された拡張は次の通りである。

| | | | |
| :--- | :--- | :--- | :--- |
| 病名転帰 | 病名の転帰を格納するための拡張《code配下》 | [JP_Condition_DiseaseOutcome](StructureDefinition-jp-condition-disease-outcome.md) | CodeableConcept |
| 病名修飾語 | 病名の前置修飾語を格納する拡張《code配下》 | [JP_Condition_DiseasePrefixModifier](StructureDefinition-jp-condition-disease-prefix-modifier.md) | CodeableConcept |
| 病名修飾語 | 病名の後置修飾語を格納する拡張《code配下》 | [JP_Condition_DiseasePostfixModifier](StructureDefinition-jp-condition-disease-postfix-modifier.md) | CodeableConcept |

### 用語定義

HL7 FHIRの基底規格では、病名コードなどでSNOMED CTが使われているが、日本ではライセンスの問題もあり普及していない。代替としてJAHIS病名情報データ交換規約やSS-MIX2で使われている用語集を採用した。

HL7 V2系では用語集を識別するコードシステム名（以下、「CS名」）は文字列であったが、FHIRではURIを指定する必要があるため、それぞれにURIを割り当てた。以下に使用する用語集のCS名とURI表記を列記する。

| | | | |
| :--- | :--- | :--- | :--- |
| 病名 | MEDIS ICD10対応標準病名マスター(管理番号) | MDCDX2 | http://medis.or.jp/CodeSystem/master-disease-keyNumber |
| 病名 | MEDIS ICD10対応標準病名マスター(交換用コード) | MDCDX2 | http://medis.or.jp/CodeSystem/master-disease-exCode |
| 病名 | ICD-10 | ICD10 | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/ICD10-2013-full |
| 病名 | レセプト電算用傷病名マスター | (なし) | http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDisaseCodeReceipt_CS |
| 病名修飾語 | MEDIS ICD10対応標準病名マスター(修飾語管理番号) | MDCDX2 | http://medis.or.jp/CodeSystem/master-disease-modKeyNumber |
| 病名修飾語 | MEDIS ICD10対応標準病名マスター(修飾語交換用コード) | MDCDX2 | http://medis.or.jp/CodeSystem/master-disease-modExCode |
| 病名修飾語 | レセプト電算用修飾語マスター | (なし) | http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseModifierReceipt_CS |
| 転帰区分 | HL7表0241 | HL70241 | hhttp://jpfhir.jp/fhir/core/CodeSystem/HL70241 |
| 転帰区分 | JHSD表0006 | JHSD0006 | http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006 |
| 転帰区分 | レセプト電算システム転帰区分コード | (なし) | http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseOutcomeReceipt_CS |

### 制約一覧

本プロファイルで追加定義された制約はない。

### 項目の追加

本プロファイルで追加された項目は以下の通りである。

* 転帰区分（拡張「DiseaseOutcome」を使用）
* 発症日（病名開始日）(onset[x]を使用)
* 転帰日（病名終了日）(abatement[x]を使用)
* 病名修飾語（拡張「DiseasePrefixModifier」「DiseasePostfixModifier」を使用）

## 利用方法

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Condition?identifier=http://myhospital.com/fhir/condition|123 |
| SHOULD | patient | reference | GET [base]/Condition?patient=Patient/123 |
| MAY | patient,onset-date | reference,date | GET [base]/Condition?patient=Patient/123&onset-date=ge2021-08-24 |
| MAY | patient,clinical-status | reference,code | GET [base]/Condition?patient=Patient/123&clinical-status=active |
| MAY | patient,verification-status | reference,code | GET [base]/Condition?patient=Patient/123&verification-status=confirmed |
| MAY | patient,category | reference,code | GET [base]/Condition??patient=Patient/123&category=problem-list-item |

##### 必須検索パラメータ

本プロファイルに準拠するためには、以下の検索パラメータをサポートしなければならない（SHALL）

1. 検索パラメータidentifierを指定し、レコードIDなどの識別子によりConditionを検索

```
GET [base]/Condition?identifier={system|}[code]

```

例：

```
GET [base]/Condition?identifier=http://myhospital.com/fhir/condition|123

```

指定された識別子に一致するConditionリソースを含むBundleを検索する。

##### 推奨検索パラメータ

本プロファイルに準拠するためには、以下の検索パラメータをサポートすることが推奨される（SHOULD）

1. 検索パラメータpatientを指定し、該当するすべてのConditionを検索

```
GET [base]/Condition?patient={reference}

```

例：

```
GET [base]/Condition?patient=Patient/123

```

指定された患者のすべてのConditionリソースを含むBundleを検索する。

##### 追加検索パラメータ

オプションとして次の検索パラメータをサポートすることができる（MAY）

1. 検索パラメータpatientとonset-dateを指定し、該当するすべてのConditionを検索
* dateに対する次の比較演算子のサポートを含む: gt,lt,ge,le
* AND検索のオプションのサポートを含む (例えば.onset-date=[date]&onset-date=[date]]&…)

```
   GET [base]/Condition?patient={reference}&onset-date={gt|lt|ge|le}[date]{&onset-&date={gt|lt|ge|le}[date]&...}

```

例：

```
   GET [base]/Condition?patient=Patient/123&onset-date=ge2021-08-24

```

指定された患者および発症日のすべてのConditionを含むBundleを検索する。
1. 検索パラメータpatientとclinical-statusを指定し、該当するすべてのConditionを検索
* OR検索のサポートを含む(例えば clinical-status={system|}[code],{system|}[code],…)

```
   GET [base]/Condition?patient={reference}&clinical-status={system|}[code]{,{system|}[code],...}

```

例：

```
   GET [base]/Condition?patient=Patient/123&clinical-status=active

```

```
   GET [base]/Condition?patient=Patient/123&clinical-status=http://hl7.org/fhir/ValueSet/condition-clinical|active

```

指定された患者およびステータスのすべてのConditionを含むBundleを検索する。
1. 検索パラメータpatientとverification-statusを指定し、該当するすべてのConditionを検索

```
   GET [base]/Condition?patient={reference}&verification-status={system|}[code]

```

例：

```
   GET [base]/Condition?patient=Patient/123&verification-status=confirmed

```

```
   GET [base]/Condition?patient=Patient/123&verification-status=http://hl7.org/fhir/ValueSet/condition-ver-status|confirmed

```

指定された患者および確認状態のすべてのConditionを含むBundleを検索する。
1. 検索パラメータpatientとcategoryを指定し、該当するすべてのConditionを検索

```
   GET [base]/Condition?patient={reference}&category={system|}[code]

```

例：

```
   GET [base]/Condition?patient=Patient/123&category=claim-diagnosis

```

```
   GET [base]/Condition?patient=Patient/123&category=http://hl7.org/fhir/ValueSet/condition-category|problem-list-item

```

指定された患者およびカテゴリーのすべてのConditionを含むBundleを検索する。

##### オプション検索パラメータ

本プロファイルで追加定義されたオプション検索パラメータはない。

#### サンプル

* [**病名（右橈骨遠位端骨折の術後）**](Condition-jp-condition-diagnosis-example-1.md)

## 注意事項

### 病名の識別コードと名称について

病名を識別するコードと名称は、Condition.code要素に、CodeableConcept型を使用して記録する。標準コードとしては、MEDIS ICD10対応標準病名マスターの交換用コード（"http://medis.or.jp/CodeSystem/master-disease-exCode"）、MEDIS ICD10対応標準病名マスターの管理コード（http://medis.or.jp/CodeSystem/master-disease-keyNumber）、ICD-10（"http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDisaseCodeICD10_CS"）、レセプト電算用傷病名マスター（"http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionReceiptCode_CS"）を推奨する。CodeableConcept型はcoding要素を繰り返すことが可能なので、１つの病名の識別情報を複数のコードシステムで記述してもよい。 また、Condition.code.text には修飾情報を含めた病名のフルテキストを記述する。

「急性化膿性虫垂炎の疑い」の場合のインスタンス例を示す。

```
"code": {
  "coding": [ { 
    "system": "http://terminology.sample.com/CodeSystem/disease/1311234567", 
    "code": "MD03981", 
    "display": "急性化膿性虫垂炎" 
  }, { 
    "system": "http://medis.or.jp/CodeSystem/master-disease-exCode", 
    "code": "HR19", 
    "display": "急性化膿性虫垂炎" 
  }, { 
    "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDisaseCodeICD10_CS", 
    "code": "K358", 
    "display": "急性化膿性虫垂炎" 
  }, { 
    "system": "http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionReceiptCode_CS", 
    "code": "5409004", 
    "display": "急性化膿性虫垂炎" 
  } ], 
  "text": "急性化膿性虫垂炎の疑い" 
},

```

### 病名修飾語について

病名修飾語は「急性」「過敏性」「症候群」などの修飾を病名に付加するためのものであり、Condition.code要素に対して定義した拡張「JP_Condition_DiseasePrefixModifier」「JP_Condition_DiseasePostfixModifier」を使用し、CodeableConcept型を使用して記録する。標準コードとしては、MEDIS ICD10対応標準病名マスターの修飾語交換用コード（"http://medis.or.jp/CodeSystem/master-disease-modExCode"）、レセプト電算資システム用修飾語コード("http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseModifierReceipt_CS")、MEDIS ICD10対応標準病名マスターの修飾語管理番号（"http://medis.or.jp/CodeSystem/master-disease-modKeyNumber"）をを推奨する。この拡張を繰り返すことにより、複数の修飾語を記述することができる。

「右橈骨遠位端骨折の術後」の場合のインスタンス例を示す。

```
"code": {
  "extension": [ {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePrefixModifier",
    "valueCodeableConcept": {
      "coding": [ { 
        "system": "http://medis.or.jp/CodeSystem/master-disease-modExCode", 
        "code": "5194", 
        "display": "右" 
      } ],
      "text": "右"
    }
  }, {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePostfixModifier",
    "valueCodeableConcept": {
      "coding": [ { 
        "system": "http://medis.or.jp/CodeSystem/master-disease-modExCode", 
        "code": "1486", 
        "display": "の術後" 
      } ],
      "text": "の術後"
    }
  } ],
  "coding": [ { 
    "system": "http://terminology.sample.com/CodeSystem/disease/1311234567", 
    "code": "MD13062", 
    "display": "橈骨遠位端骨折" 
  }, { 
    "system": "http://medis.or.jp/CodeSystem/master-disease-exCode", 
    "code": "CJTR", 
    "display": "橈骨遠位端骨折" 
  } ], 
  "text": "右橈骨遠位端骨折の術後" 
},

```

### 発症日（病名開始日）、転帰日（病名終了日）の記述方法

病名や症状などの発症日（病名や症状が始まった日）および転帰日（病名や症状が治まった日）は、それぞれCondition.onset[x]要素およびCondition.abatement[x]要素を使用して記述する。発症日や転帰日が不明の場合、代わりに病名開始日（当該病名の診療を開始した日）や病名終了日（当該病名の診療を終了した日）を記載してもよい。 dateTime, Age, Period, Range, string の５種類のデータ型を選択でき、情報の精度に応じて様々な記述方法が可能である。 abatement[x]要素はCondition.clinicalStatus要素の値が"resolved","remission","inactive"の場合のみ記述できることに注意すること。

「2023-09-01」に発症し、「2023-09-23」に転帰した場合のインスタンス例を示す。

```
"onsetDateTime": "2023-09-01",
"abatementDateTime": "2023-09-23",

```

「2023年6月から7月」に発症した場合のインスタンス例を示す。

```
"onsetPeriod": {
  "start": "2023-06",
  "end": "2023-07"
},

```

「15歳」の時に発症した場合のインスタンス例を示す。

```
"onsetAge": {
  "value": 15,
  "unit": "years",
  "system": "http://unitsofmeasure.org",
  "code": "a"
},

```

### 転帰区分の記述方法

転帰区分は、DiseaseOutcome拡張を使用し、CodeableConcept型で記載する。使用するコードは、HL7V2.ｘで定義されているHL7表0241 ("http://jpfhir.jp/fhir/core/CodeSystem/HL70241") およびJAHIS病名情報データ交換規約Ver.3.1Cで定義されているJHSD表0006 ("http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006")の併用ないしレセプト電算用転帰区分コード（"http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionDiseaseOutcomeReceipt_CS"）が標準コードとして使用できる。 なお、記述する転帰区分は、abatement[x]に記述した時点、ないしabatement[x]がない場合は出力時点での情報とする。

「寛解」の場合のインスタンス例を示す。

```
"extension": [ {
  "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseaseOutcome",
  "valueCodeableConcept": {
  "coding": [ { 
    "system": "http://jpfhir.jp/fhir/core/CodeSystem/JHSD0006", 
    "code": "M", 
    "display": "寛解" 
  }, { 
    "system": "http://terminology.sample.com/CodeSystem/disease-outcome", 
    "code": "2", 
    "display": "寛解" 
  } ], 
  "text": "寛解" 
  }
} ],

```

### 疑い病名の記述方法

疑い病名かどうかは、Condition.verificationStatus要素に、CodeableConcept型を使用して記録する。コードは、Requiredレベルでバインディングされている値セット（"http://hl7.org/fhir/ValueSet/condition-ver-status"）を使用し、確定病名の場合は"confirmed"、疑い病名の場合は"unconfirmed"をセットする。 また、疑い病名の場合はCondition.code.textの末尾を「～の疑い」とする。

「急性化膿性虫垂炎の疑い」の場合のインスタンス例を示す。

```
"verificationStatus": {
  "coding": [ { 
    "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status", 
    "code": "unconfirmed", 
    "display": "Unconfirmed" 
  } ]
},
...
"code": {
  "coding": [ { 
    "system": "http://terminology.sample.com/CodeSystem/disease/1311234567", 
    "code": "MD03981", 
    "display": "急性化膿性虫垂炎" 
  }, { 
    "system": "http://medis.or.jp/CodeSystem/master-disease-exCode", 
    "code": "HR19", 
    "display": "急性化膿性虫垂炎" 
  } ], 
  "text": "急性化膿性虫垂炎の疑い" 
},

```

## その他、参考文献・リンク等

1. JAHIS 病名情報データ交換規約Ver.3.1C[https://www.jahis.jp/files/user/04_JAHIS%20standard/18-003_JAHIS病名情報データ交換規約%20Ver.3.1C.pdf](https://www.jahis.jp/files/user/04_JAHIS standard/18-003_JAHIS病名情報データ交換規約 Ver.3.1C.pdf)
1. ICD-10[https://terminology.hl7.org/2.1.0/CodeSystem-icd10.html](https://terminology.hl7.org/2.1.0/CodeSystem-icd10.html)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-condition-diagnosis",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition_Diagnosis",
  "version" : "1.3.0-dev",
  "name" : "JP_Condition_Diagnosis",
  "title" : "JP Core Condition Diagnosis Profile",
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
  "description" : "このプロファイルはConditionリソースに対して、患者の診断に関する情報を送受信するための共通の制約と拡張を定めたものである。",
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
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
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
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition",
        "short" : "Detailed information about disease. 患者の診断に関する詳細な情報",
        "definition" : "A clinical condition, problem, diagnosis, or other event, situation, issue, or clinical concept that has risen to a level of concern.\r\n\r\n健康上の懸念となるレベルに達した、身体的、精神的、社会的な負の状態(condition)や問題（problem／issue）、医療者による診断(diagnosis)、生じたイベント(event)、置かれている状況(situation)、臨床的概念(clinical concept)。"
      },
      {
        "id" : "Condition.extension",
        "path" : "Condition.extension",
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
        "id" : "Condition.extension:diseaseOutcome",
        "path" : "Condition.extension",
        "sliceName" : "diseaseOutcome",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseaseOutcome"
            ]
          }
        ]
      },
      {
        "id" : "Condition.clinicalStatus",
        "path" : "Condition.clinicalStatus",
        "short" : "active | recurrence | relapse | inactive | remission | resolved （アクティブ | 再発 | 再燃 | インアクティブ | 寛解 | 完治）【詳細参照】",
        "definition" : "The clinical status of the condition.\r\n\r\nこの患者状態の臨床的ステータス（アクティブか否かなど）",
        "comment" : "データ型はCodeableConceptである。clinicalStatusには何らかの臨床的判断が伴うため、FHIRで指定されたvalue setよりも特異性のあるvalue setが必要となりうる。これは、いわゆる転帰(outcome)のみを意味しない。使用する場合、ConditionClinicalStatusCodesを必須として指定し、それ以外にHL7表0241、JHSD表0006、レセプト電算システム転帰区分コードが使用できる。"
      },
      {
        "id" : "Condition.verificationStatus",
        "path" : "Condition.verificationStatus",
        "short" : "unconfirmed | provisional | differential | confirmed | refuted | entered-in-error（十分に確認されていない | 暫定的 | 鑑別的 | 十分な根拠で存在 | 十分な根拠で否定 | 誤記載）。【詳細参照】",
        "definition" : "The verification status to support the clinical status of the condition.\r\n\r\n この患者状態が存在するかどうかの検証状況。",
        "comment" : "疑い病名を指定するのに使用する。疑い病名の場合は 'unconfirmed'を、確定病名の場合は'confirmed'をそれぞれ指定する。"
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "short" : "病名の識別コード。【詳細参照】",
        "definition" : "病名を識別するためのコード。",
        "comment" : "JP_Condition_DiseaseCode_VSの中から適切な病名識別コードを指定する",
        "mustSupport" : true
      },
      {
        "id" : "Condition.code.extension:diseasePrefixModifier",
        "path" : "Condition.code.extension",
        "sliceName" : "diseasePrefixModifier",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePrefixModifier"
            ]
          }
        ]
      },
      {
        "id" : "Condition.code.extension:diseasePostfixModifier",
        "path" : "Condition.code.extension",
        "sliceName" : "diseasePostfixModifier",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Condition_DiseasePostfixModifier"
            ]
          }
        ]
      },
      {
        "id" : "Condition.code.coding",
        "path" : "Condition.code.coding",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Condition.code.coding:medisExchange",
        "path" : "Condition.code.coding",
        "sliceName" : "medisExchange",
        "short" : "MEDIS ICD10対応標準病名マスターの交換用コード。【詳細参照】",
        "definition" : "MEDIS ICD10対応標準病名マスターの交換用コード。",
        "comment" : "JP_Disease_MEDIS_Concept_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://medis.or.jp/ValueSet/master-disease-exCode"
        }
      },
      {
        "id" : "Condition.code.coding:medisExchange.system",
        "path" : "Condition.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://medis.or.jp/CodeSystem/master-disease-exCode"
      },
      {
        "id" : "Condition.code.coding:medisExchange.code",
        "path" : "Condition.code.coding.code",
        "min" : 1
      },
      {
        "id" : "Condition.code.coding:medisRecordNo",
        "path" : "Condition.code.coding",
        "sliceName" : "medisRecordNo",
        "short" : "MEDIS ICD10対応標準病名マスターの管理番号。",
        "definition" : "MEDIS ICD10対応標準病名マスターの管理番号。",
        "comment" : "JP_Disease_MEDIS_ManagementID_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://medis.or.jp/ValueSet/master-disease-keyNumber"
        }
      },
      {
        "id" : "Condition.code.coding:medisRecordNo.system",
        "path" : "Condition.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://medis.or.jp/CodeSystem/master-disease-keyNumber"
      },
      {
        "id" : "Condition.code.coding:medisRecordNo.code",
        "path" : "Condition.code.coding.code",
        "min" : 1
      },
      {
        "id" : "Condition.code.coding:receipt",
        "path" : "Condition.code.coding",
        "sliceName" : "receipt",
        "short" : "レセプト電算用傷病名マスター。【詳細参照】",
        "definition" : "レセプト電算用傷病名マスター。",
        "comment" : "JP_Disease_Claim_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/mhlw/ValueSet/masterB-disease"
        }
      },
      {
        "id" : "Condition.code.coding:receipt.system",
        "path" : "Condition.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/masterB-disease"
      },
      {
        "id" : "Condition.code.coding:receipt.code",
        "path" : "Condition.code.coding.code",
        "min" : 1
      },
      {
        "id" : "Condition.code.coding:icd10",
        "path" : "Condition.code.coding",
        "sliceName" : "icd10",
        "short" : "ICD-10コード。【詳細参照】",
        "definition" : "ICD-10コード。",
        "comment" : "JP_ConditionDiseaseCodeICD10_VSの中から適切なコードを指定する。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://jpfhir.jp/fhir/core/mhlw/ValueSet/ICD10-2013-full"
        }
      },
      {
        "id" : "Condition.code.coding:icd10.system",
        "path" : "Condition.code.coding.system",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/ICD10-2013-full"
      },
      {
        "id" : "Condition.code.coding:icd10.code",
        "path" : "Condition.code.coding.code",
        "min" : 1
      },
      {
        "id" : "Condition.code.text",
        "path" : "Condition.code.text",
        "short" : "病名や所見、症状のフルテキスト【詳細参照】",
        "definition" : "病名や所見、症状のフルテキスト。",
        "comment" : "修飾語などを含めた病名や所見、症状のフルテキストを記述する。特に所見や症状などでコード化が難しい場合は、ここにテキストとして記述する。"
      },
      {
        "id" : "Condition.onset[x]",
        "path" : "Condition.onset[x]",
        "short" : "発症日（病名開始日）。診断された疾患や症状が開始された、推定もしくは実際の日付、日時、年齢。【詳細参照】",
        "definition" : "臨床医の判断における、この疾患や症状が始まったと推定される、または実際に始まった日または日時。",
        "comment" : "発症日が不明な場合、病名開始日（当該病名の診療を開始した日）を記述してもよい。年齢は一般的に、患者の症状が発生し始めた年齢を報告する場合に使用される。"
      },
      {
        "id" : "Condition.abatement[x]",
        "path" : "Condition.abatement[x]",
        "short" : "転帰日（病名終了日）。診断された疾患や症状がいつ治癒／寛解／軽快したか。【詳細参照】",
        "definition" : "診断された疾患や症状が解決または寛解した日付または推定日付。 「寛解(remission)」や「解決(resolution)」には過剰な意味合いがあるため「軽減(abatement)」と呼ばれる。つまり、疾患や症状は本当に解決されることはないが、軽減することはある。",
        "comment" : "転帰日が不明の場合、病名終了日（当該病名の診療を終了した日）を記述してもよい。多くのケースでは解決と寛解の区別は明確でないため、これらに明確な区別はない。 年齢は通常、患者の症状が軽減した年齢を報告する場合に使用される。abatement要素がない場合、症状が解決したか寛解に入ったかは不明である。 アプリケーションとユーザーは通常、状態がまだ有効であると想定する必要がある。 abatementString が存在する場合、状態が軽減されることを意味する。"
      },
      {
        "id" : "Condition.evidence.code",
        "path" : "Condition.evidence.code",
        "short" : "徴候や症状",
        "definition" : "この状態の記録に至った徴候や症状。"
      }
    ]
  }
}

```
