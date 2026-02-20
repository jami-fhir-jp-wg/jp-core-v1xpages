# JP Core FamilyMemberHistory Sibling Order Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Sibling Order Extension**

## Extension: JP Core FamilyMemberHistory Sibling Order Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_FamilyMemberHistory_SiblingOrder
* **項目**: *Title*
  * **内容**: JP Core FamilyMemberHistory Sibling Order Extension
* **項目**: *Status*
  * **内容**: Active ( 2025-12-01 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

同胞内出生順をFamilyMemberHistoryに付記するための拡張。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)
* Examples for this Extension: [FamilyMemberHistory/jp-familymemberhistory-example-2](FamilyMemberHistory-jp-familymemberhistory-example-2.md) and [FamilyMemberHistory/jp-familymemberhistory-example-4](FamilyMemberHistory-jp-familymemberhistory-example-4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-familymemberhistory-siblingorder)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-familymemberhistory-siblingorder.csv), [Excel](StructureDefinition-jp-familymemberhistory-siblingorder.xlsx), [Schematron](StructureDefinition-jp-familymemberhistory-siblingorder.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-familymemberhistory-siblingorder",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder",
  "version" : "1.3.0-dev",
  "name" : "JP_FamilyMemberHistory_SiblingOrder",
  "title" : "JP Core FamilyMemberHistory Sibling Order Extension",
  "status" : "active",
  "date" : "2025-12-01",
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
  "description" : "同胞内出生順をFamilyMemberHistoryに付記するための拡張。",
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
      "expression" : "FamilyMemberHistory.relationship"
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
        "short" : "同胞内出生順",
        "definition" : "FamilyMemberHistoryのrelationship（続柄）と組み合わせて、関連する家族構成員の同胞内出生順と性別同胞内出生順名称を表現する拡張。同胞内の順位を整数で、性別の同胞内の出生順の名称（長男、長女、次男、次女など）をCodeableConceptで表現する。日常の臨床では家族の氏名は聴取されずに続柄で記述され、また、関係者全員の生年月日や年齢を聴取できない場合が多いことを想定している。また、遺伝学的血統図は対象外である。本実装ガイド（Version 1.2.0）の範囲外であるが、 参考として[Genetic Pedigreeプロファイル](https://hl7.org/fhir/R4/familymemberhistory-genetic.html)を参照すること。"
      },
      {
        "id" : "Extension.extension:siblingBirthOrder",
        "path" : "Extension.extension",
        "sliceName" : "siblingBirthOrder",
        "short" : "同胞内出生順（整数）",
        "definition" : "同胞内の出生順を表す数値。家族歴の聴取が不完全で年齢または生年月日が不明な場合に、出生順（1、2、3…）を表現するために用いる。",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:siblingBirthOrder.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:siblingBirthOrder.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "siblingBirthOrder"
      },
      {
        "id" : "Extension.extension:siblingBirthOrder.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "minValueInteger" : 1
      },
      {
        "id" : "Extension.extension:siblingBirthOrderByGender",
        "path" : "Extension.extension",
        "sliceName" : "siblingBirthOrderByGender",
        "short" : "性別同胞内出生順名称（コード値）",
        "definition" : "同胞内の出生順を、性別を考慮した呼称（例：長男、長女、次男、次女）で表す。国際化対応の対応のため、designation により対象者の出身国の用語を追加定義できる。",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:siblingBirthOrderByGender.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:siblingBirthOrderByGender.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "siblingBirthOrderByGender"
      },
      {
        "id" : "Extension.extension:siblingBirthOrderByGender.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_SiblingBirthOrderByGender_VS"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
