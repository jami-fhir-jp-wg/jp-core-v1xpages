# JP Core Observation Radiology Impression Example 画像診断報告書（インプレッション） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Radiology Impression Example 画像診断報告書（インプレッション）**

## Example Observation: JP Core Observation Radiology Impression Example 画像診断報告書（インプレッション）

Profile: [JP Core Observation Radiology Impression Profile](StructureDefinition-jp-observation-radiology-impression.md)

**status**: Final

**category**: Imaging

**code**: Radiology Imaging study [Impression] (narrative)

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2021-10-18 11:00:00+0900

**issued**: 2021-10-19 10:00:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**value**: ひだり肺上葉の空洞性病変。 肺腺癌を疑う。みぎ肺上葉陳旧性炎症性瘢痕。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-radiology-impression-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Radiology_Impression"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_SimpleObservationCategory_CS",
          "code" : "imaging",
          "display" : "Imaging"
        }
      ],
      "text" : "Imaging"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "19005-8",
        "display" : "Radiology Imaging study [Impression] (narrative)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectiveDateTime" : "2021-10-18T11:00:00+09:00",
  "issued" : "2021-10-19T10:00:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "valueString" : "ひだり肺上葉の空洞性病変。 肺腺癌を疑う。みぎ肺上葉陳旧性炎症性瘢痕。"
}

```
