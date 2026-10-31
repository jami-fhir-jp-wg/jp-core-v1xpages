# JP Core MedicationDosage Base DataType - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationDosage Base DataType**

## Data Type Profile: JP Core MedicationDosage Base DataType 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosageBase
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationDosageBase
* **項目**: *Title*
  * **内容**: JP Core MedicationDosage Base DataType
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このデータタイプは薬剤用法のDosageベースとして基礎となる制約と拡張のうち共通部分を定めている。 

**Usages:**

* Derived from this DataType Profile: [JP Core MedicationDosage Injection DataType](StructureDefinition-jp-medicationdosage-injection.md) and [JP Core MedicationDosage DataType](StructureDefinition-jp-medicationdosage.md)
* Use this DataType Profile: [JP Core MedicationDispenseBase Profile](StructureDefinition-jp-medicationdispensebase.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationdosagebase)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationdosagebase.csv), [Excel](StructureDefinition-jp-medicationdosagebase.xlsx), [Schematron](StructureDefinition-jp-medicationdosagebase.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationdosagebase",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosageBase",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationDosageBase",
  "title" : "JP Core MedicationDosage Base DataType",
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
  "description" : "このデータタイプは薬剤用法のDosageベースとして基礎となる制約と拡張のうち共通部分を定めている。",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Dosage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Dosage",
        "path" : "Dosage",
        "short" : "薬の服用方法・服用した方法、または服用すべき方法",
        "definition" : "薬の服用方法・服用した方法、または服用すべき方法"
      },
      {
        "id" : "Dosage.sequence",
        "path" : "Dosage.sequence",
        "short" : "服用指示の順番",
        "definition" : "どの服用指示を適応するか判断するかについての順序を示したもの",
        "comment" : "32 bitの数値。これ以上の値であれば10進数を使うこと。",
        "requirements" : "もし、複数の服用法(Dosage)でsequenceの数値が同じであれば、その指示が同時に扱われることを示している。sequenceの数値が異なれば、服用指示(Dosage)の順番を意図している。"
      },
      {
        "id" : "Dosage.text",
        "path" : "Dosage.text",
        "short" : "投与⽅法のテキスト表現",
        "definition" : "投与⽅法のテキスト表現。コードで指定できない場合、本要素で文字列として指定してもよい。",
        "comment" : "textエレメントはcodingのdisplayNameエレメントと一致することがよくある。",
        "requirements" : "ターミノロジ由来のコードは必ずしも人間が使う言葉の全てのニュアンスを含めた正確な意味を捉えているわけではなく、適切なコードが見つからない場合もある。そのような場合でもtextエレメントは元々の意味のすべてを捉えるために使うことができる。"
      },
      {
        "id" : "Dosage.additionalInstruction",
        "path" : "Dosage.additionalInstruction",
        "short" : "患者に対する補足指示や注意。たとえば、「食事と一緒に」「眠くなることがある」",
        "definition" : "どのように薬剤を内服するかについての患者への補足指示（たとえば、「食事と一緒に」や「30分から1時間前に内服」）や薬剤についての注意書き（たとえば、「眠くなることがある」や「日光や紫外線が皮膚にあたららないようにすること」）",
        "comment" : "薬剤投与や調剤についての情報（たとえば、「腹膜内ポートに可能な限り迅速に注入」や「薬剤Xの直後に」）であり、dosage.textにも複製されるべきである。",
        "requirements" : "補足指示はコード化されるように意図されているが、コードがない場合はエレメントはテキストだけで表現することができる。たとえば、「大量の水で服用する」という指示はコード化されていることもあれば、されていないことおある。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationUsageJAMIAdditional_VS"
        }
      },
      {
        "id" : "Dosage.patientInstruction",
        "path" : "Dosage.patientInstruction",
        "short" : "患者あるいは消費者向けの指示",
        "definition" : "患者あるいは消費者に理解してもらうための指示。",
        "comment" : "FHIRの文字列は1MB以上の大きさとなってなはらない(SHALL NOT)。"
      },
      {
        "id" : "Dosage.timing",
        "path" : "Dosage.timing",
        "type" : [
          {
            "code" : "Timing",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationTiming"
            ]
          }
        ]
      },
      {
        "id" : "Dosage.asNeeded[x]",
        "path" : "Dosage.asNeeded[x]",
        "short" : "「頓用」指示",
        "definition" : "【JP Core仕様】頓用型の用法を指定する場合に”true”を指定し、そのコードを指定する場合は用法コードとして指定する。  \nMedication(薬剤)が必要なときに指定された量とスケジュールのみで投薬するか（Booleanで選択される）、投薬する前提条件はTiming.Code(CodeableConcept)を示している。",
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Dosage.site",
        "path" : "Dosage.site",
        "short" : "投与される身体部位",
        "definition" : "投与される身体部位。外用薬で部位を指定する場合に使用する。",
        "comment" : "もし、BodySite resourceの属性が必要な場合(たとえば、部位の指定や別々に投与経路を設定する場合)は、[bodySite](extension-bodysite.html)の標準拡張を使うこと。要約コードや非常に正確な位置の定義へのreferenceを使用することもできる。  \n【JP Core仕様】JAMI外用部位３桁コードを使用することが望ましいが、ローカルコードも使用可能。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationBodySiteJAMIExternal_VS"
        }
      },
      {
        "id" : "Dosage.route",
        "path" : "Dosage.route",
        "short" : "投与経路",
        "definition" : "投与経路",
        "comment" : "投与経路の一般的パターンに全てのターミノロジが適応しているわけではない。情報モデルはCodeableConceptではなく、直接`Coding`を使用してテキストや`Coding`、翻訳、そしてエレメントと事前条件、事後条件の関係について管理するためにその構造を提示する必要がある。\n【JP Core仕様】HL7表0162をベースにした投与経路コードを使用することが望ましいが、ローカルコードも使用可能。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationRouteHL70162_VS"
        }
      },
      {
        "id" : "Dosage.method",
        "path" : "Dosage.method",
        "short" : "投与方法",
        "definition" : "投与方法",
        "comment" : "ターミノロジは投与する経路あるいは剤型をあらかじめ指定するために用いられる。",
        "requirements" : "コード化された値は体内に薬剤が投与される方法を示している。注射ではよく使われる。たとえば、緩徐に注入、深部に静注など。"
      },
      {
        "id" : "Dosage.method.coding",
        "path" : "Dosage.method.coding",
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
        "id" : "Dosage.method.coding:unitDigit1",
        "path" : "Dosage.method.coding",
        "sliceName" : "unitDigit1",
        "short" : "投与⽅法に対応するJAMI 用法コード表基本用法１桁コード",
        "definition" : "投与⽅法に対応するJAMI 用法コード表基本用法１桁コードを識別するURI。",
        "comment" : "コードは臨時で列記したものや、コードのリストからSNOMED CTのように公式に定義されたものまである（HL7 v3 core principle を参照)。FHIR自体ではコード化に関する規約を定めてはいないし、意味を暗示するために利用されない(SHALL NOT)。一般的に UserSelected = trueの場合には一つのコードシステムが使われる。",
        "requirements" : "他のコードシステムへの変換や代替のコードシステムを使ってエンコードしてもよい。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationMethodJAMIBasicUsage_VS"
        }
      },
      {
        "id" : "Dosage.method.coding:unitDigit1.system",
        "path" : "Dosage.method.coding.system",
        "min" : 1,
        "fixedUri" : "http://jami.jp/CodeSystem/MedicationMethodBasicUsage"
      },
      {
        "id" : "Dosage.method.coding:unitDigit2",
        "path" : "Dosage.method.coding",
        "sliceName" : "unitDigit2",
        "short" : "投与⽅法に対応するJAMI 用法コード表基本用法2桁コード",
        "definition" : "投与⽅法に対応するJAMI 用法コード表基本用法2桁コードを識別するURI。２桁コードhttp://jami.jp/CodeSystem/MedicationUsage",
        "comment" : "コードは臨時で列記したものや、コードのリストからSNOMED CTのように公式に定義されたものまである（HL7 v3 core principle を参照)。FHIR自体ではコード化に関する規約を定めてはいないし、意味を暗示するために利用されない(SHALL NOT)。一般的に UserSelected = trueの場合には一つのコードシステムが使われる。",
        "requirements" : "他のコードシステムへの変換や代替のコードシステムを使ってエンコードしてもよい。",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationMethodJAMIDetailUsage_VS"
        }
      },
      {
        "id" : "Dosage.method.coding:unitDigit2.system",
        "path" : "Dosage.method.coding.system",
        "min" : 1,
        "fixedUri" : "http://jami.jp/CodeSystem/MedicationMethodDetailUsage"
      },
      {
        "id" : "Dosage.method.text",
        "path" : "Dosage.method.text",
        "short" : "投与⽅法のテキスト表現",
        "definition" : "投与⽅法のテキスト表現。コードで指定できない場合、本要素で文字列として指定してもよい。",
        "comment" : "textエレメントはcodingのdisplayNameエレメントと一致することがよくある。",
        "requirements" : "ターミノロジ由来のコードは必ずしも人間が使う言葉の全てのニュアンスを含めた正確な意味を捉えているわけではなく、適切なコードが見つからない場合もある。そのような場合でもtextエレメントは元々の意味のすべてを捉えるために使うことができる。"
      },
      {
        "id" : "Dosage.doseAndRate",
        "path" : "Dosage.doseAndRate",
        "short" : "薬剤の投与量",
        "definition" : "薬剤が投与される量"
      },
      {
        "id" : "Dosage.doseAndRate.type",
        "path" : "Dosage.doseAndRate.type",
        "short" : "力価区分",
        "definition" : "力価区分",
        "comment" : "投与速度・量の一般的パターンに全てのターミノロジが適応しているわけではない。情報モデルはCodeableConceptではなく、直接`Coding`を使用してテキストや`Coding`、翻訳、そしてエレメントと事前条件、事後条件の関係について管理するためにその構造を提示する必要がある。",
        "requirements" : "このtypeに値が指定されていなければ、\"ordered\"であることが想定される。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationIngredientStrengthStrengthType_VS"
        }
      },
      {
        "id" : "Dosage.doseAndRate.dose[x]",
        "path" : "Dosage.doseAndRate.dose[x]",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : ["http://hl7.org/fhir/StructureDefinition/SimpleQuantity"]
          }
        ]
      },
      {
        "id" : "Dosage.doseAndRate.rate[x]",
        "path" : "Dosage.doseAndRate.rate[x]",
        "short" : "薬剤の投与量速度",
        "definition" : "薬剤が投与される量の速度"
      },
      {
        "id" : "Dosage.maxDosePerPeriod",
        "path" : "Dosage.maxDosePerPeriod",
        "short" : "単位時間当たりの投薬量の上限",
        "definition" : "単位時間当たりの投薬量の上限",
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
        "id" : "Dosage.maxDosePerAdministration",
        "path" : "Dosage.maxDosePerAdministration",
        "short" : "1回あたりの投薬量の上限",
        "definition" : "1回あたりの投薬量の上限",
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
        "id" : "Dosage.maxDosePerLifetime",
        "path" : "Dosage.maxDosePerLifetime",
        "short" : "生涯の投薬量の上限",
        "definition" : "生涯の投薬量の上限",
        "type" : [
          {
            "code" : "Quantity",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationSimpleQuantity"
            ]
          }
        ]
      }
    ]
  }
}

```
