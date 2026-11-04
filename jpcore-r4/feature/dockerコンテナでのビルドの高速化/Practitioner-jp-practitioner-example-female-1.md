# JP Core Practitioner Example 医師女性１ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Practitioner Example 医師女性１**

## Example Practitioner: JP Core Practitioner Example 医師女性１

Profile: [JP Core Practitioner Profile](StructureDefinition-jp-practitioner.md)

**name**: 東京 春子, トウキョウ ハルコ

**gender**: Female

> **qualification****identifier**:[JP_prefecture_IdSystem_NamingSystem](NamingSystem-jp-prefecture-IdSystem.md)/999-12345**code**:麻薬施用者番号

> **qualification****identifier**:[JP_prefecture_IdSystem_NamingSystem](NamingSystem-jp-prefecture-IdSystem.md)/999-54321**code**:麻薬施用者番号

> **qualification****identifier**:[JP_Medical_Registration_Number_NamingSystem](NamingSystem-jp-medical-registration-number-namingsystem.md)/999999-00001**code**:医籍登録番号

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "jp-practitioner-example-female-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner"
    ]
  },
  "name" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "IDE"
        }
      ],
      "text" : "東京 春子",
      "family" : "東京",
      "given" : ["春子"]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "SYL"
        }
      ],
      "text" : "トウキョウ ハルコ",
      "family" : "トウキョウ",
      "given" : ["ハルコ"]
    }
  ],
  "gender" : "female",
  "qualification" : [
    {
      "identifier" : [
        {
          "system" : "urn:oid:1.2.392.100495.20.3.32.113",
          "value" : "999-12345"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicalLicenseCertificate_CS",
            "code" : "narcotics-practitioner"
          }
        ]
      }
    },
    {
      "identifier" : [
        {
          "system" : "urn:oid:1.2.392.100495.20.3.32.101",
          "value" : "999-54321"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicalLicenseCertificate_CS",
            "code" : "narcotics-practitioner"
          }
        ]
      }
    },
    {
      "identifier" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/medicalRegistrationNumber",
          "value" : "999999-00001"
        }
      ],
      "code" : {
        "coding" : [
          {
            "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicalLicenseCertificate_CS",
            "code" : "medical-registration"
          }
        ]
      }
    }
  ]
}

```
