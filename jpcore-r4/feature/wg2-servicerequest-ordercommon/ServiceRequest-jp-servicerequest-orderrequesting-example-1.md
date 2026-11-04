# JP Core ServiceRequest Order Requesting 胸部ＣＴ検査 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core ServiceRequest Order Requesting 胸部ＣＴ検査**

## Example ServiceRequest: JP Core ServiceRequest Order Requesting 胸部ＣＴ検査

Last updated: 2026-10-27 16:21:14+0900

Profiles: [JP Core ServiceRequest Order Common Profile](StructureDefinition-jp-servicerequest-ordercommon.md), [JP Core ServiceRequest Order Requesting Profile](StructureDefinition-jp-servicerequest-orderrequesting.md)

**JP Core ServiceRequest Order Type**: 外来オーダ

**JP Core Common Department Extension**: 呼吸器科

**identifier**: `http://myhospital.com/IdSystem/ServiceRequest`/00000020.20261227.162128.Z999.2.16.XA0.1, Placer Identifier/202612270000301

**status**: Active

**intent**: Order

**category**: 放射線検査

**priority**: Routine

**code**: 胸部ＣＴ検査

**subject**: [患者 花子](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/jpfhir-terminology/Patient/00000020)

**occurrence**: 2026-10-27

**authoredOn**: 2026-10-27 16:21:16+0900

**requester**: [山田 太郎](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/jpfhir-terminology/Practitioner/1234567)

**reasonCode**: 入院時スクリーニング

**reasonReference**: [肺炎](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/jpfhir-terminology/Condition/123)

**insurance**: [組合管掌健康保険](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://jpfhir.jp/fhir/jpfhir-terminology/Coverage/123)

**note**: 

> 

ペースメーカ装着


本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "jp-servicerequest-orderrequesting-example-1",
  "meta" : {
    "lastUpdated" : "2026-10-27T16:21:14+09:00",
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_OrderCommon",
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_ServiceRequest_OrderRequesting"
    ]
  },
  "extension" : [
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_ServiceRequest_OrderType",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0482",
            "code" : "O",
            "display" : "外来オーダ"
          }
        ]
      }
    },
    {
      "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Common_Department",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment",
            "code" : "05",
            "display" : "呼吸器科"
          }
        ]
      }
    }
  ],
  "identifier" : [
    {
      "system" : "http://myhospital.com/IdSystem/ServiceRequest",
      "value" : "00000020.20261227.162128.Z999.2.16.XA0.1"
    },
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PLAC",
            "display" : "Placer Identifier"
          }
        ]
      },
      "system" : "http://myhospital.com/IdSystem/OrderID",
      "value" : "202612270000301"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ServiceRequest_OrderCategory_CS",
          "code" : "radiology",
          "display" : "放射線検査"
        },
        {
          "system" : "http://myhospital.com/CodeSystem/order-category",
          "code" : "C16",
          "display" : "放射線検査"
        }
      ],
      "text" : "放射線検査"
    }
  ],
  "priority" : "routine",
  "code" : {
    "text" : "胸部ＣＴ検査"
  },
  "subject" : {
    "reference" : "Patient/00000020",
    "display" : "患者 花子"
  },
  "occurrenceDateTime" : "2026-10-27",
  "authoredOn" : "2026-10-27T16:21:16+09:00",
  "requester" : {
    "reference" : "Practitioner/1234567",
    "display" : "山田 太郎"
  },
  "reasonCode" : [
    {
      "text" : "入院時スクリーニング"
    }
  ],
  "reasonReference" : [
    {
      "reference" : "Condition/123",
      "display" : "肺炎"
    }
  ],
  "insurance" : [
    {
      "reference" : "Coverage/123",
      "display" : "組合管掌健康保険"
    }
  ],
  "note" : [
    {
      "text" : "ペースメーカ装着"
    }
  ]
}

```
