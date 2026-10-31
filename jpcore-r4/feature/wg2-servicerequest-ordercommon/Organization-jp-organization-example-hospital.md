# JP Core Organization Example 病院 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Organization Example 病院**

## Example Organization: JP Core Organization Example 病院

Profile: [JP Core Organization Profile](StructureDefinition-jp-organization.md)

**JP Core Organization PrefectureNo Extension**: [JP Core PrefectureNumber CodeSystem: 13](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/core/mhlw/CodeSystem/PrefectureNo-2digits#jp-prefecturenumber-cs-13) (東京都)

**JP Core Organization InsuranceOrganizationCategory Extension**: [JP Core MedicalFeeScoreType CodeSystem: 1](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationFeeScoreType#jp-medicalfeescoretype-cs-1) (医科)

**JP Core Organization InsuranceOrganizationNo Extension**: [JP_Medical_OrganizationID_NamingSystem](NamingSystem-jp-medical-organizationid-namingsystem.md)/9876543

**identifier**: [JP_imedical_institution_identifier_NamingSystem](NamingSystem-jp-medical-institution-identifier.md)/1319876543

**name**: 健康第一病院

**address**: 東京都文京区本郷Ｙ−Ｙ−Ｙ

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "jp-organization-example-hospital",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization"
    ]
  },
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_PrefectureNo",
      "valueCoding" : {
        "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/PrefectureNo-2digits",
        "code" : "13"
      }
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationCategory",
      "valueCoding" : {
        "system" : "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/MedicationFeeScoreType",
        "code" : "1"
      }
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationNo",
      "valueIdentifier" : {
        "system" : "http://jpfhir.jp/fhir/core/mhlw/IdSystem/MedicalOrganizationID",
        "value" : "9876543"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no",
      "value" : "1319876543"
    }
  ],
  "name" : "健康第一病院",
  "address" : [
    {
      "text" : "東京都文京区本郷Ｙ−Ｙ−Ｙ",
      "line" : ["本郷Ｙ−Ｙ−Ｙ"],
      "city" : "文京区",
      "state" : "東京都",
      "country" : "JPN"
    }
  ]
}

```
