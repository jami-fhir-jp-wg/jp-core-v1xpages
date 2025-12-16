# JP Core ServiceRequest with Department Extension Example (Text only) - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest with Department Extension Example (Text only)**

## Example ServiceRequest: JP Core ServiceRequest with Department Extension Example (Text only)

Profile: [JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md)

**JP Core Common Department Extension**: 消化器腫瘍外科

**identifier**: `http://abc-hospital.local/serviceRequest-identifier`/SR-2023-0401-001

**status**: Active

**intent**: Order

**code**: CT検査

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**authoredOn**: 2023-04-01 10:00:00+0900

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "jp-servicerequest-department-example-03",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_Common"
    ]
  },
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Common_Department",
      "valueCodeableConcept" : {
        "text" : "消化器腫瘍外科"
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://abc-hospital.local/serviceRequest-identifier",
      "value" : "SR-2023-0401-001"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "code" : {
    "text" : "CT検査"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "authoredOn" : "2023-04-01T10:00:00+09:00"
}

```
