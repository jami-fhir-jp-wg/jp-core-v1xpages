# JP Core Medication IngredientStrength StrengthType Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication IngredientStrength StrengthType Extension**

## Extension: JP Core Medication IngredientStrength StrengthType Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_IngredientStrength_StrengthType
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Medication_IngredientStrength_StrengthType
* **項目**: *Title*
  * **内容**: JP Core Medication IngredientStrength StrengthType Extension
* **項目**: *Status*
  * **内容**: Active ( 2023-10-31 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

投与量が製剤単位か成分単位かを格納する拡張

投与量が製剤単位か成分単位かを格納する拡張

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core Medication Profile](StructureDefinition-jp-medication.md)
* Examples for this Extension: [Medication/jp-medication-example-1](Medication-jp-medication-example-1.md), [MedicationDispense/jp-medicationdispense-injection-example-1](MedicationDispense-jp-medicationdispense-injection-example-1.md), [MedicationRequest/jp-medicationrequest-injection-example-1](MedicationRequest-jp-medicationrequest-injection-example-1.md), [MedicationRequest/jp-medicationrequest-injection-example-2](MedicationRequest-jp-medicationrequest-injection-example-2.md) and [MedicationStatement/jp-medicationstatement-injection-example-1](MedicationStatement-jp-medicationstatement-injection-example-1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-medication-ingredientstrength-strengthtype)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-medication-ingredientstrength-strengthtype.csv), [Excel](StructureDefinition-jp-medication-ingredientstrength-strengthtype.xlsx), [Schematron](StructureDefinition-jp-medication-ingredientstrength-strengthtype.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-medication-ingredientstrength-strengthtype",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_IngredientStrength_StrengthType",
  "version" : "1.3.0-dev",
  "name" : "JP_Medication_IngredientStrength_StrengthType",
  "title" : "JP Core Medication IngredientStrength StrengthType Extension",
  "status" : "active",
  "date" : "2023-10-31",
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
  "description" : "投与量が製剤単位か成分単位かを格納する拡張",
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
  "purpose" : "投与量が製剤単位か成分単位かを格納する拡張",
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
      "expression" : "Medication.ingredient.strength"
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
        "short" : "力価区分",
        "definition" : "投与量が製剤単位か成分単位かを格納する"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_IngredientStrength_StrengthType"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://jpfhir.jp/fhir/core/ValueSet/JP_MedicationIngredientStrengthStrengthType_VS"
        }
      }
    ]
  }
}

```
