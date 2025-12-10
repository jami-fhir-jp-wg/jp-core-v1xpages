# jp-organization-insuranceorganizationno-sp - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-organization-insuranceorganizationno-sp**

## SearchParameter: jp-organization-insuranceorganizationno-sp 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/SearchParameter/JP_Organization_InsuranceOrganizationNo_SP
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Organization_InsuranceOrganizationNo_SP
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
OrganizationリソースのInsuranceOrganizationNo(保険医療機関番号)に関する検索を定義する。 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "jp-organization-insuranceorganizationno-sp",
  "url" : "http://jpfhir.jp/fhir/core/SearchParameter/JP_Organization_InsuranceOrganizationNo_SP",
  "version" : "1.3.0-dev",
  "name" : "JP_Organization_InsuranceOrganizationNo_SP",
  "status" : "active",
  "date" : "2024-12-30",
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
  "description" : "OrganizationリソースのInsuranceOrganizationNo(保険医療機関番号)に関する検索を定義する。",
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
  "code" : "jp-insurance-organizationno",
  "base" : ["Organization"],
  "type" : "token",
  "expression" : "Organization.extension('http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Organization_InsuranceOrganizationNo').value.ofType(Identifier)",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "_multipleOr" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }
    ]
  },
  "multipleAnd" : true,
  "_multipleAnd" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }
    ]
  }
}

```
