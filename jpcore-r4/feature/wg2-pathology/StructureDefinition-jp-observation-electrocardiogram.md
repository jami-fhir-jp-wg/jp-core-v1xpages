# JP Core Observation Electrocardiogram Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Electrocardiogram Profile**

## Resource Profile: JP Core Observation Electrocardiogram Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Electrocardiogram
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_Electrocardiogram
* **項目**: *Title*
  * **内容**: JP Core Observation Electrocardiogram Profile
* **項目**: *Status*
  * **内容**: Draft ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはObservationリソースに対して、心電図データを送受信するための共通の制約と拡張を定めたものである。 

本プロファイル説明は、患者に関連付けられた心電図検査結果を記録、検索、および取得のために、FHIR Observationリソースを使用するにあたっての、最低限の制約を記述したものである。

Observationリソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。

なお、本リソース単体で心電図検査結果を示すことができるが、DiagnosticReportリソースを使用してグループ化および要約してもよい。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定している。

* Patientリソースから指定された（患者の）心電図検査実施日、心電図検査情報の参照
* 心電図検査項目、心電図検査結果値に対し条件に合致する検体検査情報、または関連する他のリソース（Observationリソースや、Patientリソース等）の参照

## スコープ

本プロファイルでは各種心電図検査のベースとして用いられる標準12誘導心電図を表現することをスコープとして設計した。 運動、薬物などの各種負荷心電図検査や電気生理学的検査、ベクトル心電図やHis束心電図などの特殊心電図については現時点では対象としていないが、別途それらの情報を定義した上でこのProfileを参照して利用することはできる。

## プロファイル定義

**Usages:**

* Examples for this Profile: [Observation/jp-observation-electrocardiogram-example-1](Observation-jp-observation-electrocardiogram-example-1.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-electrocardiogram)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-electrocardiogram.csv), [Excel](StructureDefinition-jp-observation-electrocardiogram.xlsx), [Schematron](StructureDefinition-jp-observation-electrocardiogram.sch) 

### 必須要素

次のデータ項目はデータが存在しなければ ならない（必須）、あるいは、データが送信システムに存在する場合はサポートされなければならない（Must Support）要素である。

#### 必須

このプロファイルでは、次の要素を持たなければならない。

* status : 心電図検査の結果の状態を示すために必須である。
* category : JP Coreではcategoryを3層に分けている。このプロファイルでは第1層としてprocedureを割り当て、第2層として心電図検査であることを示し、第3層で心電図検査の分類を示している。第1層は必須であるが、第2層以下は任意とする
* code : この検査が心電図検査(LOINC: 11624-5, EKG Study)であることを示すため必須である。
* subject : この心電図検査の実施対象を示すために必須である。

#### MustSupport

このプロファイルではMust Supportの要素は存在しない。

### Extension定義

このプロファイルで定義した心電図検査結果を記録するために使用される拡張を以下に示す。

| | | | |
| :--- | :--- | :--- | :--- |
| 誘導の数 | 心電図検査を行った際に測定される誘導の数 | JP_Observation_Electrocardiogram_NumberOfLead | integer |
| 自動判定 | 自動判定の有無 | JP_Observation_Electrocardiogram_DeviceInterpertation | boolean |
| 測定時間 | 測定した時間の長さ | JP_Observation_Electrocardiogram_Duration | Duration, CodeableConcept |
| 負荷条件 | 負荷心電図の種類 | JP_Observation_Electrocardiogram_StressType | CodeableConcept |

### 用語定義

心電図検査の所見・解釈を示すコードはミネソタコードをベースとして、学会や検査機器ベンダー各社によって補足、追加されたコードが使用されている。以下に所見・解釈を示すコードの一覧を例として示す。

| | | |
| :--- | :--- | :--- |
| 所見 | ECAPS | urn:oid:1.2.392.200119.5.2.3.3.1 |
| 所見 | MINNESOTA1987_NK | urn:oid:1.2.392.200119.5.2.3.3.2.1 |
| 所見 | MINNESOTA2005_NK | urn:oid:1.2.392.200119.5.2.3.3.2.2 |
| 所見 | FKD_GRADE | urn:oid:1.2.392.200119.5.2.4.1.1.1 |
| 所見 | FKD_INTER | urn:oid:1.2.392.200119.5.2.4.1.1.2 |
| 所見 | MINESOTA_CODE | urn:oid:1.2.392.200119.5.2.4.1.1.3 |

## 利用方法

#### 12誘導心電図結果

プロファイル ：[JP Core Observation Electrocardiogram （心電図検査）プロファイル](StructureDefinition-jp-observation-electrocardiogram.md)
 URL : http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Electrocardiogram

カテゴリー 必須
 category.system = ["http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS"](https://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS.html)
 category.code = "procedure" 
 category.display = "Procedure" 

コード 必須 
 code.coding.system = "http://loinc.org"
 code.coding.code = "11524-6" 
 code.coding.display = "EKG study"

### OperationおよびSearch Parameter 一覧

#### Search Parameter一覧

| | | | |
| :--- | :--- | :--- | :--- |
| SHOULD | patient,category,code | reference,token,token,quantity | GET [base]/Observation?patient=123&category=procedure&code=http://loinc.org|11524-6 |
| SHOULD | patient,category,code,date | reference,token,token,quantity,date | GET [base]/Observation?patient=123&category=procedure&code=http://loinc.org|11524-6&date=le2020-12-31 |

#### 操作詳細

##### 必須検索パラメータ(SHALL)

必須の検索パラメータは設定しない。

##### 推奨検索パラメータ(SHOULD)

以下のパラメータで検索できることを推奨する。

1. patient, category, codeを指定して患者がうけた心電図検査の取得をサポートしていることがのぞましい。（**SHOULD**）

```
GET [base]/Observation?patient={reference}?category={token}&code={token}

```

例：

```
GET [base]/Observation?patient=123?category=http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS|procedure&code=http://loinc.org\|11524-6

```

リソースIDが123の患者が受けた心電図検査を取得する。
1. patient, category, code, dateを指定して患者がうけた心電図検査の取得をサポートしていることがのぞましい。（**SHOULD**）

```
GET [base]/Observation?patient={reference}?category={token}&code={token}

```

例：

```
GET [base]/Observation?patient=123&category=http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS|procedure&code=http://loinc.org\|11524-6&date=2024-10-31

```

リソースIDが123の患者が2024年10月31日に受けた心電図検査に該当するObservationリソースを検索する。

##### オプション検索パラメータ(MAY)

オプションとしての検索パラメータは現時点では設定しない。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-electrocardiogram",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Electrocardiogram",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_Electrocardiogram",
  "title" : "JP Core Observation Electrocardiogram Profile",
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
  "description" : "このプロファイルはObservationリソースに対して、心電図データを送受信するための共通の制約と拡張を定めたものである。",
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
  "type" : "Observation",
  "baseDefinition" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Common",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "short" : "心電図検査結果",
        "definition" : "心電図検査結果とその解釈。",
        "comment" : "心電図検査についてのプロファイル"
      },
      {
        "id" : "Observation.extension",
        "path" : "Observation.extension",
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
        "id" : "Observation.extension:lead",
        "path" : "Observation.extension",
        "sliceName" : "lead",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_NumberOfLead"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:deviceInterpretation",
        "path" : "Observation.extension",
        "sliceName" : "deviceInterpretation",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_DeviceInterpretation"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:duration",
        "path" : "Observation.extension",
        "sliceName" : "duration",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_Duration"
            ]
          }
        ]
      },
      {
        "id" : "Observation.extension:stressType",
        "path" : "Observation.extension",
        "sliceName" : "stressType",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_Electrocardiogram_StressType"
            ]
          }
        ]
      },
      {
        "id" : "Observation.identifier",
        "path" : "Observation.identifier",
        "short" : "この心電図を表すObservationリソースに対する一意な識別ID",
        "definition" : "この心電図を表すObservationリソースに対する一意な識別ID"
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "short" : "このObservationが実施されることになった検査オーダーや計画、提案に関する情報",
        "definition" : "このObservationが実施されることになった検査オーダーや計画、提案に関する情報"
      },
      {
        "id" : "Observation.category",
        "path" : "Observation.category",
        "short" : "Observationリソースに対する分類コード。心電図検査には通常 procedure が指定される。必要に応じてextraCategoryを仕様する",
        "definition" : "Observationリソースに対する分類コード。心電図検査には通常 procedure が指定される。必要に応じてextraCategoryを仕様する",
        "comment" : "心電図検査は通常 procedure に分類される。"
      },
      {
        "id" : "Observation.category:first",
        "path" : "Observation.category",
        "sliceName" : "first",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
              "code" : "procedure"
            }
          ]
        }
      },
      {
        "id" : "Observation.category:second",
        "path" : "Observation.category",
        "sliceName" : "second",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11524-6"
            }
          ]
        }
      },
      {
        "id" : "Observation.category:third",
        "path" : "Observation.category",
        "sliceName" : "third",
        "comment" : "心電図検査について、負荷試験などの条件をつけた分類",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationElectrocardiogramExtraCategory_CS"
            }
          ]
        },
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationElectrocardiogramExtraCategory_VS"
        }
      },
      {
        "id" : "Observation.category:third.coding.system",
        "path" : "Observation.category.coding.system",
        "patternUri" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ObservationElectrocardiogramExtraCategory_CS"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "心電図検査を示すコード",
        "definition" : "心電図検査を示すコード",
        "comment" : "心電図検査(LOINC: EKG Study)を示すLOINCコード 11524-6 を指定する。",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "11524-6",
              "display" : "EKG Study"
            }
          ]
        }
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "comment" : "この要素は1..1のcardinalityになるはずと考えられる。この要素が欠損値になる唯一の状況は、対象患者が不明な機器によって観察が行われるケースである。この場合、観察は何らかのコンテキスト・チャネル照合技術を介して患者に照合される必要があり、患者に照合されれば、その時点で本要素を更新する必要がある。"
      },
      {
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "comment" : "通常、心電図検査は対象（患者、または患者のグループ、場所、またはデバイス）について行われる。"
      },
      {
        "id" : "Observation.encounter",
        "path" : "Observation.encounter",
        "comment" : "通常、イベントが発生したEncounterであるが、一部のイベントは、Encounterの正式な完了の前または後に開始される場合があり、その場合でもEncounterのコンテキストに関連付けられている（例：入院時検査、術前検査）。"
      },
      {
        "id" : "Observation.effective[x]",
        "path" : "Observation.effective[x]",
        "comment" : "この観察結果が過去の報告でない限り、少なくとも日付が存在する必要がある。不正確または「あいまいな」時間を記録するには（たとえば、「発作時」に行われた心電図検査）、[Timing]（datatypes.html＃timing）データ型を使用して、測定を通常のライフイベントに関連付けることができる。"
      },
      {
        "id" : "Observation.issued",
        "path" : "Observation.issued",
        "short" : "このバージョンの心電図検査が医療者に提供された日時。通常、結果を確認し検証後に提供される日時",
        "definition" : "このバージョンの心電図検査が医療者に提供された日時。通常、結果を確認し検証後に提供される日時",
        "comment" : "通常は心電図検査が実施されて結果が出良くされたときの日時であり、後日解釈が付け加えられた場合にはlastUpdatで示される日時を置き換えても良い。"
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "short" : "この心電図検査の責任者/実施者に関する情報",
        "definition" : "この心電図検査の責任者/実施者に関する情報"
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "心電図の測定結果",
        "definition" : "心電図の測定結果",
        "comment" : "心電図検査は一つの測定値のみを用いられることはなく、一連の測定値を元にして所見を得て総合的に解釈される。単一の測定値としてのこの項目は空欄であることが前提であるが、送受信側の双方が合意して単一の測定値のみを送信するためにこのリソースを仕様することも許容される。"
      },
      {
        "id" : "Observation.interpretation",
        "path" : "Observation.interpretation",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "心電図所見",
        "definition" : "心電図所見",
        "comment" : "心電図所見・解釈について記載する。心電図所見は測定された結果と1対1で対応するものではなく、総合的に判断されるものである。したがって所見や解釈はこのエレメントに列記することとした。所見については、ミネソタコードを元に学会や検査機器ベンダーが用語集を作成している。必要に応じてそれらのコードを仕様することを推奨する。",
        "requirements" : "心電図所見についてのコード集を別途提示する。"
      },
      {
        "id" : "Observation.interpretation:ECAPS",
        "path" : "Observation.interpretation",
        "sliceName" : "ECAPS",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.3.3.1"
            }
          ]
        }
      },
      {
        "id" : "Observation.interpretation:ECAPS.coding.system",
        "path" : "Observation.interpretation.coding.system",
        "short" : "ECAPS:日本光電解析コード",
        "definition" : "ECAPS:日本光電解析コード"
      },
      {
        "id" : "Observation.interpretation:MINNESOTA1987_NK",
        "path" : "Observation.interpretation",
        "sliceName" : "MINNESOTA1987_NK",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.3.3.2.1"
            }
          ]
        }
      },
      {
        "id" : "Observation.interpretation:MINNESOTA1987_NK.coding.system",
        "path" : "Observation.interpretation.coding.system",
        "short" : "日本光電解析ロジックによるミネソタコード1987年版をベースとした分類",
        "definition" : "日本光電解析ロジックによるミネソタコード1987年版をベースとした分類"
      },
      {
        "id" : "Observation.interpretation:MINNESOTA2005_NK",
        "path" : "Observation.interpretation",
        "sliceName" : "MINNESOTA2005_NK",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.3.3.2.2"
            }
          ]
        }
      },
      {
        "id" : "Observation.interpretation:MINNESOTA2005_NK.coding.system",
        "path" : "Observation.interpretation.coding.system",
        "short" : "日本光電解析ロジックによるミネソタコード2005年版をベースとした分類",
        "definition" : "日本光電解析ロジックによるミネソタコード2005年版をベースとした分類"
      },
      {
        "id" : "Observation.interpretation:FKD_GRADE",
        "path" : "Observation.interpretation",
        "sliceName" : "FKD_GRADE",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.4.1.1.1"
            }
          ]
        }
      },
      {
        "id" : "Observation.interpretation:FKD_GRADE.coding.system",
        "path" : "Observation.interpretation.coding.system",
        "short" : "フクダ電子判定コード",
        "definition" : "フクダ電子判定コード"
      },
      {
        "id" : "Observation.interpretation:FKD_INTER",
        "path" : "Observation.interpretation",
        "sliceName" : "FKD_INTER",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.4.1.1.2"
            }
          ]
        }
      },
      {
        "id" : "Observation.interpretation:FKD_INTER.coding.system",
        "path" : "Observation.interpretation.coding.system",
        "short" : "フクダ電子所見コード",
        "definition" : "フクダ電子所見コード"
      },
      {
        "id" : "Observation.interpretation:MINESOTA_CODE",
        "path" : "Observation.interpretation",
        "sliceName" : "MINESOTA_CODE",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.4.1.1.3"
            }
          ]
        }
      },
      {
        "id" : "Observation.interpretation:MINESOTA_CODE.coding.system",
        "path" : "Observation.interpretation.coding.system",
        "short" : "フクダ電子：ミネソタコードと異常部位を記載",
        "definition" : "フクダ電子：ミネソタコードと異常部位を記載"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "short" : "この心電図検査の実施方法",
        "definition" : "この心電図検査の実施方法"
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "short" : "心電図検査では通常用いられない",
        "definition" : "心電図検査では通常用いられない",
        "comment" : "心電図検査では通常用いられないが、被験者である患者の状態を示すために使っても良い。"
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "short" : "この心電図検査を実施した計測機器に対する情報",
        "definition" : "この心電図検査を実施した計測機器に対する情報",
        "comment" : "これは、心電図検査を計測し記録するために使用された機器に関する情報であり、結果の送信に関与するデバイス（ゲートウェイなど）を表すことを意図したものではない。そのようなデバイスは、必要に応じてProvenanceリソースを使用して文書化する。"
      },
      {
        "id" : "Observation.referenceRange",
        "path" : "Observation.referenceRange",
        "short" : "心電図検査の基準範囲は個々の検査値によって異なるために基準範囲との比較による結果の解釈方法のガイダンス",
        "definition" : "心電図検査の基準範囲は個々の検査値によって異なるために基準範囲との比較による結果の解釈方法のガイダンス"
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "comment" : "この要素を使用する場合、observationには通常、値または関連するリソースのセットのいじれかを含む。その両方を含む場合もある。複数のobservationをグループに一緒にまとめる方法については、以下の[メモ]（observation.html＃obsgrouping）を参照せよ。システムは、[QuestionnaireResponse]（questionnaireresponse.html）からの結果を計算して最終スコアにし、そのスコアをobservationとして表す場合があることに注意。"
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "short" : "この心電図検査を表す波形データを示すImagingStudyリソース",
        "definition" : "この心電図検査を表す波形データを示すImagingStudyリソース"
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "short" : "この心電図検査で測定された一連の結果。",
        "definition" : "この心電図検査で測定された一連の結果。",
        "comment" : "心電図に関する一連の測定結果をまとめるためにコンポーネントを使用する。",
        "requirements" : "この心電図検査で行われる一連の測定値をまとめるものであり、負荷心電図など複数の心電図検査を一連の検査として行った場合は別Observationインスタンスとして記録される。"
      },
      {
        "id" : "Observation.component.code",
        "path" : "Observation.component.code",
        "comment" : "心電図の各検査項目についてはLOINCなどの特定の用語集を利用することが推奨される。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_ObservationElectrocardiogramComponentCode_VS"
        }
      },
      {
        "id" : "Observation.component.interpretation",
        "path" : "Observation.component.interpretation",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "pattern",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "definition" : "心電図検査で測定された結果値に対する所見・解釈",
        "comment" : "心電図検査の測定結果と解釈は必ずしも1対1で対応しないが、PR間隔の測定値にPR間隔延長などの固有の所見をつけてもよい"
      },
      {
        "id" : "Observation.component.interpretation:ECAPS",
        "path" : "Observation.component.interpretation",
        "sliceName" : "ECAPS",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.3.3.1"
            }
          ]
        }
      },
      {
        "id" : "Observation.component.interpretation:ECAPS.coding.system",
        "path" : "Observation.component.interpretation.coding.system",
        "short" : "ECAPS:日本光電解析コード",
        "definition" : "ECAPS:日本光電解析コード"
      },
      {
        "id" : "Observation.component.interpretation:MINNESOTA1987_NK",
        "path" : "Observation.component.interpretation",
        "sliceName" : "MINNESOTA1987_NK",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.3.3.2.1"
            }
          ]
        }
      },
      {
        "id" : "Observation.component.interpretation:MINNESOTA1987_NK.coding.system",
        "path" : "Observation.component.interpretation.coding.system",
        "short" : "日本光電解析ロジックによるミネソタコード1987年版をベースとした分類",
        "definition" : "日本光電解析ロジックによるミネソタコード1987年版をベースとした分類"
      },
      {
        "id" : "Observation.component.interpretation:MINNESOTA2005_NK",
        "path" : "Observation.component.interpretation",
        "sliceName" : "MINNESOTA2005_NK",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.3.3.2.2"
            }
          ]
        }
      },
      {
        "id" : "Observation.component.interpretation:MINNESOTA2005_NK.coding.system",
        "path" : "Observation.component.interpretation.coding.system",
        "short" : "日本光電解析ロジックによるミネソタコード2005年版をベースとした分類",
        "definition" : "日本光電解析ロジックによるミネソタコード2005年版をベースとした分類"
      },
      {
        "id" : "Observation.component.interpretation:FKD_GRADE",
        "path" : "Observation.component.interpretation",
        "sliceName" : "FKD_GRADE",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.4.1.1.1"
            }
          ]
        }
      },
      {
        "id" : "Observation.component.interpretation:FKD_GRADE.coding.system",
        "path" : "Observation.component.interpretation.coding.system",
        "short" : "フクダ電子判定コード",
        "definition" : "フクダ電子判定コード"
      },
      {
        "id" : "Observation.component.interpretation:FKD_INTER",
        "path" : "Observation.component.interpretation",
        "sliceName" : "FKD_INTER",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.4.1.1.2"
            }
          ]
        }
      },
      {
        "id" : "Observation.component.interpretation:FKD_INTER.coding.system",
        "path" : "Observation.component.interpretation.coding.system",
        "short" : "フクダ電子所見コード",
        "definition" : "フクダ電子所見コード"
      },
      {
        "id" : "Observation.component.interpretation:MINESOTA_CODE",
        "path" : "Observation.component.interpretation",
        "sliceName" : "MINESOTA_CODE",
        "min" : 0,
        "max" : "1",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "urn:oid:1.2.392.200119.5.2.4.1.1.3"
            }
          ]
        }
      },
      {
        "id" : "Observation.component.interpretation:MINESOTA_CODE.coding.system",
        "path" : "Observation.component.interpretation.coding.system",
        "short" : "フクダ電子：ミネソタコードと異常部位を記載",
        "definition" : "フクダ電子：ミネソタコードと異常部位を記載"
      }
    ]
  }
}

```
