# jp-familymemberhistory-example-list - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-familymemberhistory-example-list**

## Example List: jp-familymemberhistory-example-list

| | | |
| :--- | :--- | :--- |
| Mode: Snapshot List | Status: Current | Code: History of family member diseases |
| Subject:[山田 太郎](Patient-jp-patient-example-1.md) | | |

* **Items**: [母親](FamilyMemberHistory-jp-familymemberhistory-example-1.md)
* **Items**: [息子（長男）](FamilyMemberHistory-jp-familymemberhistory-example-2.md)
* **Items**: [内縁のパートナー](FamilyMemberHistory-jp-familymemberhistory-example-3.md)
* **Items**: [母方のおば（次女）](FamilyMemberHistory-jp-familymemberhistory-example-4.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "jp-familymemberhistory-example-list",
  "status" : "current",
  "mode" : "snapshot",
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "8670-2",
        "display" : "History of family member diseases"
      }
    ],
    "text" : "家族歴"
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1",
    "display" : "山田 太郎"
  },
  "entry" : [
    {
      "item" : {
        "reference" : "FamilyMemberHistory/jp-familymemberhistory-example-1",
        "display" : "母親"
      }
    },
    {
      "item" : {
        "reference" : "FamilyMemberHistory/jp-familymemberhistory-example-2",
        "display" : "息子（長男）"
      }
    },
    {
      "item" : {
        "reference" : "FamilyMemberHistory/jp-familymemberhistory-example-3",
        "display" : "内縁のパートナー"
      }
    },
    {
      "item" : {
        "reference" : "FamilyMemberHistory/jp-familymemberhistory-example-4",
        "display" : "母方のおば（次女）"
      }
    }
  ]
}

```
