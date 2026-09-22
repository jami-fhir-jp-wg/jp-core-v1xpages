# JP Core Specimen Example 検体材料（血液） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Specimen Example 検体材料（血液）**

## Example Specimen: JP Core Specimen Example 検体材料（血液）

Profile: [JP_Specimen_Common](StructureDefinition-jp-specimen-common.md)

**identifier**: [JP_local_example_identifiersystem_NamingSystem](NamingSystem-jp-example-local-identifiersystem.md)/23234352357

**accessionIdentifier**: [JP_local_example_identifiersystem_NamingSystem](NamingSystem-jp-example-local-identifiersystem.md)/X352357

**status**: Available

**type**: Whole blood

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**receivedTime**: 2021-08-11 11:03:00+0900

### Containers

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Identifier** | **Description** | **Type** | **Capacity** | **SpecimenQuantity** |
| * | 48736-15394-75467 | 採血管 | 採血管 | 20 mL | 18 mL |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "jp-specimen-example-2",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Specimen_Common"
    ]
  },
  "identifier" : [
    {
      "system" : "http://example.org/abc-hospital/identifiers/collections",
      "value" : "23234352357"
    }
  ],
  "accessionIdentifier" : {
    "system" : "http://example.org/abc-hospital/specimens/2011",
    "value" : "X352357"
  },
  "status" : "available",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0487",
        "code" : "BLD",
        "display" : "Whole blood"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "receivedTime" : "2021-08-11T11:03:00+09:00",
  "container" : [
    {
      "identifier" : [
        {
          "value" : "48736-15394-75467"
        }
      ],
      "description" : "採血管",
      "type" : {
        "text" : "採血管"
      },
      "capacity" : {
        "value" : 20,
        "unit" : "mL"
      },
      "specimenQuantity" : {
        "value" : 18,
        "unit" : "mL"
      }
    }
  ]
}

```
