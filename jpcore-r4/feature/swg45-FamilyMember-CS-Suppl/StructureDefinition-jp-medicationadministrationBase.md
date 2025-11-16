# JP Core MedicationAdministrationBase Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationAdministrationBase Profile**

## Resource Profile: JP Core MedicationAdministrationBase Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministrationBase
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationAdministrationBase
* **項目**: *Title*
  * **内容**: JP Core MedicationAdministrationBase Profile
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会NeXEHRS課題研究会FHIR日本実装検討WG

 
このプロファイルはMedicationAdministrationリソースに対して、投薬実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 

**Usages:**

* Derived from this Profile: [JP Core MedicationAdministration Injection Profile](StructureDefinition-jp-medicationadministration-injection.md) and [JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationadministrationBase)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationadministrationBase.csv), [Excel](StructureDefinition-jp-medicationadministrationBase.xlsx), [Schematron](StructureDefinition-jp-medicationadministrationBase.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationadministrationBase",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministrationBase",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationAdministrationBase",
  "title" : "JP Core MedicationAdministrationBase Profile",
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
  "description" : "このプロファイルはMedicationAdministrationリソースに対して、投薬実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationAdministration",
        "path" : "MedicationAdministration",
        "short" : "患者への薬剤投与記録"
      },
      {
        "id" : "MedicationAdministration.extension",
        "path" : "MedicationAdministration.extension",
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
        "id" : "MedicationAdministration.extension:requestDepartment",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "requestDepartment",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_RequestDepartment"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:requestAuthoredOn",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "requestAuthoredOn",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_RequestAuthoredOn"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:location",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "location",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Location"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.extension:requester",
        "path" : "MedicationAdministration.extension",
        "sliceName" : "requester",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Requester"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.identifier",
        "path" : "MedicationAdministration.identifier",
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
        "comment" : "これは業務IDであって、リソースに対するIDではない。",
        "min" : 1
      },
      {
        "id" : "MedicationAdministration.identifier:rpNumber",
        "path" : "MedicationAdministration.identifier",
        "sliceName" : "rpNumber",
        "short" : "処方箋内部の剤グループとしてのRp番号",
        "definition" : "処方箋内で同一用法の薬剤を慣用的にまとめて、Rpに番号をつけて剤グループとして一括指定されることがある。このスライスでは剤グループに対して割り振られたRp番号を記録する。",
        "comment" : "剤グループに複数の薬剤が含まれる場合、このグループ内の薬剤には同じRp番号が割り振られる。",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "MedicationAdministration.identifier:rpNumber.system",
        "path" : "MedicationAdministration.identifier.system",
        "short" : "Rp番号(剤グループ番号)についてのsystem値",
        "definition" : "ここで付番されたIDがRp番号であることを明示するためにOID-urlとして定義された。http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumberで固定される。",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber"
      },
      {
        "id" : "MedicationAdministration.identifier:rpNumber.value",
        "path" : "MedicationAdministration.identifier.value",
        "short" : "Rp番号(剤グループ番号)",
        "definition" : "Rp番号(剤グループ番号)。\"1\"など。",
        "comment" : "value は string型であり、数値はゼロサプレス、つまり、'01'でなく'1'と指定すること。",
        "min" : 1
      },
      {
        "id" : "MedicationAdministration.identifier:requestIdentifier",
        "path" : "MedicationAdministration.identifier",
        "sliceName" : "requestIdentifier",
        "short" : "処方オーダに対するID(MedicationRequestからの継承)",
        "definition" : "薬剤をオーダする単位としての処方箋に対するID。原則として投薬実施の基となったMedicationRequestのIDを設定する。",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "MedicationAdministration.identifier:requestIdentifier.system",
        "path" : "MedicationAdministration.identifier.system",
        "min" : 1,
        "fixedUri" : "urn:oid:1.2.392.100495.20.3.11"
      },
      {
        "id" : "MedicationAdministration.identifier:requestIdentifier.value",
        "path" : "MedicationAdministration.identifier.value",
        "min" : 1
      },
      {
        "id" : "MedicationAdministration.instantiates",
        "path" : "MedicationAdministration.instantiates",
        "short" : "プロトコルや定義のインスタンス化",
        "definition" : "このイベントによって全体的または部分的に順守されたプロトコル、ガイドライン、オーダセット、またはその他の定義。"
      },
      {
        "id" : "MedicationAdministration.partOf",
        "path" : "MedicationAdministration.partOf",
        "short" : "親イベントへの参照",
        "definition" : "この特定のイベントがコンポーネントまたはステップであるようなより大きな親イベント。"
      },
      {
        "id" : "MedicationAdministration.status",
        "path" : "MedicationAdministration.status",
        "short" : "completed | stopped",
        "definition" : "通常、管理が完了したことを示すように設定される。輸液などの長期にわたる投与では、投与を開始しても完了しない場合や、他のプロセスの進行中に一時停止する場合がある。  \n【JP Core仕様】　completed or stopped に限定される。",
        "binding" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString" : "MedicationAdministrationStatus"
            }
          ],
          "strength" : "required",
          "description" : "患者への投与状況",
          "valueSet" : "http://hl7.org/fhir/ValueSet/medication-admin-status|4.0.1"
        }
      },
      {
        "id" : "MedicationAdministration.statusReason",
        "path" : "MedicationAdministration.statusReason",
        "short" : "実施されていない理由",
        "definition" : "投与が実施されていない理由を示すコード"
      },
      {
        "id" : "MedicationAdministration.category",
        "path" : "MedicationAdministration.category",
        "short" : "薬が使用される区分"
      },
      {
        "id" : "MedicationAdministration.medication[x]",
        "path" : "MedicationAdministration.medication[x]",
        "short" : "医薬品",
        "definition" : "投与された薬剤を識別する。既知の薬のリストから薬を識別するコード情報を設定する。",
        "comment" : "ひとつのtext要素と、複数のcoding 要素を記述できる。処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ずtext要素に格納した上で、それをコード化した情報を1個以上のcoding 要素に記述する。  \n厚生労働省標準であるHOT9コード（販社指定が不要な場合にはHOT7コード）または広く流通しているYJコードを用いるか、一般名処方の場合には厚生労働省保険局一般名処方マスタのコードを使用して、Coding要素（コードsystemを識別するURI、医薬品のコード、そのコード表における医薬品の名称の3つからなる）で記述する。  \nなお、上記のいずれの標準的コードも付番されていない医薬品や医療材料の場合には、薬機法の下で使用されているGS1標準の識別コードであるGTIN(Global Trade Item Number)の調剤包装単位（最少包装単位、個別包装単位）14桁を使用する。  \nひとつの処方薬、医療材料を複数のコード体系のコードで記述してもよく、その場合にcoding 要素を繰り返して記述する。  \nただし、ひとつの処方薬を複数のコードで繰り返し記述する場合には、それらのコードが指し示す処方薬、医療材料は当然同一でなければならない。  \nまた、処方を発行した医療機関内でのデータ利用のために、医療機関固有コード体系によるコード（ハウスコード、ローカルコード）の記述を含めてもよいが、その場合でも上述したいずれかの標準コードを同時に記述することが必要である。"
      }
    ]
  }
}

```
