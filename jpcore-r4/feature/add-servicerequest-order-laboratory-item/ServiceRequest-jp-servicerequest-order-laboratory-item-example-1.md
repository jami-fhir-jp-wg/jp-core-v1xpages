# JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（γ-GTP） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（γ-GTP）**

## Example ServiceRequest: JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（γ-GTP）

Profile: [JP Core ServiceRequest Order Laboratory Item Profile](StructureDefinition-jp-servicerequest-order-laboratory-item.md)

**identifier**: `http://example.org/abc-hospital/fhir/ServiceRequest/orderItemNo`/000000000012345_12345678_023_03090

**status**: Active

**intent**: Order

**category**: Laboratory

**code**: γ-GTP

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "jp-servicerequest-order-laboratory-item-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Order_Laboratory_Item"
    ]
  },
  "identifier" : [
    {
      "system" : "http://example.org/abc-hospital/fhir/ServiceRequest/orderItemNo",
      "value" : "000000000012345_12345678_023_03090"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "laboratory"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
        "code" : "03090",
        "display" : "γ-GTP"
      },
      {
        "system" : "http://medis.or.jp/CodeSystem/master-JLAC10-17digits",
        "code" : "3B090000002327201"
      }
    ],
    "text" : "γ-GTP"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  }
}

```
