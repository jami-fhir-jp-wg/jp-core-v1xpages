# JP Core FamilyMemberHistory Sibling Order Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core FamilyMemberHistory Sibling Order Extension**

## Extension: JP Core FamilyMemberHistory Sibling Order Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder
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

同胞内出生順（長男、長女など）をFamilyMemberHistoryに付記するための拡張。同胞はvalueは CodeableConcept で、JP_SiblingOrder_VS のコード（SO1, SO1F など）を推奨する。

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md)
* Examples for this Extension: [FamilyMemberHistory/jp-familymemberhistory-example-2](FamilyMemberHistory-jp-familymemberhistory-example-2.md)

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
  "url" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder",
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
  "description" : "同胞内出生順（長男、長女など）をFamilyMemberHistoryに付記するための拡張。同胞はvalueは CodeableConcept で、JP_SiblingOrder_VS のコード（SO1, SO1F など）を推奨する。",
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
      "expression" : "FamilyMemberHistory"
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
        "definition" : "FamilyMemberHistory リソース全体に対して、関連する家族成員の同胞内出生順を表現する拡張。日本語での表現（長男、長女、次男など）を CodeableConcept で提供する。この拡張は社会学的・文化的文脈で利用され、医学的な遺伝情報とは独立している。家系図はスコープ外。"
      },
      {
        "id" : "Extension.extension:siblingBirthOrder",
        "path" : "Extension.extension",
        "sliceName" : "siblingBirthOrder",
        "short" : "同胞内出生順（整数）",
        "definition" : "同胞内での出生順を表現した数値。性別に関係なく、単純に出生順を示す。例えば、男、男、女の出生順の場合、長男は1、次男は2、長女は3など。",
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
        "id" : "Extension.extension:genderedSiblingBirthOrder",
        "path" : "Extension.extension",
        "sliceName" : "genderedSiblingBirthOrder",
        "short" : "性別同胞内出生順",
        "definition" : "同胞内での出生順を性別に表現した用語。用語で出生順が表現されており、用語選択のみで表現される（例：長男、長女など）。",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:genderedSiblingBirthOrder.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:genderedSiblingBirthOrder.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "genderedSiblingBirthOrder"
      },
      {
        "id" : "Extension.extension:genderedSiblingBirthOrder.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "preferred",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_GenderedSiblingOrder_VS"
        }
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/StructureDefinition/JP_FamilyMemberHistory_SiblingOrder"
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
