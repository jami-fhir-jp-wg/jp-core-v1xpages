# JP Core Patient Example 患者男性 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Patient Example 患者男性**

## Example Patient: JP Core Patient Example 患者男性

Profile: [JP Core Patient Profile](StructureDefinition-jp-patient.md)

山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)

-------

| | |
| :--- | :--- |
| Alt. Name: | ヤマダ タロウ |
| Contact Detail | * ph: 0312345678(Home)
* 東京都新宿区
 |
| [Patient Birth Place](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-birthPlace.html) | 東京 |
| [JP Core Patient Race Extension](StructureDefinition-jp-patient-race.md) | Japanese |
| [Patient Religion](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-religion.html) | Shinto |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "jp-patient-example-1",
  "meta" : {
    "profile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient"]
  },
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-religion",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation",
            "code" : "1046",
            "display" : "Shinto"
          }
        ]
      }
    },
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
      "valueAddress" : {
        "state" : "東京"
      }
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Patient_Race",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v3-Race",
            "code" : "2039-6",
            "display" : "Japanese"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "urn:oid:1.2.392.100495.20.3.51.11311234567",
      "value" : "00000010"
    }
  ],
  "name" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "IDE"
        }
      ],
      "use" : "usual",
      "text" : "山田 太郎",
      "family" : "山田",
      "given" : ["太郎"]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "SYL"
        }
      ],
      "use" : "usual",
      "text" : "ヤマダ タロウ",
      "family" : "ヤマダ",
      "given" : ["タロウ"]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "0312345678",
      "use" : "home"
    }
  ],
  "gender" : "male",
  "birthDate" : "1970-01-01",
  "address" : [
    {
      "text" : "東京都新宿区",
      "postalCode" : "160-0023"
    }
  ]
}

```
