# JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（クレアチニン） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（クレアチニン）**

## Example ServiceRequest: JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（クレアチニン）

Profile: [JP Core ServiceRequest Order Laboratory Item Profile](StructureDefinition-jp-servicerequest-order-laboratory-item.md)

**identifier**: `http://example.org/abc-hospital/fhir/ServiceRequest/orderItemNo`/000000000012345_12345678_023_03015

**status**: Active

**intent**: Order

**code**: クレアチニン

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**occurrence**: 2021-10-19 01:15:00+0900

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "jp-servicerequest-order-laboratory-item-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Laboratory_Item"
    ]
  },
  "identifier" : [
    {
      "system" : "http://example.org/abc-hospital/fhir/ServiceRequest/orderItemNo",
      "value" : "000000000012345_12345678_023_03015"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
        "code" : "03015",
        "display" : "クレアチニン"
      }
    ],
    "text" : "クレアチニン"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "occurrenceDateTime" : "2021-10-19T01:15:00+09:00"
}

```
