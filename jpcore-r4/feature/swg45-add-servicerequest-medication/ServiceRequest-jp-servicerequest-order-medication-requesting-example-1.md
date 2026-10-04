# JP Core ServiceRequest Order Medication Requesting Example 処方オーダ - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Medication Requesting Example 処方オーダ**

## Example ServiceRequest: JP Core ServiceRequest Order Medication Requesting Example 処方オーダ

Profile: [JP Core ServiceRequest Order Medication Requesting Profile](StructureDefinition-jp-servicerequest-order-medication-requesting.md)

**identifier**: [JP_core_resourceInstance_identifier_NamingSystem](NamingSystem-jp-core-resourceInstance-identifier.md)/1234567890

**requisition**: [JP_core_resourceInstance_identifier_NamingSystem](NamingSystem-jp-core-resourceInstance-identifier.md)/1234567890

**status**: Active

**intent**: Order

**category**: 処方, 外来処方, 院外処方

**code**: 処方オーダ

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**authoredOn**: 2026-04-01 10:00:00+0900

**requester**: [Practitioner 東京 春子](Practitioner-jp-practitioner-example-female-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "jp-servicerequest-order-medication-requesting-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Medication_Requesting"
    ]
  },
  "identifier" : [
    {
      "system" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
      "value" : "1234567890"
    }
  ],
  "requisition" : {
    "system" : "http://jpfhir.jp/fhir/core/IdSystem/resourceInstance-identifier",
    "value" : "1234567890"
  },
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequestOrderCategory_CS",
          "code" : "prescription",
          "display" : "処方"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS",
          "code" : "OHP",
          "display" : "外来処方"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationCategoryMERIT9_CS",
          "code" : "OHO",
          "display" : "院外処方"
        }
      ]
    }
  ],
  "code" : {
    "text" : "処方オーダ"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "authoredOn" : "2026-04-01T10:00:00+09:00",
  "requester" : {
    "reference" : "Practitioner/jp-practitioner-example-female-1"
  }
}

```
