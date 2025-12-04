# JP Core Immunization Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Immunization Profile**

## Resource Profile: JP Core Immunization Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Immunization
* **項目**: *Title*
  * **内容**: JP Core Immunization Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはImmunizationリソースに対して日本での予防接種情報を送受信するための制約と拡張を加えたものである。 

本プロファイルは予防接種情報をImmunizationリソースを使用して表現する。 以下、本プロファイルのImmunizationリソースを「JP Core Immunizationリソース」と呼ぶ。

ワクチン接種のFHIR仕様に関しては、先行事例としてはデジタル庁が公開している新型コロナワクチン接種証明書アプリがあるが、スマートフォンでQRコードとして表示できるデータサイズに納めるため、記述されている情報は極めて限定的である。そこで、国内で利用されているそれ以外のワクチン接種関係の文書やAPIなども参考にして記述すべき項目の洗い出しや記述方法の検討を行った。具体的には、母子手帳、Yellow Card、 市町村長が有する接種記録（予防接種台帳）、ワクチン接種記録システム（VRS）、マイナポータル自己情報取得APIを参考にした。既存のImmunizationの要素で記述できない項目については、新たに拡張を定義した。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* ワクチン接種の記録を電子的に報告する
* ポータルサイトから自分自身のワクチン接種の記録を取得する
* 個人の各種ワクチン接種の記録をEHR/PHRに記録する

## スコープ

### 対象

本プロファイルの対象は各種ワクチンの接種情報を電子的に連携するためのメッセージを記述することである。

### 対象としないこと

本プロファイルはワクチン以外の一般的な注射薬剤については対象としない。一般的な注射薬剤は、JP Core MedicationRequest Injectionプロファイルで記述することとする。

**Usages:**

* Refer to this Profile: [JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md)
* Examples for this Profile: [Immunization/jp-immunization-example-1](Immunization-jp-immunization-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-immunization)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-immunization.csv), [Excel](StructureDefinition-jp-immunization.xlsx), [Schematron](StructureDefinition-jp-immunization.sch) 

### 必須要素

JP Core Immunization リソースは、次の要素を持たなければならない。

* status
* vaccineCode
* patient
* occurrence[x]

### Extensions定義

JP Core Immunization リソースで使用される拡張は次の通りである。

| | | | |
| :--- | :--- | :--- | :--- |
| DueDateOfNextDose | 次回接種予定日 | [JP_Immunization_DueDateOfNextDose](StructureDefinition-jp-immunization-duedateofnextdose.md) | dateTime |
| ManufacturedDate | 製造年月日 | [JP_Immunization_ManufacturedDate](StructureDefinition-jp-immunization-manufactureddate.md) | dateTime |
| CertificatedDate | 検定年月日 | [JP_Immunization_CertificatedDate](StructureDefinition-jp-immunization-certificateddate.md) | dateTime |

### 用語定義

HL7 FHIRの基底規格では、ワクチンコードとして CVX コードが使われているが、日本ではHOTコードやYJコードで一通り使用されているワクチンが定義されているため、国内で利用する際の用語集としては HOTコードとYJコードを採用した。それ以外の用語集の利用を妨げるものではない。

| | | |
| :--- | :--- | :--- |
| ワクチン | HOT9 | http://medis.or.jp/CodeSystem/master-HOT9 |
| ワクチン | HOT13 | http://medis.or.jp/CodeSystem/master-HOT13 |
| ワクチン | YJコード | http://capstandard.jp/iyaku.info/CodeSystem/YJ-code |
| 対象疾患 | MEDIS標準病名マスター病名交換用コード | http://medis.or.jp/CodeSystem/master-disease-exCode |

### 項目の追加

参考にしたワクチン関係の文書やAPIで扱われている項目に合わせ、以下の項目を追加した。

* 次回接種予定日（拡張「JP_Immunization_DueDateOfNextDose」を使用）
* 製造年月日（拡張「JP_Immunization_ManufacturedDate」を使用）
* 検定年月日（拡張「JP_Immunization_CertificatedDate」を使用）

## 利用方法

### Interaction一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHALL | identifier | token | GET [base]/Immunization?identifier=http://myhospital.com/fhir/immunization|1234567890 |
| SHOULD | patient | reference | GET [base]/Immunization?patient=123456 |
| SHOULD | patient,date | reference,date | GET [base]/Immunization?patient=123456&date=eq2013-01-14 |
| MAY | date,lot-number | date,string | GET [base]/Immunization?date=eq2013-01-14&lot-number=FF3620 |

##### 必須検索パラメータ

次の検索パラメータは必須でサポートされなければならない。

1. identifier 検索パラメータを使用して、オーダIDなどの識別子によるMedicationRequestの検索をサポートしなければならない（**SHALL**）

```
GET [base]/Immunization?identifier={system|}[token]

```

例：

```
GET [base]/Immunization?identifier=http://myhospital.com/fhir/medication|1234567890

```

指定された識別子に一致するImmunizationリソースを含むBundleを検索する。

##### 推奨検索パラメータ

次の検索パラメータをサポートすることが望ましい。

1. patient 検索パラメータを使用して、患者のリファレンス情報によるImmunizationの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Immunization?patient=[id]
GET [base]/Immunization?patient=[url]

```

例：

```
GET [base]/Immunization?patient=123456

```

リソースIDが123456の患者のImmunizationリソースを含むBundleを検索する。
1. patient,date 検索パラメータを使用して、患者のリファレンス情報と接種日によるImmunizationの検索をサポートすることが望ましい（**SHOULD**）

```
GET [base]/Immunization?patient=[id]&date=[date]
GET [base]/Immunization?patient=[url]&date=[date]

```

例：

```
GET [base]/Immunization?patient=123456&date=eq2013-01-14

```

リソースIDが123456の患者の2013-01-14に服用するImmunizationリソースを含むBundleを検索する。

#### Operation一覧

JP Immunization リソースに対する操作は定義されていない。

### サンプル

このワクチン接種例では下記の内容をFHIRで表現する場合について解説する。

| | | |
| :--- | :--- | :--- |
| 接種ワクチン | コミナティ筋注 (182110901) |   |
| 対象疾患 | ＣＯＶＩＤ－１９ (S9VN) |   |
| 接種量 | 0.45mL |   |
| 接種部位 | Left arm (LA) |   |
| 接種実施者 | 大阪 一郎 |   |
| 接種日時 | 2021/07/01 10:30 |   |
| ロット番号 | 12345678 |   |

* [**新型コロナワクチン接種**](Immunization-jp-immunization-example-1.md)

## 注意事項

### 記述の単位について

Immunizationはワクチンを vaccineCodeとして1つまでしか持つことしかできないので、ワクチン単位でImmunizationリソースを作成する。

### ワクチンの種類や製剤名の記述方法について

ワクチンの種類や製剤名は Immunization.vaccineCode要素にCodeableConcept型で記述する。ワクチンを識別するコードは、HOTコード（HOT13を推奨）ないしYJコードを使用する。

```
"vaccineCode": {
  "coding":  [
    {
      "system": "http://medis.or.jp/CodeSystem/master-HOT13",
      "code": "1820201040101",
      "display": "インフルエンザHAワクチン「第一三共」1mL"
    }
  ]
}

```

### 接種年月日の記述方法について

ワクチンを接種した日は Immunization.occurrenceDateTime要素にdateTime型で記述する。日付での記述が難しい場合は、Immunization.occurrenceString要素にテキストで記述してもよい。

Immunization.occurrenceDateTime要素を使用した例：

```
"occurrenceDateTime": "2022-03-02"

```

Immunization.occurrenceString要素を使用した例：

```
"occurrenceString": "６才頃"

```

### 記録日時の記述方法について

ワクチン接種の情報を記録した日時は Immunization.recorded要素にdateTime型で記述する。

```
"recorded": "2022-03-02T10:45:23+09:00"

```

### 接種場所の記述方法について

ワクチンの接種場所は Immunization.location要素にReference型でLocationリソースの参照情報を記述する。

```
"location" : {
  "reference" : "Location/1234"
}

```

### 製造会社の記述方法について

ワクチンの製造会社は Immunization.manufacturer要素にReference型でOrganizationリソースの参照情報を記述する。

```
"manufacturer" : {
  "reference" : "Organization/1234"
}

```

### ワクチンのロット番号の記述方法について

ワクチンのロット番号は Immunization.lotNumber要素にstring型で記述する。

```
"lotNumber" : "FF3620"

```

### 接種部位の記述方法について

ワクチンの接種部位は Immunization.site要素に CodeableConcept型で記述する。部位を識別するコードにはJAMI処方・注射オーダ標準用法規格(外用部位コード) を推奨する

```
"site": {
  "coding":  [
    {
      "system": "http://jami.jp/CodeSystem/MedicationBodySiteExternal"
      "code": "74L",
      "display": "左上腕"
    }
  ]
}

```

### 接種量の記述方法について

ワクチンの接種量は Immunization.doseQuantity要素にSimpleQuantity型で記述する。全体の容量をUCUM("http://unitsofmeasure.org")を使用してmL単位で指定する。

```
"doseQuantity": {
  "value": 1,
  "unit": "mL",
  "system": "http://unitsofmeasure.org",
  "code": "mL"
}

```

### 接種実施者の記述方法について

ワクチンの接種実施者 Immunization.performer.actor要素にReference型でPractitionerリソースの参照情報を記述する。Immunization.performer.functionにはValueSet "https://hl7.org/fhir/R4/valueset-immunization-function.html"から"AP" (Administering Provider)を指定する。

```
"performer": [
  {
    "function": {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/v2-0443",
          "code": "AP",
          "display": "Administering Provider"
        }
      ]
    },
    "actor": {
      "reference": "Practitioner/1234"
    }
  }
]

```

### 接種を行わなかった理由の記述方法について

ワクチン接種を行わなかった理由を記述したい場合は、Immunization.statusReason要素にCodeableConcept型で記述する。適当な標準コードが整備されていないため、ローカルコードを定義するか、CodeableConcept.text要素にテキストとして記述する。

```
"statusReason": [
  {
    "text": "37.5℃以上の発熱があったため。"
  }
]

```

### 予防接種の種類、効果のある疾患の記述方法について

ワクチン接種により感染や重症化を予防できる疾患（記録によっては「予防接種の種類」と呼ばれることもある）は、Immunization.protocolApplied.targetDisease要素にCodeableConcept型で記述する。使用する用語集としては、「診療情報提供書HL7FHIR記述仕様 第1版」などでも採用されている MEDIS標準病名マスターの病名交換用コード("http://medis.or.jp/CodeSystem/master-disease-exCode")を推奨する。

```
"protocolApplied": [
  {
    "targetDisease": [
      {
        "coding": [
          {
            "system": "http://medis.or.jp/CodeSystem/master-disease-exCode",
            "code": "ES0L",
            "display": "インフルエンザ"
          }
        ]
      }
    ] 
  }
]

```

### ワクチン接種の回数の記述方法について

ワクチン接種の回数はImmunization.protocolApplied.doseNumberPositiveInt要素にpositiveInt型で記述する。

```
"protocolApplied": [
  {
    "doseNumberPositiveInt": 2
  }
]

```

### 次回接種予定日の記述方法について

次回のワクチン接種予定日は既存のImmunization要素では記述ができないため、Immunizationリソースに対する拡張「DueDateOfNextDose」を使用してdate型で記述する。extension.urlには"http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_DueDateOfNextDose"を指定する。

```
"extension": [
  {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_DueDateOfNextDose",
    "valueDate": "2022-04-02"
  }
]

```

### 製造年月日、検定年月日

ワクチンの製造年月日、検定年月日はいずれも既存のImmunization要素では記述ができないため、Immunizationリソースに対する拡張「ManufacturedDate」「CertificatedDate」をそれぞれ使用してdate型で記述する。extension.urlにはそれぞれ"http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_ManufacturedDate"、"http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_CertificatedDate"を指定する。

```
"extension": [
  {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_ManufacturedDate",
    "valueDate": "2021-10-14"
  },
  {
    "url": "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_CertificatedDate",
    "valueDate": "2021-10-18"
  }
]

```

## その他、参考文献・リンク等

1. HL7, FHIR Immunization Resource,[https://hl7.org/fhir/R4/Immunization.html](https://hl7.org/fhir/R4/Immunization.html)
1. 母子手帳（厚生労働省令，P51),[https://www.mhlw.go.jp/content/000622161.pdf](https://www.mhlw.go.jp/content/000622161.pdf)
1. ワクチン接種記録システム(VRS),[https://cio.go.jp/sites/default/files/uploads/documents/vrs_announcement_210430a_att1.pdf](https://cio.go.jp/sites/default/files/uploads/documents/vrs_announcement_210430a_att1.pdf)
1. 予防接種台帳,[https://www.mhlw.go.jp/content/10906000/000588379.pdf](https://www.mhlw.go.jp/content/10906000/000588379.pdf)
1. マイナポータル,[https://myna.go.jp/html/api/selfinfo/R4-6/B-084_R4-6.xlsx](https://myna.go.jp/html/api/selfinfo/R4-6/B-084_R4-6.xlsx)
1. 新型コロナワクチン接種証明書アプリ,[https://www.digital.go.jp/policies/vaccinecert/faq_06](https://www.digital.go.jp/policies/vaccinecert/faq_06)
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
  "id" : "jp-immunization",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization",
  "version" : "1.3.0-dev",
  "name" : "JP_Immunization",
  "title" : "JP Core Immunization Profile",
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
  "description" : "このプロファイルはImmunizationリソースに対して日本での予防接種情報を送受信するための制約と拡張を加えたものである。",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Immunization",
        "path" : "Immunization",
        "short" : "予防接種",
        "definition" : "予防接種時の記録，あるいは予防接種について患者や医療従事者などが報告した記録。"
      },
      {
        "id" : "Immunization.id",
        "path" : "Immunization.id",
        "short" : "このResourceに対する論理ID"
      },
      {
        "id" : "Immunization.extension",
        "path" : "Immunization.extension",
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
        "id" : "Immunization.extension:dueDateOfNextDose",
        "path" : "Immunization.extension",
        "sliceName" : "dueDateOfNextDose",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_DueDateOfNextDose"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:manufacturedDate",
        "path" : "Immunization.extension",
        "sliceName" : "manufacturedDate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_ManufacturedDate"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.extension:certificatedDate",
        "path" : "Immunization.extension",
        "sliceName" : "certificatedDate",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_CertificatedDate"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.status",
        "path" : "Immunization.status",
        "definition" : "予防接種記録の現在の状態を示すコード",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "ImmunizationStatus"
            }
          ],
          "strength" : "required",
          "description" : "予防接種の現在の状態を表すコード",
          "valueSet" : "http://hl7.org/fhir/ValueSet/immunization-status|4.0.1"
        }
      },
      {
        "id" : "Immunization.statusReason",
        "path" : "Immunization.statusReason",
        "short" : "実施しなかった理由"
      },
      {
        "id" : "Immunization.vaccineCode",
        "path" : "Immunization.vaccineCode",
        "short" : "接種されたワクチン製剤",
        "definition" : "接種されたあるいは接種予定のワクチン。",
        "comment" : "全てのターミノロジがこのパターンに当てはまるわけではない。モデルによってはCodeableConceptではなく，独自構造でCodingを直接指定して文書やコーディング，その解釈や事前条件や事後条件との関連について示される。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationCode_Immunization_VS"
        }
      },
      {
        "id" : "Immunization.patient",
        "path" : "Immunization.patient",
        "short" : "予防接種を受けた人",
        "definition" : "予防接種を受けた，あるいは受けなかった患者。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "Immunization.encounter",
        "path" : "Immunization.encounter",
        "short" : "予防接種を受けた診察",
        "definition" : "患者が医療従事者から予防接種を受けた外来，入院あるいは他の対面の状態を表す。",
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
        "id" : "Immunization.occurrence[x]",
        "path" : "Immunization.occurrence[x]",
        "short" : "ワクチンを接種した日時",
        "definition" : "ワクチンを接種した日あるいは接種予定だった日。"
      },
      {
        "id" : "Immunization.recorded",
        "path" : "Immunization.recorded",
        "short" : "予防接種を受けた対象者の記録として最初に記載された日"
      },
      {
        "id" : "Immunization.reportOrigin",
        "path" : "Immunization.reportOrigin",
        "short" : "二次的に報告された記録の発生源を示す",
        "definition" : "予防接種を実施した時に，ワクチンを接種した人以外からの報告からの情報である場合のデータの発生源。"
      },
      {
        "id" : "Immunization.location",
        "path" : "Immunization.location",
        "short" : "ワクチンを接種した場所",
        "definition" : "接種医療機関。ワクチン接種がどこで実施されたかを表す。サービスが提供された場所。接種された身体部位ではない。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
          }
        ]
      },
      {
        "id" : "Immunization.manufacturer",
        "path" : "Immunization.manufacturer",
        "short" : "ワクチンメーカー",
        "definition" : "ワクチメーカーの名前。",
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
        "id" : "Immunization.lotNumber",
        "path" : "Immunization.lotNumber",
        "short" : "ワクチンのロット番号",
        "definition" : "ワクチン製剤のロット番号。"
      },
      {
        "id" : "Immunization.expirationDate",
        "path" : "Immunization.expirationDate",
        "short" : "ワクチンの使用期限",
        "definition" : "ワクチンの消費期限を表す日。"
      },
      {
        "id" : "Immunization.site",
        "path" : "Immunization.site",
        "short" : "ワクチンが接種された身体部位",
        "definition" : "ワクチンが接種された身体部位",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationBodySiteJAMIExternal_VS"
        }
      },
      {
        "id" : "Immunization.route",
        "path" : "Immunization.route",
        "short" : "ワクチンを接種した経路",
        "definition" : "ワクチンが体内へと接種された経路。"
      },
      {
        "id" : "Immunization.doseQuantity",
        "path" : "Immunization.doseQuantity",
        "short" : "ワクチンの投与量",
        "definition" : "ワクチン製剤が接種された量",
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
        "id" : "Immunization.performer",
        "path" : "Immunization.performer",
        "short" : "ワクチン接種を実施した人",
        "definition" : "誰が予防接種を実施したかを表す。"
      },
      {
        "id" : "Immunization.performer.actor",
        "path" : "Immunization.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
            ]
          }
        ]
      },
      {
        "id" : "Immunization.note",
        "path" : "Immunization.note",
        "short" : "予防接種についての補足的記録",
        "definition" : "他の属性で伝達することができない予防接種に関する他の記録。"
      },
      {
        "id" : "Immunization.reasonCode",
        "path" : "Immunization.reasonCode",
        "short" : "予防接種を接種した理由",
        "definition" : "予防接種が行われた理由"
      },
      {
        "id" : "Immunization.reasonReference",
        "path" : "Immunization.reasonReference",
        "short" : "予防接種を実施した理由",
        "definition" : "予防接種が実施された理由を表すCondition，ObservationあるいはDiagnosticReportリソースを参照する。"
      },
      {
        "id" : "Immunization.isSubpotent",
        "path" : "Immunization.isSubpotent",
        "short" : "効力量",
        "definition" : "量が通常の効力より弱いと考えられているかどうかを示す。デフォルトでは示されている量と同等の効力をもつと考えられている。"
      },
      {
        "id" : "Immunization.subpotentReason",
        "path" : "Immunization.subpotentReason",
        "short" : "効力が減弱する理由",
        "definition" : "効力が減弱すると考えられている理由。"
      },
      {
        "id" : "Immunization.education",
        "path" : "Immunization.education",
        "short" : "患者に提示された教材",
        "definition" : "ワクチンを接種するときに患者（あるいは保護者）に提示された教材。"
      },
      {
        "id" : "Immunization.programEligibility",
        "path" : "Immunization.programEligibility",
        "short" : "ワクチン接種計画での患者適格性",
        "definition" : "ワクチン接種計画での患者適格性を示す"
      },
      {
        "id" : "Immunization.fundingSource",
        "path" : "Immunization.fundingSource",
        "short" : "ワクチン接種計画の資金源",
        "definition" : "ワクチンが実際に接種されるときの資金源を示す。これは患者適格性（たとえば，公的に購入されたワクチンには適格性があるが，在庫の問題で私的資金で購入されたワクチンを投与するような場合）とは異なることがある。"
      },
      {
        "id" : "Immunization.reaction",
        "path" : "Immunization.reaction",
        "short" : "予防接種後に起こった反応についての詳細な記録",
        "definition" : "予防接種に関連する時期に発生した副反応を示す分類されたデータ。"
      },
      {
        "id" : "Immunization.protocolApplied",
        "path" : "Immunization.protocolApplied",
        "short" : "提供者が実施したプロトコール",
        "definition" : "ワクチンを接種した提供者が実施したプロトコール（推奨される手順の集合）。"
      }
    ]
  }
}

```
