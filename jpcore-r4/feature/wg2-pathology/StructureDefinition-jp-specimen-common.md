# JP_Specimen_Common - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP_Specimen_Common**

## Resource Profile: JP_Specimen_Common 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Common
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Specimen_Common
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはSpecimenリソースに対して、患者のデータを送受信するための基礎となる制約と拡張を定めたものである。 

サンプルは分析に用いられる。

### 範囲と使用法

いずれの材料サンプルも以下の通り:

* 生物学的物質から採取されたもの（生材料、死滅した材料に関わらず）
* 実在する物質または環境から採取されたもの

検査材料は細胞分子、細胞、組織、器官、体液、胚、および体排泄物を含む（これらに限定されない）１つ以上の成分を含みうる物質である。 (出典: [NCI Thesaurus](http://ncit.nci.nih.gov/)より、一部修正。)

検査材料は診断および環境試験を行うための物質を有する。検査材料の収集方法、保管方法、処理方法はどこから取得した検査材料かと同じく重要な論点である。これは他の局面との相関性はなく物質がただ用いられるのとは異なる。

### 背景と状況

現在の検査材料リソースは容器に関して基礎的な情報のみを有する。再帰的な性質の容器や（親容器から分注した？）容器の追跡情報は有していない（例：冷蔵庫内のラック内のトレイ）。一般的な検査、バイオバンク、その他、これらの要素が追跡される頻度は使用状況によって異なる。このリソースに関する査読者からのコメントと、追跡に関してどのような属性を扱う必要があるかのコメントを歓迎する。

### このリソースに対する参照

* リソースに対する参照： [DiagnosticReport](https://www.hl7.org/fhir/R4/diagnosticreport.html#DiagnosticReport), [GenomicStudy](https://www.hl7.org/fhir/R4/genomicstudy.html#GenomicStudy), [Group](https://www.hl7.org/fhir/R4/group.html#Group), [ImagingSelection](https://www.hl7.org/fhir/R4/imagingselection.html#ImagingSelection), [ImagingStudy](https://www.hl7.org/fhir/R4/imagingstudy.html#ImagingStudy), [MolecularSequence](https://www.hl7.org/fhir/R4/molecularsequence.html#MolecularSequence), [Observation](https://www.hl7.org/fhir/R4/observation.html#Observation), [Procedure](https://www.hl7.org/fhir/R4/procedure.html#Procedure), [ResearchSubject](https://www.hl7.org/fhir/researchsubject.html#ResearchSubject), [ServiceRequest](https://www.hl7.org/fhir/R4/servicerequest.html#ServiceRequest) そしてSpecimen自身。

**Usages:**

* Derived from this Profile: [JP Core Specimen Pathology Profile](StructureDefinition-jp-specimen-pathology.md)
* Refer to this Profile: [JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md) and [JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)
* Examples for this Profile: [Specimen/jp-specimen-example-1](Specimen-jp-specimen-example-1.md), [Specimen/jp-specimen-example-2](Specimen-jp-specimen-example-2.md) and [Specimen/jp-specimen-example-3](Specimen-jp-specimen-example-3.md)
* CapabilityStatements using this Profile: [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) and [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-specimen-common)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-specimen-common.csv), [Excel](StructureDefinition-jp-specimen-common.xlsx), [Schematron](StructureDefinition-jp-specimen-common.sch) 

### Extension定義

このプロファイルでは拡張定義は行っていない。

## その他

### バージョンによる注意点

JP_SpecimenはFHIR US Core R4を基本としている。FHIR US Core R5ではContainerの構造が変わるため、将来 JP Coreの基本となるUS Coreバージョンが変った際は注意が必要である。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-specimen-common",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Common",
  "version" : "1.3.0-dev",
  "name" : "JP_Specimen_Common",
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
  "description" : "このプロファイルはSpecimenリソースに対して、患者のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
  "type" : "Specimen",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Specimen",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Specimen",
        "path" : "Specimen",
        "short" : "検査のための材料",
        "definition" : "患者に対して、または患者のために実行されているか実行されたアクション。これは、手術のような身体的介入、または長期サービス、カウンセリング、催眠療法のような低侵襲性である可能性がある。"
      },
      {
        "id" : "Specimen.id",
        "path" : "Specimen.id",
        "short" : "論理ID"
      },
      {
        "id" : "Specimen.meta",
        "path" : "Specimen.meta",
        "short" : "リソースに関するメタデータ"
      },
      {
        "id" : "Specimen.meta.lastUpdated",
        "path" : "Specimen.meta.lastUpdated",
        "mustSupport" : true
      },
      {
        "id" : "Specimen.implicitRules",
        "path" : "Specimen.implicitRules",
        "short" : "このコンテンツが作成されたセット"
      },
      {
        "id" : "Specimen.language",
        "path" : "Specimen.language",
        "short" : "リソースコンテンツの言語",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet",
              "valueCanonical" : "http://hl7.org/fhir/ValueSet/all-languages"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "Language"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean" : true
            }
          ],
          "strength" : "preferred",
          "description" : "人間の言語",
          "valueSet" : "http://hl7.org/fhir/ValueSet/languages"
        }
      },
      {
        "id" : "Specimen.text",
        "path" : "Specimen.text",
        "short" : "このリソースを人間が解釈するためのテキスト要約"
      },
      {
        "id" : "Specimen.contained",
        "path" : "Specimen.contained",
        "short" : "インラインリソース含む"
      },
      {
        "id" : "Specimen.extension",
        "path" : "Specimen.extension",
        "short" : "実装で定義された追加コンテンツ"
      },
      {
        "id" : "Specimen.modifierExtension",
        "path" : "Specimen.modifierExtension",
        "short" : "無視できない拡張機能"
      },
      {
        "id" : "Specimen.identifier",
        "path" : "Specimen.identifier",
        "short" : "外部識別子"
      },
      {
        "id" : "Specimen.accessionIdentifier",
        "path" : "Specimen.accessionIdentifier",
        "short" : "検査部門で採番された識別子"
      },
      {
        "id" : "Specimen.status",
        "path" : "Specimen.status",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SpecimenStatus"
            }
          ],
          "strength" : "required",
          "description" : "標本のステータス/可用性を提供するコード",
          "valueSet" : "http://hl7.org/fhir/ValueSet/specimen-status|4.0.1"
        }
      },
      {
        "id" : "Specimen.type",
        "path" : "Specimen.type",
        "short" : "検査材料の種類",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SpecimenType"
            }
          ],
          "strength" : "example",
          "description" : "標本のタイプ",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0487"
        }
      },
      {
        "id" : "Specimen.subject",
        "path" : "Specimen.subject",
        "short" : "検体の由来（患者からの、環境試験であれば場所、物質や装置から、等）"
      },
      {
        "id" : "Specimen.receivedTime",
        "path" : "Specimen.receivedTime",
        "short" : "検体を受領した。または処理を開始した日時"
      },
      {
        "id" : "Specimen.parent",
        "path" : "Specimen.parent",
        "short" : "親検体"
      },
      {
        "id" : "Specimen.request",
        "path" : "Specimen.request",
        "short" : "検体を採取した理由"
      },
      {
        "id" : "Specimen.collection",
        "path" : "Specimen.collection",
        "short" : "採取の詳細"
      },
      {
        "id" : "Specimen.collection.id",
        "path" : "Specimen.collection.id",
        "short" : "論理ID"
      },
      {
        "id" : "Specimen.collection.extension",
        "path" : "Specimen.collection.extension",
        "short" : "実装によって定義される追加コンテンツ"
      },
      {
        "id" : "Specimen.collection.modifierExtension",
        "path" : "Specimen.collection.modifierExtension",
        "short" : "無視されてはいけない拡張"
      },
      {
        "id" : "Specimen.collection.collector",
        "path" : "Specimen.collection.collector",
        "short" : "検体採取者"
      },
      {
        "id" : "Specimen.collection.collected[x]",
        "path" : "Specimen.collection.collected[x]",
        "short" : "検体採取日時（日時あるいは期間のどちらか）"
      },
      {
        "id" : "Specimen.collection.duration",
        "path" : "Specimen.collection.duration",
        "short" : "検体採取に要した期間"
      },
      {
        "id" : "Specimen.collection.quantity",
        "path" : "Specimen.collection.quantity",
        "short" : "検体採取量"
      },
      {
        "id" : "Specimen.collection.method",
        "path" : "Specimen.collection.method",
        "short" : "検体採取方法",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SpecimenCollectionMethod"
            }
          ],
          "strength" : "example",
          "description" : "採取方法",
          "valueSet" : "http://hl7.org/fhir/ValueSet/specimen-collection-method"
        }
      },
      {
        "id" : "Specimen.collection.bodySite",
        "path" : "Specimen.collection.bodySite",
        "short" : "採取部位",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "BodySite"
            }
          ],
          "strength" : "example",
          "description" : "採取部位",
          "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
        }
      },
      {
        "id" : "Specimen.collection.fastingStatus[x]",
        "path" : "Specimen.collection.fastingStatus[x]",
        "short" : "患者が飲食を控えたかどうか、あるいはどれくらいの期間飲食を控えたか。のどちらか",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "FastingStatus"
            }
          ],
          "strength" : "extensible",
          "description" : "患者の絶食状況",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0916"
        }
      },
      {
        "id" : "Specimen.processing",
        "path" : "Specimen.processing",
        "short" : "検体の処理と詳細"
      },
      {
        "id" : "Specimen.processing.id",
        "path" : "Specimen.processing.id",
        "short" : "論理ID"
      },
      {
        "id" : "Specimen.processing.extension",
        "path" : "Specimen.processing.extension",
        "short" : "実装によって定義される追加コンテンツ"
      },
      {
        "id" : "Specimen.processing.modifierExtension",
        "path" : "Specimen.processing.modifierExtension",
        "short" : "無視されてはいけない拡張"
      },
      {
        "id" : "Specimen.processing.description",
        "path" : "Specimen.processing.description",
        "short" : "手順のテキストによる説明"
      },
      {
        "id" : "Specimen.processing.procedure",
        "path" : "Specimen.processing.procedure",
        "short" : "検体に適用される処理",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SpecimenProcessingProcedure"
            }
          ],
          "strength" : "example",
          "description" : "材料に対する処理",
          "valueSet" : "http://hl7.org/fhir/ValueSet/specimen-processing-procedure"
        }
      },
      {
        "id" : "Specimen.processing.additive",
        "path" : "Specimen.processing.additive",
        "short" : "処理に使用される材料"
      },
      {
        "id" : "Specimen.processing.time[x]",
        "path" : "Specimen.processing.time[x]",
        "short" : "検体を処理した日時あるいは期間のうちどちらか"
      },
      {
        "id" : "Specimen.container",
        "path" : "Specimen.container",
        "short" : "採取容器(採取管/スライドなど)"
      },
      {
        "id" : "Specimen.container.id",
        "path" : "Specimen.container.id",
        "short" : "論理ID"
      },
      {
        "id" : "Specimen.container.extension",
        "path" : "Specimen.container.extension",
        "short" : "実装によって定義される追加コンテンツ"
      },
      {
        "id" : "Specimen.container.modifierExtension",
        "path" : "Specimen.container.modifierExtension",
        "short" : "無視されてはいけない拡張"
      },
      {
        "id" : "Specimen.container.identifier",
        "path" : "Specimen.container.identifier",
        "short" : "採取容器のID"
      },
      {
        "id" : "Specimen.container.description",
        "path" : "Specimen.container.description",
        "short" : "採取容器のテキストによる説明"
      },
      {
        "id" : "Specimen.container.type",
        "path" : "Specimen.container.type",
        "short" : "検体に直接関係する採取容器の種類",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SpecimenContainerType"
            }
          ],
          "strength" : "example",
          "description" : "容器種別",
          "valueSet" : "http://hl7.org/fhir/ValueSet/specimen-container-type"
        }
      },
      {
        "id" : "Specimen.container.capacity",
        "path" : "Specimen.container.capacity",
        "short" : "採取容器の容量あるいはサイズ"
      },
      {
        "id" : "Specimen.container.specimenQuantity",
        "path" : "Specimen.container.specimenQuantity",
        "short" : "検体採取量"
      },
      {
        "id" : "Specimen.container.additive[x]",
        "path" : "Specimen.container.additive[x]",
        "short" : "採取容器の添加物（ CodeableConcept または Reference(Substance) のどちらか）",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SpecimenContainerAdditive"
            }
          ],
          "strength" : "example",
          "description" : "採取容器の添加物",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0371"
        }
      },
      {
        "id" : "Specimen.condition",
        "path" : "Specimen.condition",
        "short" : "検体の状態",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "SpecimenCondition"
            }
          ],
          "strength" : "extensible",
          "description" : "材料の状態を説明するコード",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0493"
        }
      },
      {
        "id" : "Specimen.note",
        "path" : "Specimen.note",
        "short" : "コメント"
      }
    ]
  }
}

```
