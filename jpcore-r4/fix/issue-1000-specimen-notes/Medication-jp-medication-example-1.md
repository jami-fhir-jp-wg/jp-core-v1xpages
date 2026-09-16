# JP Core Medication Example ホリゾン注射液１０ｍｇ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Example ホリゾン注射液１０ｍｇ**

## Example Medication: JP Core Medication Example ホリゾン注射液１０ｍｇ

Profile: [JP Core Medication Profile](StructureDefinition-jp-medication.md)

**status**: Active

### Ingredients

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Item[x]** | **Strength** |
| * |  | ホリゾン注射液１０ｍｇ | 1 アンプル(Details: JP Core Medication MERIT9 Unit CodeSystem codeAMP = 'アンプル')/1 回(Details: JP Core Medication MERIT9 Unit CodeSystem codeTIME = '回') |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "jp-medication-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Medication"
    ]
  },
  "status" : "active",
  "ingredient" : [
    {
      "extension" : [
        {
          "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_Ingredient_DrugNo",
          "valueInteger" : 1
        }
      ],
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://medis.or.jp/CodeSystem/master-HOT9",
            "code" : "100558502",
            "display" : "ホリゾン注射液１０ｍｇ"
          }
        ]
      },
      "strength" : {
        "extension" : [
          {
            "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Medication_IngredientStrength_StrengthType",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthStrengthType",
                  "code" : "1",
                  "display" : "製剤量"
                }
              ]
            }
          }
        ],
        "numerator" : {
          "value" : 1,
          "unit" : "アンプル",
          "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
          "code" : "AMP"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "回",
          "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
          "code" : "TIME"
        }
      }
    }
  ]
}

```
