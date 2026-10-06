# JP Core Immunization Example 肺炎球菌ワクチン接種 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Immunization Example 肺炎球菌ワクチン接種**

## Example Immunization: JP Core Immunization Example 肺炎球菌ワクチン接種

Profile: [JP Core Immunization Profile](StructureDefinition-jp-immunization.md)

**JP Core Immunization DueDateOfNextDose Extension**: 2021-10-10

**JP Core Immunization ManufacturedDate Extension**: 2021-03-01

**JP Core Immunization CertificatedDate Extension**: 2021-03-15

**status**: Completed

**vaccineCode**: 肺炎球菌ワクチン

**patient**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**occurrence**: 2021-07-01 10:30:00+0900

**lotNumber**: 12345678

**site**: left arm

**doseQuantity**: 0.45 mL(Details: UCUM codemL = 'mL')

### Performers

| | | |
| :--- | :--- | :--- |
| - | **Function** | **Actor** |
| * | Administering Provider | [大阪 一郎](Practitioner-jp-practitioner-example-male-1.md) |

### ProtocolApplieds

| | | |
| :--- | :--- | :--- |
| - | **TargetDisease** | **DoseNumber[x]** |
| * | 肺炎球菌感染症 | 1 |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "jp-immunization-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Immunization"
    ]
  },
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_DueDateOfNextDose",
      "valueDate" : "2021-10-10"
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_ManufacturedDate",
      "valueDate" : "2021-03-01"
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Immunization_CertificatedDate",
      "valueDate" : "2021-03-15"
    }
  ],
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [
      {
        "system" : "http://capstandard.jp/iyaku.info/CodeSystem/YJ-code",
        "code" : "6311400A1010",
        "display" : "肺炎球菌ワクチン"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "occurrenceDateTime" : "2021-07-01T10:30:00+09:00",
  "lotNumber" : "12345678",
  "site" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActSite",
        "code" : "LA",
        "display" : "left arm"
      }
    ]
  },
  "doseQuantity" : {
    "value" : 0.45,
    "unit" : "mL",
    "system" : "http://unitsofmeasure.org",
    "code" : "mL"
  },
  "performer" : [
    {
      "function" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
            "code" : "AP",
            "display" : "Administering Provider"
          }
        ]
      },
      "actor" : {
        "reference" : "Practitioner/jp-practitioner-example-male-1",
        "display" : "大阪 一郎"
      }
    }
  ],
  "protocolApplied" : [
    {
      "targetDisease" : [
        {
          "coding" : [
            {
              "system" : "http://medis.or.jp/CodeSystem/master-disease-exCode",
              "code" : "VQH3",
              "display" : "肺炎球菌感染症"
            }
          ]
        }
      ],
      "doseNumberPositiveInt" : 1
    }
  ]
}

```
