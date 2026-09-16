# JP Core MedicationRequest Example 内服処方指示 パンスポリンＴ錠１００ １００ｍｇ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationRequest Example 内服処方指示 パンスポリンＴ錠１００ １００ｍｇ**

## Example MedicationRequest: JP Core MedicationRequest Example 内服処方指示 パンスポリンＴ錠１００ １００ｍｇ

Profile: [JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md)

**identifier**: [JP_Medication_RpGroup_Number_NamingSystem](NamingSystem-jp-medication-rpgroup-number-namingsystem.md)/2, [JP_Medication_RpGruop_Index_NamingSystem](NamingSystem-jp-medication-rpgruop-index-namingsystem.md)/2, [JP_core_resourceInstance_identifier_NamingSystem](NamingSystem-jp-core-resourceInstance-identifier.md)/1234567890.1.2

**status**: Active

**intent**: Order

**medication**: パンスポリンＴ錠１００ １００ｍｇ

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**authoredOn**: 2020-04-01 12:28:17+0900

> **dosageInstruction****JP Core Medication Dosage PeriodOfUse Extension**: 2020-04-01 --> (ongoing)**JP Core Medication Dosage UsageDuration Extension**: No display for Duration (value: 3; unit: 日; system: http://unitsofmeasure.org; code: d)**text**: 内服・経口・１日３回朝昼夕食後**timing**: Code**route**:口**method**:経口

### DoseAndRates

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Dose[x]** | **Rate[x]** |
| * | 製剤量 | 2 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠') | 6 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠')/1 日(Details: UCUM coded = 'd') |


> **dispenseRequest****quantity**: 18 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠')

### ExpectedSupplyDurations

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **Value** | **Unit** | **System** | **Code** |
| * | 3 | 日 | [http://unitsofmeasure.org](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://unitsofmeasure.org) | d |


本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "jp-medicationrequest-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationRequest"
    ]
  },
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber",
      "value" : "2"
    },
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex",
      "value" : "2"
    },
    {
      "system" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
      "value" : "1234567890.1.2"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://medis.or.jp/CodeSystem/master-HOT9",
        "code" : "110926901",
        "display" : "パンスポリンＴ錠１００　１００ｍｇ"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "authoredOn" : "2020-04-01T12:28:17+09:00",
  "dosageInstruction" : [
    {
      "extension" : [
        {
          "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_PeriodOfUse",
          "valuePeriod" : {
            "start" : "2020-04-01"
          }
        },
        {
          "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationDosage_UsageDuration",
          "valueDuration" : {
            "value" : 3,
            "unit" : "日",
            "system" : "http://unitsofmeasure.org",
            "code" : "d"
          }
        }
      ],
      "text" : "内服・経口・１日３回朝昼夕食後",
      "timing" : {
        "code" : {
          "coding" : [
            {
              "system" : "http://jami.jp/CodeSystem/MedicationUsage",
              "code" : "1013044400000000",
              "display" : "内服 １日３回 朝昼夕食後"
            }
          ]
        }
      },
      "route" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/route-codes",
            "code" : "PO",
            "display" : "口"
          }
        ]
      },
      "method" : {
        "coding" : [
          {
            "system" : "http://jami.jp/CodeSystem/MedicationMethodDetailUsage",
            "code" : "10",
            "display" : "経口"
          }
        ]
      },
      "doseAndRate" : [
        {
          "type" : {
            "coding" : [
              {
                "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationIngredientStrengthStrengthType",
                "code" : "1",
                "display" : "製剤量"
              }
            ]
          },
          "doseQuantity" : {
            "value" : 2,
            "unit" : "錠",
            "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code" : "TAB"
          },
          "rateRatio" : {
            "numerator" : {
              "value" : 6,
              "unit" : "錠",
              "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
              "code" : "TAB"
            },
            "denominator" : {
              "value" : 1,
              "unit" : "日",
              "system" : "http://unitsofmeasure.org",
              "code" : "d"
            }
          }
        }
      ]
    }
  ],
  "dispenseRequest" : {
    "quantity" : {
      "value" : 18,
      "unit" : "錠",
      "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
      "code" : "TAB"
    },
    "expectedSupplyDuration" : {
      "value" : 3,
      "unit" : "日",
      "system" : "http://unitsofmeasure.org",
      "code" : "d"
    }
  }
}

```
