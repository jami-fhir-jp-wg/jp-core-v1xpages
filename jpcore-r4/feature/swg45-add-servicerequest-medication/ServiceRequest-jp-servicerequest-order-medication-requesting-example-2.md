# JP Core ServiceRequest Order Medication Requesting Example 注射オーダ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Medication Requesting Example 注射オーダ**

## Example ServiceRequest: JP Core ServiceRequest Order Medication Requesting Example 注射オーダ

Profile: [JP Core ServiceRequest Order Medication Requesting Profile](StructureDefinition-jp-servicerequest-order-medication-requesting.md)

**identifier**: [JP_core_resourceInstance_identifier_NamingSystem](NamingSystem-jp-core-resourceInstance-identifier.md)/1234567891

**requisition**: [JP_core_resourceInstance_identifier_NamingSystem](NamingSystem-jp-core-resourceInstance-identifier.md)/1234567891

**status**: Active

**intent**: Order

**category**: 注射, 入院処方, 定時処方

**code**: 注射オーダ

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**authoredOn**: 2026-04-01 09:00:00+0900

**requester**: [Practitioner 東京 春子](Practitioner-jp-practitioner-example-female-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "jp-servicerequest-order-medication-requesting-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Medication_Requesting"
    ]
  },
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
      "value" : "1234567891"
    }
  ],
  "requisition" : {
    "system" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
    "value" : "1234567891"
  },
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequestOrderCategory_CS",
          "code" : "injection",
          "display" : "注射"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS",
          "code" : "IHP",
          "display" : "入院処方"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JHSI0001",
          "code" : "FTP",
          "display" : "定時処方"
        }
      ]
    }
  ],
  "code" : {
    "text" : "注射オーダ"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "authoredOn" : "2026-04-01T09:00:00+09:00",
  "requester" : {
    "reference" : "Practitioner/jp-practitioner-example-female-1"
  }
}

```
