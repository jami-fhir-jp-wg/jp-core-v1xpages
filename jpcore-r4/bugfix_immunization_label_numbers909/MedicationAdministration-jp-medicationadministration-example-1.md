# JP Core MedicationAdministration Example 投薬実施 ムコダイン錠２５０ｍｇ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core MedicationAdministration Example 投薬実施 ムコダイン錠２５０ｍｇ**

## Example MedicationAdministration: JP Core MedicationAdministration Example 投薬実施 ムコダイン錠２５０ｍｇ

Profile: [JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md)

**JP Core MedicationAdministration RequestDepartment Extension**: 内科

**JP Core MedicationAdministration Requester Extension**: [東京 春子](Practitioner-jp-practitioner-example-female-1.md)

**JP Core MedicationAdministration RequestAuthoredOn Extension**: 2016-08-25 00:00:00+0900

**JP Core MedicationAdministration Location Extension**: [09A病棟 021病室 4ベッド](Location-jp-location-example-ward.md)

**identifier**: [JP_Medication_RpGroup_Number_NamingSystem](NamingSystem-jp-medication-rpgroup-number-namingsystem.md)/1, [JP_Medication_RpGruop_Index_NamingSystem](NamingSystem-jp-medication-rpgruop-index-namingsystem.md)/1, [JP_IdSystem_PrescriptionDocumentID_NamingSystem](NamingSystem-jp-IdSystem-prescriptionDocumentID-namingsystem.md)/1234567890.1.1

**status**: Completed

**category**: Inpatient Order

**medication**: ムコダイン錠２５０ｍｇ

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2016-08-25 08:30:00+0900

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Performer | [福岡 花子](Practitioner-jp-practitioner-example-female-1.md) |

**request**: [MedicationRequest: identifier = http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber#JP_Medication_RpGroup_Number_NamingSystem#1,http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex#JP_Medication_RpGruop_Index_NamingSystem#1,http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier#JP_core_resourceInstance_identifier_NamingSystem#1234567890.1.1,urn:oid:1.2.392.100495.20.3.11#JP_IdSystem_PrescriptionDocumentID_NamingSystem#20241101-0000000000000001; status = active; intent = order; medication[x] = ムコダイン錠２５０ｍｇ; authoredOn = 2020-04-01 12:28:17+0900](MedicationRequest-jp-medicationrequest-example-1.md)

### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Route** | **Method** | **Dose** |
| * | 経口 | 内服 | 1 錠(Details: JP Core Medication MERIT9 Unit CodeSystem codeTAB = '錠') |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "jp-medicationadministration-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_MedicationAdministration"
    ]
  },
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_RequestDepartment",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
            "code" : "01",
            "display" : "内科"
          }
        ]
      }
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Requester",
      "valueReference" : {
        "reference" : "Practitioner/jp-practitioner-example-female-1",
        "display" : "東京 春子"
      }
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_RequestAuthoredOn",
      "valueDateTime" : "2016-08-25T00:00:00+09:00"
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_MedicationAdministration_Location",
      "valueReference" : {
        "reference" : "Location/jp-location-example-ward",
        "display" : "09A病棟 021病室 4ベッド"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/Medication-RPGroupNumber",
      "value" : "1"
    },
    {
      "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicationAdministrationIndex",
      "value" : "1"
    },
    {
      "system" : "urn:oid:1.2.392.100495.20.3.11",
      "value" : "1234567890.1.1"
    }
  ],
  "status" : "completed",
  "category" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0482",
        "code" : "I",
        "display" : "Inpatient Order"
      }
    ]
  },
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
  "effectiveDateTime" : "2016-08-25T08:30:00+09:00",
  "performer" : [
    {
      "function" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/med-admin-perform-function",
            "code" : "performer",
            "display" : "Performer"
          }
        ]
      },
      "actor" : {
        "reference" : "Practitioner/jp-practitioner-example-female-1",
        "display" : "福岡 花子"
      }
    }
  ],
  "request" : {
    "reference" : "MedicationRequest/jp-medicationrequest-example-1"
  },
  "dosage" : {
    "route" : {
      "coding" : [
        {
          "system" : "http://jami.jp/CodeSystem/MedicationMethodDetailUsage",
          "code" : "10",
          "display" : "経口"
        }
      ]
    },
    "method" : {
      "coding" : [
        {
          "system" : "http://jami.jp/CodeSystem/MedicationMethodBasicUsage",
          "code" : "1",
          "display" : "内服"
        }
      ]
    },
    "dose" : {
      "value" : 1,
      "unit" : "錠",
      "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationUnitMERIT9Code",
      "code" : "TAB"
    }
  }
}

```
