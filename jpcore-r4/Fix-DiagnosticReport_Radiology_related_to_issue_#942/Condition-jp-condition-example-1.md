# JP Core Condition Example 病名（直腸癌） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Condition Example 病名（直腸癌）**

## Example Condition: JP Core Condition Example 病名（直腸癌）

Profile: [JP Core Condition Profile](StructureDefinition-jp-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Problem List Item

**severity**: 中度

**code**: KRAS野生型の転移性結腸直腸癌

**bodySite**: 結腸直腸

**subject**: [山田 太郎](Patient-jp-patient-example-1.md)

**onset**: 52 years(Details: UCUM codea = 'a')

**recordedDate**: 2022-08-01

### Evidences

| | |
| :--- | :--- |
| - | **Code** |
| * | 下血 |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "jp-condition-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition"
    ]
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item"
        }
      ]
    }
  ],
  "severity" : {
    "coding" : [
      {
        "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_ConditionSeverity_CS",
        "code" : "MO",
        "display" : "中度"
      }
    ]
  },
  "code" : {
    "text" : "KRAS野生型の転移性結腸直腸癌"
  },
  "bodySite" : [
    {
      "text" : "結腸直腸"
    }
  ],
  "subject" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "onsetAge" : {
    "value" : 52,
    "unit" : "years",
    "system" : "http://unitsofmeasure.org",
    "code" : "a"
  },
  "recordedDate" : "2022-08-01",
  "evidence" : [
    {
      "code" : [
        {
          "text" : "下血"
        }
      ]
    }
  ]
}

```
