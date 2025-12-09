# JP Core Department Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Department Extension**

## Extension: JP Core Department Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Department
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Department
* **項目**: *Title*
  * **内容**: JP Core Department Extension
* **項目**: *Status*
  * **内容**: Active ( 2025-10-28 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

診療科情報を格納するための汎用的な拡張。様々なリソースで診療科情報を表現する際に使用できる。診療科コード（CodeableConcept）または診療科組織への参照（Reference）のいずれかを指定する。

**Context of Use**

**Usage info**

**Usages:**

* Examples for this Extension: [MedicationRequest/jp-medicationrequest-department-example-01](MedicationRequest-jp-medicationrequest-department-example-01.md), [MedicationRequest/jp-medicationrequest-department-example-02](MedicationRequest-jp-medicationrequest-department-example-02.md) and [ServiceRequest/jp-servicerequest-department-example-03](ServiceRequest-jp-servicerequest-department-example-03.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-department)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-department.csv), [Excel](StructureDefinition-jp-department.xlsx), [Schematron](StructureDefinition-jp-department.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-department",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Department",
  "version" : "1.3.0-dev",
  "name" : "JP_Department",
  "title" : "JP Core Department Extension",
  "status" : "active",
  "date" : "2025-10-28",
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
  "description" : "診療科情報を格納するための汎用的な拡張。様々なリソースで診療科情報を表現する際に使用できる。診療科コード（CodeableConcept）または診療科組織への参照（Reference）のいずれかを指定する。",
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
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Resource"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "診療科情報",
        "definition" : "そのリソースに関連する診療科を表す拡張。診療科コード（valueCodeableConcept）または診療科組織への参照（valueReference）のいずれかを使用できる。",
        "comment" : "診療科情報は以下の2つの方法で表現できる：\n1. valueCodeableConcept: SS-MIX2診療科コードなどのコード化された診療科情報\n2. valueReference: JP_Organization_Departmentプロファイルを使用した診療科組織への参照\n\n用途に応じて適切な表現方法を選択すること。診療科名称の統一が困難な場合は、CodeableConceptのtext要素を使用してテキストベースで診療科名を記録することも可能。"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Department"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
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
        "type" : [
          {
            "code" : "CodeableConcept"
          },
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization_Department"
            ]
          }
        ]
      },
      {
        "id" : "Extension.value[x]:valueCodeableConcept",
        "path" : "Extension.value[x]",
        "sliceName" : "valueCodeableConcept",
        "short" : "診療科コード",
        "definition" : "SS-MIX2診療科コード等を使用した診療科のコード表現",
        "comment" : "診療科コードが利用可能な場合に使用する。SS-MIX2診療科コード（2桁または3桁）の使用を推奨するが、他のコードシステムも使用可能。診療科名称のみの場合はtext要素に設定する。",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_Department_SsMix_VS"
        }
      },
      {
        "id" : "Extension.value[x]:valueReference",
        "path" : "Extension.value[x]",
        "sliceName" : "valueReference",
        "short" : "診療科組織への参照",
        "definition" : "診療科を表すJP_Organization_Departmentプロファイルへの参照",
        "comment" : "診療科をOrganizationリソースとして管理している場合に使用する。診療科の詳細情報（所属医療機関、連絡先等）を含める場合に適している。",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization_Department"
            ]
          }
        ]
      }
    ]
  }
}

```
