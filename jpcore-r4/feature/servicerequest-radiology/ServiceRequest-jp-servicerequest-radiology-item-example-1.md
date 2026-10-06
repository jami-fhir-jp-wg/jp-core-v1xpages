# JP Core ServiceRequest Radiology Item Example 1 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Radiology Item Example 1**

## Example ServiceRequest: JP Core ServiceRequest Radiology Item Example 1

Profile: [JP Core ServiceRequest Radiology Item Profile](StructureDefinition-jp-servicerequest-radiology-item.md)

**basedOn**: [ServiceRequest/jp-servicerequest-example-1](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/jpfhir-terminology/ServiceRequest/jp-servicerequest-example-1)

**requisition**: `http://example.hospital.jp/fhir/order-number`/R20260903001

**status**: Active

**intent**: Order

**category**: 放射線検査

**code**: 胸部X線撮影

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**occurrence**: 2026-09-10 10:00:00+0900

**authoredOn**: 2026-09-03 09:00:00+0900

**requester**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**reasonCode**: 肺炎疑い, 胸部X線検査目的

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "jp-servicerequest-radiology-item-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Radiology_Item"
    ]
  },
  "basedOn" : [
    {
      "reference" : "ServiceRequest/jp-servicerequest-example-1"
    }
  ],
  "requisition" : {
    "system" : "http://example.hospital.jp/fhir/order-number",
    "value" : "R20260903001"
  },
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "code" : "imaging",
          "display" : "放射線検査"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "code" : "TODO",
        "display" : "胸部X線撮影"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "occurrenceDateTime" : "2026-09-10T10:00:00+09:00",
  "authoredOn" : "2026-09-03T09:00:00+09:00",
  "requester" : {
    "reference" : "Practitioner/jp-practitioner-example-male-1"
  },
  "reasonCode" : [
    {
      "text" : "肺炎疑い"
    },
    {
      "text" : "胸部X線検査目的"
    }
  ]
}

```
