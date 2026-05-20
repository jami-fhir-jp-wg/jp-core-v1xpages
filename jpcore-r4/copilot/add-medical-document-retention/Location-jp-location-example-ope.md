# JP Core Location Example 手術室 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Location Example 手術室**

## Example Location: JP Core Location Example 手術室

Profile: [JP Core Location Profile](StructureDefinition-jp-location.md)

**identifier**: B1-S.F2.1.00

**status**: Suspended

**operationalStatus**: [bedStatus: H](http://terminology.hl7.org/7.1.0/CodeSystem-v2-0116.html#v2-0116-H) (Housekeeping)

**name**: 南ウィング 神経放射線科 手術室1

**alias**: 南ウィング 神経放射線科 手術室5, メインウィング 神経放射線科 手術室2

**description**: South Wing, Neuro Radiology Operation Room 1 on second floor

**mode**: Instance

**type**: Neuroradiology unit

**telecom**: ph: 2329

**physicalType**: Room

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "jp-location-example-ope",
  "meta" : {
    "profile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
  },
  "identifier" : [
    {
      "value" : "B1-S.F2.1.00"
    }
  ],
  "status" : "suspended",
  "operationalStatus" : {
    "system" : "http://terminology.hl7.org/CodeSystem/v2-0116",
    "code" : "H"
  },
  "name" : "南ウィング　神経放射線科　手術室1",
  "alias" : ["南ウィング　神経放射線科　手術室5", "メインウィング　神経放射線科　手術室2"],
  "description" : "South Wing, Neuro Radiology Operation Room 1 on second floor",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "RNEU"
        }
      ]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "2329"
    }
  ],
  "physicalType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "ro"
      }
    ]
  }
}

```
