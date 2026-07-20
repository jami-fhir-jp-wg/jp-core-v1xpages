# JP Core Observation Radiology Findings Example 画像診断報告書（所見） - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation Radiology Findings Example 画像診断報告書（所見）**

## Example Observation: JP Core Observation Radiology Findings Example 画像診断報告書（所見）

Profile: [JP Core Observation Radiology Findings Profile](StructureDefinition-jp-observation-radiology-findings.md)

**status**: Final

**category**: Imaging

**code**: Radiology Study observation (narrative)

**subject**: [山田 太郎 Male, DoB: 1970-01-01 ( urn:oid:1.2.392.100495.20.3.51.11311234567#JP_local_patient_identifier_11311234567_NamingSystem#00000010)](Patient-jp-patient-example-1.md)

**effective**: 2021-10-19 10:00:00+0900

**issued**: 2021-10-19 10:00:00+0900

**performer**: [Practitioner 大阪 一郎](Practitioner-jp-practitioner-example-male-1.md)

**value**: 心拡大は無く、心嚢液も見られない。\n 胸部大動脈は蛇行があるも径は正常範囲内。ひだり椎骨動脈が大動脈弓より直接分岐している。大動脈壁に小さな石灰化がみられ軽微な動脈硬化性変化が見られる。\n ひだり肺上葉に2.2 x 1.5 cm大の空洞性病変を認める(Image 31/110)。壁には充実性成分を含み不整な造影濃度を示す。みぎ肺上葉に気管支拡張を伴う線状影を認めるが、こちらは炎症性瘢痕として矛盾しない。気管には異常を認めず。肺尖部に炎症後変化と思われる胸膜肥厚は見られる。胸水は認めない。\n 腋窩，縦郭および肺門リンパ節の腫大は認めず。甲状腺は正常範囲。\n スキャン範囲内の腹部には異常を認めず。骨病変も認めない。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "jp-observation-radiology-findings-example-1",
  "meta" : {
    "profile" : [
      "http://jpfhir.jp/fhir/core/StructureDefinition/JP_Observation_Radiology_Findings"
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
        "code" : "18782-3",
        "display" : "Radiology Study observation (narrative)"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/jp-patient-example-1"
  },
  "effectiveDateTime" : "2021-10-19T10:00:00+09:00",
  "issued" : "2021-10-19T10:00:00+09:00",
  "performer" : [
    {
      "reference" : "Practitioner/jp-practitioner-example-male-1"
    }
  ],
  "valueString" : "心拡大は無く、心嚢液も見られない。\\n 胸部大動脈は蛇行があるも径は正常範囲内。ひだり椎骨動脈が大動脈弓より直接分岐している。大動脈壁に小さな石灰化がみられ軽微な動脈硬化性変化が見られる。\\n ひだり肺上葉に2.2 x 1.5 cm大の空洞性病変を認める(Image 31/110)。壁には充実性成分を含み不整な造影濃度を示す。みぎ肺上葉に気管支拡張を伴う線状影を認めるが、こちらは炎症性瘢痕として矛盾しない。気管には異常を認めず。肺尖部に炎症後変化と思われる胸膜肥厚は見られる。胸水は認めない。\\n 腋窩，縦郭および肺門リンパ節の腫大は認めず。甲状腺は正常範囲。\\n スキャン範囲内の腹部には異常を認めず。骨病変も認めない。"
}

```
