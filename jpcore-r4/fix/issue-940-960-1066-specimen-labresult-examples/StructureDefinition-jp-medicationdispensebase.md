# JP Core MedicationDispenseBase Profile - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationDispenseBase Profile**

## Resource Profile: JP Core MedicationDispenseBase Profile 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispenseBase
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationDispenseBase
* **項目**: *Title*
  * **内容**: JP Core MedicationDispenseBase Profile
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
このプロファイルはユーザーは直接適用するものではなく、JP_MedicationDispenseとJP_MedicationDispenseInjectionの共通の親となる抽象プロファイルである。このプロファイルはMedicationDispenseリソースに対して、内服・外用薬剤処方調剤・払い出し記録のデータを送受信するため、JP_MedicationDispenseとJP_MedicationDispenseInjectionの各プロファイルの基礎となる制約と拡張のうち共通部分を定めている。 

**Usages:**

* Derived from this Profile: [JP Core MedicationDispense Injection Profile](StructureDefinition-jp-medicationdispense-injection.md) and [JP Core MedicationDispense Profile](StructureDefinition-jp-medicationdispense.md)
* Refer to this Profile: [JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medicationdispensebase)

### プロファイル詳細

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medicationdispensebase.csv), [Excel](StructureDefinition-jp-medicationdispensebase.xlsx), [Schematron](StructureDefinition-jp-medicationdispensebase.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medicationdispensebase",
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDispenseBase",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationDispenseBase",
  "title" : "JP Core MedicationDispenseBase Profile",
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
  "description" : "このプロファイルはユーザーは直接適用するものではなく、JP_MedicationDispenseとJP_MedicationDispenseInjectionの共通の親となる抽象プロファイルである。このプロファイルはMedicationDispenseリソースに対して、内服・外用薬剤処方調剤・払い出し記録のデータを送受信するため、JP_MedicationDispenseとJP_MedicationDispenseInjectionの各プロファイルの基礎となる制約と拡張のうち共通部分を定めている。",
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
      "identity" : "rx-dispense-rmim",
      "uri" : "http://www.hl7.org/v3/PORX_RM020070UV",
      "name" : "V3 Pharmacy Dispense RMIM"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationDispense",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationDispense",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationDispense",
        "path" : "MedicationDispense",
        "short" : "指定された患者への薬剤の払い出し",
        "definition" : "指定された患者・個人へ薬剤が払い出されたか払い出される予定のものを示す。これには（供給される）提供される製品についての説明や薬剤の服用に関する指示も含まれる。薬剤払い出しは薬剤オーダに対して薬局システムが対応した結果となる。"
      },
      {
        "id" : "MedicationDispense.extension",
        "path" : "MedicationDispense.extension",
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
        "id" : "MedicationDispense.extension:preparation",
        "path" : "MedicationDispense.extension",
        "sliceName" : "preparation",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDispense_Preparation"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.identifier",
        "path" : "MedicationDispense.identifier",
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
        "definition" : "このインスタンスが外部から参照されるために使われるIDである。処方箋全体としてのIDとしては使用しない。  \n処方箋内で同一の用法をまとめて表記されるRp番号はこのIdentifier elementの別スライスで表現する。それ以外に任意のIDを付与してもよい。  \nこのIDは業務手順によって定められた処方オーダに対して、直接的なURL参照が適切でない場合も含めて関連付けるために使われる。この業務手順のIDは実施者によって割り当てられたものであり、リソースが更新されたりサーバーからサーバーに転送されたとしても固定のものとして存続する。",
        "comment" : "これは業務IDであって、リソースに対するIDではない。",
        "min" : 1
      },
      {
        "id" : "MedicationDispense.identifier:rpNumber",
        "path" : "MedicationDispense.identifier",
        "sliceName" : "rpNumber",
        "short" : "処方箋内部の剤グループとしてのRp番号",
        "definition" : "処方箋内で同一用法の薬剤を慣用的にまとめて、Rpに番号をつけて剤グループとして一括指定されることがある。このスライスでは剤グループに対して割り振られたRp番号を記録する。",
        "comment" : "剤グループに複数の薬剤が含まれる場合、このグループ内の薬剤には同じRp番号が割り振られる。",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "MedicationDispense.identifier:rpNumber.system",
        "path" : "MedicationDispense.identifier.system",
        "short" : "Rp番号(剤グループ番号)についてのsystem値",
        "definition" : "ここで付番されたIDがRp番号であることを明示するためにOID-urlとして定義された。http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumberで固定される。",
        "min" : 1,
        "fixedUri" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber"
      },
      {
        "id" : "MedicationDispense.identifier:rpNumber.value",
        "path" : "MedicationDispense.identifier.value",
        "short" : "Rp番号(剤グループ番号)",
        "definition" : "Rp番号(剤グループ番号)。\"1\"など。",
        "comment" : "value は string型であり、数値はゼロサプレス、つまり、'01'でなく'1'と指定すること。",
        "min" : 1
      },
      {
        "id" : "MedicationDispense.identifier:requestIdentifier",
        "path" : "MedicationDispense.identifier",
        "sliceName" : "requestIdentifier",
        "short" : "処方オーダに対するID(MedicationRequestからの継承)",
        "definition" : "薬剤をオーダする単位としての処方箋に対するID。原則として調剤の基となったMedicationRequestのIDを設定する。",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "MedicationDispense.identifier:requestIdentifier.system",
        "path" : "MedicationDispense.identifier.system",
        "min" : 1,
        "fixedUri" : "urn:oid:1.2.392.100495.20.3.11"
      },
      {
        "id" : "MedicationDispense.identifier:requestIdentifier.value",
        "path" : "MedicationDispense.identifier.value",
        "min" : 1
      },
      {
        "id" : "MedicationDispense.partOf",
        "path" : "MedicationDispense.partOf",
        "short" : "親イベントへの参照",
        "definition" : "この調剤の契機となったProcedureリソースへの参照。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Procedure"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.status",
        "path" : "MedicationDispense.status",
        "short" : "preparation | in-progress | cancelled | on-hold | completed | entered-in-error | stopped | unknown 一連の調剤イベントの状態",
        "definition" : "一連の調剤イベントの状態を指定するコード。"
      },
      {
        "id" : "MedicationDispense.statusReason[x]",
        "path" : "MedicationDispense.statusReason[x]",
        "short" : "調剤が実行されなかった理由",
        "definition" : "調剤が実行されなかった理由を示す。"
      },
      {
        "id" : "MedicationDispense.category",
        "path" : "MedicationDispense.category",
        "short" : "調剤タイプ",
        "definition" : "投薬のタイプを示す（たとえば、薬剤が消費または投与されると予想される場所（つまり、入院患者または外来患者））。　入院、外来、退院、自宅など。"
      },
      {
        "id" : "MedicationDispense.medication[x]",
        "path" : "MedicationDispense.medication[x]",
        "short" : "医薬品",
        "definition" : "投与された薬剤を識別する。既知の薬のリストから薬を識別するコード情報を設定する。",
        "comment" : "ひとつのtext要素と、複数のcoding 要素を記述できる。処方オーダ時に選択または入力し、実際に処方箋に印字される文字列を必ずtext要素に格納した上で、それをコード化した情報を1個以上のcoding 要素に記述する。  \n厚生労働省標準であるHOT9コード（販社指定が不要な場合にはHOT7コード）または広く流通しているYJコードを用いるか、一般名処方の場合には厚生労働省保険局一般名処方マスタのコードを使用して、Coding要素（コードsystemを識別するURI、医薬品のコード、そのコード表における医薬品の名称の3つからなる）で記述する。  \nなお、上記のいずれの標準的コードも付番されていない医薬品や医療材料の場合には、薬機法の下で使用されているGS1標準の識別コードであるGTIN(Global Trade Item Number)の調剤包装単位（最少包装単位、個別包装単位）14桁を使用する。  \nひとつの処方薬、医療材料を複数のコード体系のコードで記述してもよく、その場合にcoding 要素を繰り返して記述する。  \nただし、ひとつの処方薬を複数のコードで繰り返し記述する場合には、それらのコードが指し示す処方薬、医療材料は当然同一でなければならない。  \nまた、処方を発行した医療機関内でのデータ利用のために、医療機関固有コード体系によるコード（ハウスコード、ローカルコード）の記述を含めてもよいが、その場合でも上述したいずれかの標準コードを同時に記述することが必要である。"
      },
      {
        "id" : "MedicationDispense.subject",
        "path" : "MedicationDispense.subject",
        "short" : "投与対象患者",
        "definition" : "投与を受ける患者",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
          }
        ]
      },
      {
        "id" : "MedicationDispense.context",
        "path" : "MedicationDispense.context",
        "short" : "調剤ベントに関連するEncounterやエピソード",
        "definition" : "調剤ベントに関連するEncounterやエピソードへの参照。",
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
        "id" : "MedicationDispense.supportingInformation",
        "path" : "MedicationDispense.supportingInformation",
        "short" : "薬の調剤をサポートする情報",
        "definition" : "調剤される薬剤をサポートする追加情報への任意のリソースへの参照。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。"
      },
      {
        "id" : "MedicationDispense.performer",
        "path" : "MedicationDispense.performer",
        "short" : "調剤を実施した人",
        "definition" : "調剤した人を示す"
      },
      {
        "id" : "MedicationDispense.performer.actor",
        "path" : "MedicationDispense.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.location",
        "path" : "MedicationDispense.location",
        "short" : "調剤実施場所",
        "definition" : "調剤が実施された場所を示すLocationリソースへの参照。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
          }
        ]
      },
      {
        "id" : "MedicationDispense.authorizingPrescription",
        "path" : "MedicationDispense.authorizingPrescription",
        "short" : "調剤を正当化する元の処方オーダ",
        "definition" : "調剤の元になった処方オーダを表すMedicationRequestリソースへの参照。"
      },
      {
        "id" : "MedicationDispense.type",
        "path" : "MedicationDispense.type",
        "short" : "実行される調剤イベント",
        "definition" : "実行される調剤イベントのタイプを示す。たとえば、トライアルフィル、トライアルの完了、部分フィル、緊急フィル、サンプルなどである。",
        "comment" : "すべてのターミノロジの使用がこの一般的なパターンに適合するわけではない。場合によっては、モデルはCodeableConceptを使用せず、`Coding`を直接使用して、テキスト、`Coding`、翻訳、および要素間の関係とpre-coordinationとpost-coordinationの用語関係を管理するための独自の構造を提供する必要がある。"
      },
      {
        "id" : "MedicationDispense.quantity",
        "path" : "MedicationDispense.quantity",
        "short" : "払い出される薬剤の量",
        "definition" : "調剤総量。  \nJP Coreでは必須  \n払い出される薬剤の量。計測単位を含む。",
        "comment" : "使用状況によって、これがどのような量であるか、したがってどのような単位を使用できるかが定義される場合がかなりある。使用状況によっては、比較演算子の値も制限される場合がある。",
        "min" : 1,
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
        "id" : "MedicationDispense.daysSupply",
        "path" : "MedicationDispense.daysSupply",
        "short" : "タイミングとして表される投薬量",
        "definition" : "タイミングとして表される投薬量。すなわち、XX日分、XX回分などの数量。",
        "comment" : "使用状況によって、これがどのような量であるか、したがってどのような単位を使用できるかが定義される場合がかなりある。使用状況によっては、比較演算子の値も制限される場合がある。",
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
        "id" : "MedicationDispense.whenPrepared",
        "path" : "MedicationDispense.whenPrepared",
        "short" : "調剤がパッケージ化され、レビューされた日時",
        "definition" : "調剤がパッケージ化され、レビューされた日時"
      },
      {
        "id" : "MedicationDispense.whenHandedOver",
        "path" : "MedicationDispense.whenHandedOver",
        "short" : "払い出された日時",
        "definition" : "必須。  \n患者あるいはその代理人に払い出される薬剤が提供された日時。",
        "min" : 1
      },
      {
        "id" : "MedicationDispense.destination",
        "path" : "MedicationDispense.destination",
        "short" : "薬が送られた場所",
        "definition" : "調剤イベントの一環として、薬剤が出荷された行先先の施設/場所のLocationリソースへの参照。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
          }
        ]
      },
      {
        "id" : "MedicationDispense.receiver",
        "path" : "MedicationDispense.receiver",
        "short" : "薬を受け取った人",
        "definition" : "薬を受け取った人を識別する。これは通常、患者またはその介護者だが、医療専門家になる場合もある。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient",
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.note",
        "path" : "MedicationDispense.note",
        "short" : "調剤に関する備考",
        "definition" : "他の要素では伝達できなかった調剤に関する追加情報。",
        "comment" : "構造化された注釈（アノテーション）を持たないシステムの場合、作成者や時間なしで単一の注釈を簡単に伝達できる。情報を変更する可能性があるため、この要素をナラティブに含める必要がある場合がある。  \n*注釈は、計算機処理れきる「変更」情報を伝達するために使用されるべきではない*。 （ユーザーの行動を強制することはほとんど不可能であるため、これはSHOULDとする）。"
      },
      {
        "id" : "MedicationDispense.dosageInstruction",
        "path" : "MedicationDispense.dosageInstruction",
        "type" : [
          {
            "code" : "Dosage",
            "profile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationDosageBase"
            ]
          }
        ]
      },
      {
        "id" : "MedicationDispense.substitution",
        "path" : "MedicationDispense.substitution",
        "short" : "調剤の一部として置換が行われたかどうかを示す。場合によっては、置換が期待されるが発生しない場合もあれば、置換が予期されないが発生する場合もある。このブロックは、置換が行われたか行われなかったか、およびその理由を説明する。何も指定されていない場合、置換は行われていない。"
      },
      {
        "id" : "MedicationDispense.substitution.wasSubstituted",
        "path" : "MedicationDispense.substitution.wasSubstituted",
        "short" : "調剤で置換が実行されたか、あるいはされていないかを'true'または'false'で表す",
        "definition" : "処方されたものとは異なる薬剤または製品を調剤した場合に、'true'を設定する。"
      },
      {
        "id" : "MedicationDispense.substitution.type",
        "path" : "MedicationDispense.substitution.type",
        "short" : "処方されたものとは異なる薬が調剤されたかどうかを示すコード",
        "definition" : "処方されたものとは異なる薬が調剤されたかどうかを示すコード。  \nHL7 v3 Value Set ActSubstanceAdminSubstitutionCode　から以下のコードが使用できる。  \nE  : 別の生物学的同等および治療的に同等の製品で置換が行われたか、許可された。  \nEC : 代替品が発生したか、次のような別の製品で許可されている：同じ有効成分を含むが異なる塩で処方された代替医薬品、同じ有効成分を持つエステル医薬品同等物、強度、剤形、投与経路。  \nBC : 代替が発生したか、同等のブランド間で許可されてるが、ジェネリックでは許可されない。  \nG  : 代替が発生したか、同等のジェネリック間で許可されているが、ブランド間では許可されない。  \nTE : 同じ治療目的と安全性プロファイルを持つ別の製品で代替が発生したか、許可された。  \nTB : ジェネリック医薬品ではなく、治療的に同等のブランド間で代替品が発生したか、許可されている  \nTG : 治療的に同等のジェネリック間で置換が発生したか、許可されているが、ブランドは許可されない。  \nF  : 処方ガイドラインに準拠。  \nN  : 置換は発生しなかったか、許可されていない。"
      },
      {
        "id" : "MedicationDispense.substitution.reason",
        "path" : "MedicationDispense.substitution.reason",
        "short" : "置換が実施された（あるいは、されなかった）理由",
        "definition" : "【JP Core仕様】置換が実施された、あるいは実施されなかった理由を示す。令和6年保険改訂により、処方箋上で長期収載医薬品の変更不可が指定されている場合は「医療上の必要性がある」または「患者希望による」のいずれかを指定する。",
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationSubstitutionProhibitionReason_VS"
        }
      },
      {
        "id" : "MedicationDispense.substitution.responsibleParty",
        "path" : "MedicationDispense.substitution.responsibleParty",
        "short" : "置換責任者",
        "definition" : "置換の主な責任を負う個人または組織。Practitioner   PractitionerRole リソースへの参照。",
        "comment" : "参照は、実際のFHIRリソースへの参照である必要があり、解決可能（内容に到達可能）である必要がある（アクセス制御、一時的な使用不可などを考慮に入れる）。解決は、URLから取得するか、リソースタイプによって該当する場合は、絶対参照を正規URLとして扱い、ローカルレジストリ/リポジトリで検索することによって行うことができる。",
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
        "id" : "MedicationDispense.detectedIssue",
        "path" : "MedicationDispense.detectedIssue",
        "short" : "アクションを伴う臨床的問題",
        "definition" : "患者に対する1つまたは複数のアクティブまたは提案された臨床アクションを伴う、またはそれらの間の実際のまたは潜在的な臨床問題を示す。例えば薬物間相互作用、重複治療、投与量アラートなど。  \nDetectedIssue リソースへの参照。"
      },
      {
        "id" : "MedicationDispense.eventHistory",
        "path" : "MedicationDispense.eventHistory",
        "short" : "関連するライフサイクルイベントのリスト",
        "definition" : "調剤が確認されたときなど、発生した対象のイベントのサマリー。"
      }
    ]
  }
}

```
