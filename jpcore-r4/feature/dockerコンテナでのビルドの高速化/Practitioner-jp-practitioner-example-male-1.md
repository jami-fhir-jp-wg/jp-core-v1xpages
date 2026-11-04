# JP Core Practitioner Example 医師男性１ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Practitioner Example 医師男性１**

## Example Practitioner: JP Core Practitioner Example 医師男性１

Profile: [JP Core Practitioner Profile](StructureDefinition-jp-practitioner.md)

**name**: 大阪 一郎, オオサカ イチロウ

**gender**: Male

### Qualifications

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | [JP_Medical_Registration_Number_NamingSystem](NamingSystem-jp-medical-registration-number-namingsystem.md)/999999-00001 | 医籍登録番号 |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "jp-practitioner-example-male-1",
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
      "text" : "大阪 一郎",
      "family" : "大阪",
      "given" : ["一郎"]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation",
          "valueCode" : "SYL"
        }
      ],
      "text" : "オオサカ イチロウ",
      "family" : "オオサカ",
      "given" : ["イチロウ"]
    }
  ],
  "gender" : "male",
  "qualification" : [
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
