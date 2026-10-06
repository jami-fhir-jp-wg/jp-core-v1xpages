# JP Core Location Example 病棟 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Location Example 病棟**

## Example Location: JP Core Location Example 病棟

Profile: [JP Core Location Profile](StructureDefinition-jp-location.md)

**identifier**: 09A.021.4

**status**: Active

**name**: 09A病棟 021病室 4ベッド

**description**: 09A病棟 021病室 4ベッド

**mode**: Instance

**type**: ward

**telecom**: ph: 3478

**physicalType**: Bed

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "jp-location-example-ward",
  "meta" : {
    "profile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
  },
  "identifier" : [
    {
      "value" : "09A.021.4"
    }
  ],
  "status" : "active",
  "name" : "09A病棟 021病室 4ベッド",
  "description" : "09A病棟 021病室 4ベッド",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "WARD"
        }
      ]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "3478"
    }
  ],
  "physicalType" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/location-physical-type",
        "code" : "bd"
      }
    ]
  }
}

```
