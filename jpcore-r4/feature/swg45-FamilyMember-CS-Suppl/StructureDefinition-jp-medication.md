# JP Core Medication Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Profile**

## Resource Profile: JP Core Medication Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Medication
* **項目**: *Title*
  * **内容**: JP Core Medication Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このプロファイルはMedicationリソースに対して、主に薬剤データを送受信するための基礎となる制約と拡張を定めたものである。 

本プロファイルは薬剤のリストを表現する。注射ではしばしば複数の薬剤が混注して用いられ、不可分であることからMedicationリソースを利用して処方を表現することとした。

主に注射薬剤処方の一部としてJP_MedicationRequest_Injection, JP_MedicationDispense_Injection, JP_MedicationAdministration_Injectionプロファイルに組み込んで利用される。薬剤リストに使用する用語集は諸外国と日本では異なっており、日本国内で規格を運用するためにExtensionの追加や用語集の追加・変更を行った。現在、日本での注射関連規格として利用されているJAHIS 注射データ交換規約 Ver 2.1CおよびSS-MIX2 Ver.1.2hを参考にした。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* 電子カルテから特定の患者で使用された注射オーダに含まれる薬剤情報を構成する
* 退院時サマリや診療情報提供書において注射の投薬情報の一部として記述する
* 各種検査レポートや診断レポートにおいて注射の投薬情報の一部として記述する
* SS-MIX2のOMP-02(注射オーダ)メッセージやJAHIS注射データ交換規約に準拠した注射オーダメッセージの一部としてJSONに変換する

## スコープ

### 対象

本プロファイルの対象は注射、注入で使われる薬剤リストを電子的に連携するためのメッセージを記述することである。

### 対象としないこと

本プロファイルは注射、注入の薬剤で使用される薬剤リストに関するものであり、内服、外用の薬剤については対象としない。

また、このリソースは単独で用いられることはない。

## プロファイル定義

**Usages:**

* Refer to this Profile: [JP Core MedicationAdministration Injection Profile](StructureDefinition-jp-medicationadministration-injection.md), [JP Core MedicationDispense Injection Profile](StructureDefinition-jp-medicationdispense-injection.md), [JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md), [JP Core MedicationStatement Injection Profile](StructureDefinition-jp-medicationstatement-injection.md) and [JP Core Procedure Profile](StructureDefinition-jp-procedure.md)
* Examples for this Profile: [Medication/jp-medication-example-1](Medication-jp-medication-example-1.md) and [Medication/jp-medication-example-2](Medication-jp-medication-example-2.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medication)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medication.csv), [Excel](StructureDefinition-jp-medication.xlsx), [Schematron](StructureDefinition-jp-medication.sch) 

### 必須要素

次のデータ項目は必須である。

Medication リソースは、次の要素を持たなければならない。

* status : ステータスは必須である
* ingredient.itemCodeableConcept : 医薬品の識別情報であり、JP Coreでは必須である
* ingredient.strength : 医薬品の投与量であり、JP Coreでは必須である

Medicationリソースでは、次の要素をサポートしなければならない。

* ingredient.itemCodeableConcept : 医薬品の識別情報
* ingredient.strength : 医薬品の投与量

### Extensions定義

Medication リソースで使用される拡張は次の通りである。

| | | | |
| :--- | :--- | :--- | :--- |
| RP内薬剤番号 | RP内の薬剤の連番を格納する拡張 | [JP_Medication_Ingredient_DrugNo](StructureDefinition-jp-medication-ingredient-drugno.md) | integer |
| 力価区分 | 投与量が製剤単位か成分単位かを格納する拡張 | [JP_Medication_IngredientStrength_StrengthType](StructureDefinition-jp-medication-ingredientstrength-strengthtype.md) | CodeableConcept |

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
| 薬品単位 | MERIT-9(単位） | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code |
| 力価区分 | 処方情報 HL7FHIR 記述仕様(力価区分) | http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthType |

### 項目の追加

日本国内の電子カルテシステムでの注射オーダの運用に合わせ、以下の項目を追加した。

* 薬剤番号（拡張「JP_MedicationDrugNo」を使用）
* ⼒価区分の追加（拡張「JP_MedicationStrengthType」を使用）

## 利用方法

Medication リソースは単体として用いられないため、検索などはMedicationRequest_Injectionなどの一部として行われる。

### サンプル

注射関係のMedicationRequest_Injection、MedicationDispense_Injection、MedicationAdministration_Injectionリソースから参照されるサンプルを示す。

* [**ホリゾン注射液１０ｍｇ**](Medication-jp-medication-example-1.md)
* [**ソリタ－＋アドナ注**](Medication-jp-medication-example-2.md)

### 各種コメントの記述方法

Medicationリソースを参照する上位のリソースに記述される。

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
  "id" : "jp-medication",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication",
  "version" : "1.3.0-dev",
  "name" : "JP_Medication",
  "title" : "JP Core Medication Profile",
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
  "description" : "このプロファイルはMedicationリソースに対して、主に薬剤データを送受信するための基礎となる制約と拡張を定めたものである。",
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
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication",
        "short" : "Medication Resourceの定義",
        "definition" : "This resource is primarily used for the identification and definition of a medication for the purposes of prescribing, dispensing, and administering a medication as well as for making statements about medication use.  \nこのResourceは薬剤を処方し、払い出し（調剤）、その投与を定義し、IDを付与するためにまず利用され、薬剤の使用状態を示すためにも使われる。"
      },
      {
        "id" : "Medication.id",
        "path" : "Medication.id",
        "short" : "このアーチファクトに対する論理ID",
        "definition" : "リソースに対するURLとして使われるリソースの論理ID。この値は一度割り当てられたら変更されることはない。",
        "comment" : "ResourceにIDがない時期は、create操作のためにサーバにResourceが送信されている時期だけである。"
      },
      {
        "id" : "Medication.identifier",
        "path" : "Medication.identifier",
        "short" : "この薬剤に関する業務用のID",
        "definition" : "この薬剤に関する業務用のID",
        "comment" : "IDとしてシリアルナンバーを使うこともできる。"
      },
      {
        "id" : "Medication.code",
        "path" : "Medication.code",
        "short" : "この薬剤を特定するコード",
        "definition" : "A code (or set of codes) that specify this medication, or a textual description if no code is available. Usage note: This could be a standard medication code such as a code from RxNorm, SNOMED CT, IDMP etc. It could also be a national or local formulary code, optionally with translations to other code systems.  \nこの薬剤を指定するコード。該当するコードがない場合はテキスト表記。  \n使用法について注記：日本ではHOTコードを利用することが推奨される。一般的な薬剤コードとしてRxNorm、SNOMD CT, IDMPなど標準的な医薬品コードを使うことができる。国や地域に特有のローカルコードも使うことができ、他のコードに変換することもできる。",
        "comment" : "使われるコンテキストによるが、ユーザ(処方や調剤などを行った人）によって実際にコードが選択されたのであれば、coding.userSelectedはtrueとすることとなる。Codingのデータ型で説明されているように、「ユーザインターフェース（たとえば、選択肢から特定の項目をユーザが選択するような形式）で特定のコードをユーザが選択したのであれば、\"userSelected\"に記録されてもよい」  \nユーザが選択したコードがあれば、その選択がコード変換などで優先される。そのほかのコードは代替のコードシステムか低粒度のコード（たとえば、ベンダー固有の初期値のための一般的なコード）に文字列変換変換するしかない。",
        "binding" : {
          "strength" : "preferred",
          "description" : "薬品の種類を規定するコード化された概念",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationCode_VS"
        }
      },
      {
        "id" : "Medication.status",
        "path" : "Medication.status",
        "definition" : "薬剤が有効に使われているかどうかを指定するコード。",
        "comment" : "このステータスは薬剤がローカルにあるシステム内で薬剤データベースや棚卸表で有効とされているかどうかを識別するためのものである。たとえば、薬剤システムで「ABC病院特製クリーム」といった製剤のために新しい薬剤ファイルを作成されるような場合もある。未来のある時点では、薬剤記録を作成した時にエラーが発生し、ステータスが「entered-in-error」に変化することもありうる。このステータスは薬剤が特定の処方集に記載されているかどうかを指定するためのものではない。薬剤記録が複数の処方集やカタログを参照することも可能であり、それぞれの記録が異なるステータスを持つこともある。",
        "min" : 1,
        "isModifierReason" : "このエレメントはすべての属性の解釈によって変化する。"
      },
      {
        "id" : "Medication.manufacturer",
        "path" : "Medication.manufacturer",
        "short" : "製品の製造者",
        "definition" : "Describes the details of the manufacturer of the medication product.  This is not intended to represent the distributor of a medication product.  \n医薬品の製造元の詳細を説明する。これは、医薬品の販売業者を表すことを意図したものではない。",
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
        "id" : "Medication.form",
        "path" : "Medication.form",
        "short" : "TAB | CAP | PWD | SYR | SUP | LQD | OIT | CRM | TPE | INJ +",
        "definition" : "TAB | CAP | PWD | SYR | SUP | LQD | OIT | CRM | TPE | INJ + 製品の剤型についての説明。散剤、ドライシロップ(PWD)、錠剤(TAB)、カプセル(CAP)など。",
        "comment" : "もし、Medication ResourceがMedicationRequest Resourceから参照された場合は、これはオーダされた剤型である。Medication ResourceがMedicationDispense Resourceから参照された場合は、払い出された剤型である。MedicationAdministration ResourceからMedication Resourceが参照されていれば、投与された剤型である。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationFormMERIT9_VS"
        }
      },
      {
        "id" : "Medication.amount",
        "path" : "Medication.amount",
        "short" : "パッケージ中の薬剤の量",
        "definition" : "パッケージされた製品に含まれる薬剤固有の量。たとえば、同じ力価の製品を指定すれば（たとえば、インスリングラルギン10単位/mL注射液）、この値はパッケージ内での薬剤量（たとえば、3mL, 10mLなど）を明示することになる。",
        "comment" : "比率（Ratio)を表すデータ型は、量(Quantity)と共通単位を使って適切に表現できないときのみに使われるべきである。分母が\"1\"に固定されているとわかっているような場合は、量(Quantity)を比率(Ratio)の代わりに使うべきである。",
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_Amount"
            ]
          }
        ]
      },
      {
        "id" : "Medication.ingredient",
        "path" : "Medication.ingredient",
        "short" : "薬効がある、あるいは薬効を伴わない成分",
        "definition" : "この薬剤を構成する特定の重要成分を識別する",
        "comment" : "すべての成分を含む必要はない。もし、ある成分が記載されていなくてもその成分が含有されているかどうかを必ずしも意味しない。特定の成分が記載されていても、すべての成分が記載されていると言うことを意味しない。有効成分であるか、有効成分ではないかを指定することは可能である。"
      },
      {
        "id" : "Medication.ingredient.extension",
        "path" : "Medication.ingredient.extension",
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
        "id" : "Medication.ingredient.extension:drugNo",
        "path" : "Medication.ingredient.extension",
        "sliceName" : "drugNo",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_Ingredient_DrugNo"
            ]
          }
        ]
      },
      {
        "id" : "Medication.ingredient.item[x]",
        "path" : "Medication.ingredient.item[x]",
        "short" : "有効な成分あるいは含有物",
        "definition" : "有効成分。物質(単純成分）あるいは他の薬剤や処方。",
        "comment" : "すべての用語集はこの一般的な様式を満たさない。場合によっては、情報モデルとしてCodeableConceptや直接Codingを使うべきではなく、テキストやコード、翻訳や事前条件と事後条件でのエレメントの関係などを示すことも適切ではない。",
        "requirements" : "成分は物質（たとえば、アモキシシリン）や、他の薬剤（たとえば、Glaxal Baseなどの合成製品）を参照されることもある。",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Medication.ingredient.isActive",
        "path" : "Medication.ingredient.isActive",
        "short" : "有効成分の指標",
        "definition" : "この成分が薬剤の治療効果に影響するかどうかの指標  \nIndication of whether this ingredient affects the therapeutic action of the drug.",
        "requirements" : "Trueであれば、この成分が薬剤の治療効果に影響がある（たとえば有効）ということを示す。  \nFalseであれば、この成分が薬剤の治療効果に影響がない（たとえば無効）ということを示す。"
      },
      {
        "id" : "Medication.ingredient.strength",
        "path" : "Medication.ingredient.strength",
        "short" : "成分の活性量",
        "definition" : "この薬剤中にどの程度の物質が含まれているかを示す。たとえば、1錠あたり250mgなど。これは分子が250mgで分母が1錠である比率を表現している。",
        "comment" : "1回に使用される薬剤量を示すため、denominatorは1回に固定される。",
        "min" : 1,
        "type" : [
          {
            "code" : "Ratio",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRatio_Amount"
            ]
          }
        ]
      },
      {
        "id" : "Medication.ingredient.strength.extension:strengthType",
        "path" : "Medication.ingredient.strength.extension",
        "sliceName" : "strengthType",
        "definition" : "投与量が製剤単位か成分単位かを格納する拡張",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_IngredientStrength_StrengthType"
            ]
          }
        ]
      },
      {
        "id" : "Medication.ingredient.strength.denominator",
        "path" : "Medication.ingredient.strength.denominator",
        "patternQuantity" : {
          "value" : 1,
          "unit" : "回",
          "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
          "code" : "TIME"
        }
      },
      {
        "id" : "Medication.batch",
        "path" : "Medication.batch",
        "short" : "分包された薬剤についての詳細な解説",
        "definition" : "薬剤のパッケージ（薬品そのものではない）についての情報。"
      },
      {
        "id" : "Medication.batch.lotNumber",
        "path" : "Medication.batch.lotNumber",
        "short" : "バッチのID",
        "definition" : "特定の薬品を含むバッチに割り当てられたロット番号",
        "comment" : "FHIRの文字列は1MBを超えるサイズであってはならない(SHALL NOT)。"
      },
      {
        "id" : "Medication.batch.expirationDate",
        "path" : "Medication.batch.expirationDate",
        "short" : "このバッチの期限が切れるとき",
        "definition" : "この特定のバッチの薬剤の期限が切れるとき"
      }
    ]
  }
}

```
