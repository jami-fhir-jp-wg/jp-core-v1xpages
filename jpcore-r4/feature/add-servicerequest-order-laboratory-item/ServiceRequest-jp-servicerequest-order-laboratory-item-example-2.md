# JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（クレアチニン） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（クレアチニン）**

## Example ServiceRequest: JP Core ServiceRequest Order Laboratory Item Example 個別検査項目（クレアチニン）

Profile: [JP Core ServiceRequest Order Laboratory Item Profile](StructureDefinition-jp-servicerequest-order-laboratory-item.md)

**identifier**: `http://example.org/abc-hospital/fhir/ServiceRequest/orderItemNo`/000000000012345_12345678_023_03015

**status**: Active

**intent**: Order

**category**: Laboratory

**priority**: Routine

**code**: クレアチニン

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**encounter**: [Encounter: status = finished; class = 外来 (ActCode#AMB); period = 2022-05-08 13:08:24+0900 --> 2022-05-08 13:23:24+0900](Encounter-jp-encounter-example-1.md)

**occurrence**: 2021-10-19 01:15:00+0900

**authoredOn**: 2021-10-19 01:00:00+0900

**requester**: [Practitioner 東京 春子](Practitioner-jp-practitioner-example-female-1.md)

**performerType**: 検体検査部門

**performer**: [Organization ＡＢＣ検査株式会社](Organization-jp-organization-example-inspection.md)

**reasonCode**: 化学療法前の腎機能評価

**reasonReference**: [Condition](Condition-jp-condition-example-1.md)

**insurance**: [Coverage: extension = あいう,１８７,05; identifier = http://jpfhir.jp/fhir/clins/Idsystem/JP_Insurance_memberID#JP_insurance_memberID_identifier_NamingSystem#00012345:あいう:１８７:05; status = active; type = public healthcare; subscriberId = あいう:１８７; dependent = 05](Coverage-jp-coverage-example-1.md)

**specimen**: [Specimen: identifier = http://example.org/abc-hospital/identifiers/collections#JP_local_example_identifiersystem_NamingSystem#23234352356; accessionIdentifier = http://example.org/abc-hospital/specimens/2011#JP_local_example_identifiersystem_NamingSystem#X352356; status = available; type = Urine; receivedTime = 2021-10-11 11:03:00+0900](Specimen-jp-specimen-example-1.md)

**note**: 

> 

化学療法の開始前日までに結果が必要。


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
  "priority" : "routine",
  "code" : {
    "coding" : [
      {
        "system" : "http://example.org/abc-hospital/fhir/Observation/localcode",
        "code" : "03015",
        "display" : "クレアチニン"
      },
      {
        "system" : "http://medis.or.jp/CodeSystem/master-JLAC10-17digits",
        "code" : "3C015000002327101"
      }
    ],
    "text" : "クレアチニン"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "encounter" : {
    "reference" : "Encounter/jp-encounter-example-1"
  },
  "occurrenceDateTime" : "2021-10-19T01:15:00+09:00",
  "authoredOn" : "2021-10-19T01:00:00+09:00",
  "requester" : {
    "reference" : "Practitioner/jp-practitioner-example-female-1"
  },
  "performerType" : {
    "text" : "検体検査部門"
  },
  "performer" : [
    {
      "reference" : "Organization/jp-organization-example-inspection"
    }
  ],
  "reasonCode" : [
    {
      "text" : "化学療法前の腎機能評価"
    }
  ],
  "reasonReference" : [
    {
      "reference" : "Condition/jp-condition-example-1"
    }
  ],
  "insurance" : [
    {
      "reference" : "Coverage/jp-coverage-example-1"
    }
  ],
  "specimen" : [
    {
      "reference" : "Specimen/jp-specimen-example-1"
    }
  ],
  "note" : [
    {
      "text" : "化学療法の開始前日までに結果が必要。"
    }
  ]
}

```
