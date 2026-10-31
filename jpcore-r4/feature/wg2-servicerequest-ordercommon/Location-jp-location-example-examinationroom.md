# JP Core Location Example 診察室 - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Location Example 診察室**

## Example Location: JP Core Location Example 診察室

Profile: [JP Core Location Profile](StructureDefinition-jp-location.md)

**identifier**: G-101

**status**: Active

**name**: 外来101診察室

**description**: 外来101診察室

**mode**: Instance

**type**: Outpatient facility

**telecom**: ph: 8193

**physicalType**: Room

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "jp-location-example-examinationroom",
  "meta" : {
    "profile" : ["http://jpfhir.jp/fhir/core/StructureDefinition/JP_Location"]
  },
  "identifier" : [
    {
      "value" : "G-101"
    }
  ],
  "status" : "active",
  "name" : "外来101診察室",
  "description" : "外来101診察室",
  "mode" : "instance",
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
          "code" : "OF"
        }
      ]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "8193"
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
