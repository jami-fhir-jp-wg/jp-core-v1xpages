# JP Core MedicationStatement Example 服用申告情報 ムコダイン錠２５０ｍｇ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationStatement Example 服用申告情報 ムコダイン錠２５０ｍｇ**

## Example MedicationStatement: JP Core MedicationStatement Example 服用申告情報 ムコダイン錠２５０ｍｇ

Profile: [JP Core MedicationStatement Profile](StructureDefinition-jp-medicationstatement.md)

**status**: Completed

**medication**: ムコダイン錠２５０ｍｇ

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2020-04-01 00:00:00+0900 --> 2020-04-14 00:00:00+0900

**dateAsserted**: 2020-05-01 12:28:17+0900

**informationSource**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**derivedFrom**: [MedicationRequest: identifier = http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber#JP_Medication_RpGroup_Number_NamingSystem#1,http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex#JP_Medication_RpGruop_Index_NamingSystem#1,http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier#JP_core_resourceInstance_identifier_NamingSystem#1234567890.1.1,urn:oid:1.2.392.100495.20.3.11#JP_IdSystem_PrescriptionDocumentID_NamingSystem#20241101-0000000000000001; status = active; intent = order; medication[x] = ムコダイン錠２５０ｍｇ; authoredOn = 2020-04-01 12:28:17+0900](MedicationRequest-jp-medicationrequest-example-1.md)

**reasonCode**: 急性気管支炎

> **dosage****text**: 内服・経口・１日３回朝昼夕食後**timing**: Code**route**:口**method**:経口

### DoseAndRates

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Dose[x]** | **Rate[x]** |
| * | 製剤量 | 1 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠') | 3 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠')/1 日(Details: UCUM coded = 'd') |


本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationStatement",
  "id" : "jp-medicationstatement-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationStatement"
    ]
  },
  "status" : "completed",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://medis.or.jp/CodeSystem/master-HOT9",
        "code" : "103835401",
        "display" : "ムコダイン錠２５０ｍｇ"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectivePeriod" : {
    "start" : "2020-04-01T00:00:00+09:00",
    "end" : "2020-04-14T00:00:00+09:00"
  },
  "dateAsserted" : "2020-05-01T12:28:17+09:00",
  "informationSource" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "derivedFrom" : [
    {
      "reference" : "MedicationRequest/jp-medicationrequest-example-1"
    }
  ],
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://medis.or.jp/CodeSystem/master-disease-exCode",
          "code" : "TQ7A",
          "display" : "急性気管支炎"
        }
      ]
    }
  ],
  "dosage" : [
    {
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
            "value" : 1,
            "unit" : "錠",
            "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
            "code" : "TAB"
          },
          "rateRatio" : {
            "numerator" : {
              "value" : 3,
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
  ]
}

```
