# JP Core Medication Substitution Prohibition Reason CodeSystem - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Medication Substitution Prohibition Reason CodeSystem**

## CodeSystem: JP Core Medication Substitution Prohibition Reason CodeSystem 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationSubstitutionProhibitionReason_CS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_MedicationSubstitutionProhibitionReason_CS
* **項目**: *Title*
  * **内容**: JP Core Medication Substitution Prohibition Reason CodeSystem
* **項目**: *Status*
  * **内容**: Active ( 2026-05-09 )
* **項目**: *Copyright*
  * **内容**: FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
後発医薬品への変更不可理由を示すコードシステム。令和6年保険改訂（2024年10月施行）により導入された長期収載医薬品の変更不可理由区分を定義する。MedicationRequest.substitution.reason および MedicationDispense.substitution.reason に使用する。 

 This Code system is referenced in the content logical definition of the following value sets: 

* [JP_MedicationSubstitutionProhibitionReason_VS](ValueSet-jp-medication-substitution-prohibition-reason-vs.md)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "jp-medication-substitution-prohibition-reason-cs",
  "url" : "http://jpfhir.jp/fhir/core/CodeSystem/JP_MedicationSubstitutionProhibitionReason_CS",
  "version" : "1.3.0-dev",
  "name" : "JP_MedicationSubstitutionProhibitionReason_CS",
  "title" : "JP Core Medication Substitution Prohibition Reason CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-09",
  "publisher" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)",
  "contact" : [
    {
      "name" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI)",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://jpfhir.jp"
        },
        {
          "system" : "email",
          "value" : "office@hlfhir.jp"
        }
      ]
    }
  ],
  "description" : "後発医薬品への変更不可理由を示すコードシステム。令和6年保険改訂（2024年10月施行）により導入された長期収載医薬品の変更不可理由区分を定義する。MedicationRequest.substitution.reason および MedicationDispense.substitution.reason に使用する。",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "JP",
          "display" : "Japan"
        }
      ]
    }
  ],
  "copyright" : "FHIR Japanese implementation research working group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "medical-necessity",
      "display" : "Medical Necessity",
      "definition" : "医療上の必要性が認められるため長期収載医薬品からの変更を不可とする。保険給付は先発医薬品の薬価に対して適用される。"
    },
    {
      "code" : "patient-request",
      "display" : "Patient Request",
      "definition" : "患者の希望により長期収載医薬品からの変更を不可とする。選定療養の対象となり、先発医薬品と後発医薬品の差額の4分の1を患者が負担する。"
    }
  ]
}

```
