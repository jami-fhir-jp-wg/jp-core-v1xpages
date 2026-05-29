# jp-patient-kanasort-sp - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **jp-patient-kanasort-sp**

## SearchParameter: jp-patient-kanasort-sp 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/SearchParameter/JP_Patient_KanaSort_SP
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Patient_KanaSort_SP
* **項目**: *Status*
  * **内容**: Active ( 2024-12-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

 
Patientリソースをカナ名称でソートするための検索を定義する。検索に_sort=jp-kana-sortを指定すると、name.use=usualかつカナと指定されているname.text（フルネーム）を使ったソートを行う。 

## JP_Patient_KanaSort_SP

Parameter `jp-kana-sort`:`string`

Patientリソースをカナ名称でソートするための検索を定義する。検索に_sort=jp-kana-sortを指定すると、name.use=usualかつカナと指定されているname.text（フルネーム）を使ったソートを行う。

| | |
| :--- | :--- |
| Resource | [Patient](http://hl7.org/fhir/R4/patient.html) |
| Expression | `Patient.name.where(extension('http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation').value.ofType(code)='SYL' and use='usual').text` |
| Processing Mode | Phonetic |
| Multiples | * multipleAnd: It's up to the server whether the parameter may repeat in order to specify multiple values that must all be true
* multipleOr: It's up to the server whether the parameter can have multiple values (separated by comma) where at least one must be true
 |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "jp-patient-kanasort-sp",
  "url" : "http://jpfhir.jp/fhir/core/SearchParameter/JP_Patient_KanaSort_SP",
  "version" : "1.3.0-dev",
  "name" : "JP_Patient_KanaSort_SP",
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
  "description" : "Patientリソースをカナ名称でソートするための検索を定義する。検索に_sort=jp-kana-sortを指定すると、name.use=usualかつカナと指定されているname.text（フルネーム）を使ったソートを行う。",
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
  "code" : "jp-kana-sort",
  "base" : ["Patient"],
  "type" : "string",
  "expression" : "Patient.name.where(extension('http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation').value.ofType(code)='SYL' and use='usual').text",
  "xpathUsage" : "phonetic"
}

```
