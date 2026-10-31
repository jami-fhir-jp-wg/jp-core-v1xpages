# Search Parameter - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**FHIR Contents List**](group-fhircontents.md)
* **Search Parameter**

## Search Parameter

検索パラメータ(Search Parameter)は、機能定義の一部であり、各サイトごとにどのような検索方法を提供するかを決定するものである。派生先の各サイトはFHIR BaseもしくはJP Coreに定義されるSearch Parameterを利用可能であり、もし定義がない場合に独自に定義をすることも可能である。JP CoreではFHIR Baseで定義されていないもので、派生先サイトで利用する可能性の高いものを定義している。

### JP Core定義 Search Parameter一覧

* [JP_Coverage_InsuredPersonNumber_SP](SearchParameter-jp-coverage-insuredpersonnumber-sp.md)
* [JP_Coverage_InsuredPersonSubNumber_SP](SearchParameter-jp-coverage-insuredpersonsubnumber-sp.md)
* [JP_Coverage_InsuredPersonSymbol_SP](SearchParameter-jp-coverage-insuredpersonsymbol-sp.md)
* [JP_MedicationRequest_Start_SP](SearchParameter-jp-medicationrequest-start-sp.md)
* [JP_Organization_InsuranceOrganizationCategory_SP](SearchParameter-jp-organization-insuranceorganizationcategory-sp.md)
* [JP_Organization_InsuranceOrganizationNo_SP](SearchParameter-jp-organization-insuranceorganizationno-sp.md)
* [JP_Organization_PrefectureNo_SP](SearchParameter-jp-organization-prefectureno-sp.md)
* [JP_Patient_KanaSort_SP](SearchParameter-jp-patient-kanasort-sp.md)

### FHIR Base 定義済み検索パラメーター

FHIR Baseにて定義済み検索パラメータ([Defined Search Parameters](https://www.hl7.org/fhir/R4/searchparameter-registry.html))が記載されており、相互運用性の高めるためにもこれを利用することを推奨する(**SHOULD**)。
 定義済み検索パラメータは`http://hl7.org/fhir/SearchParameter/[id]`の命名規則の定義URLにて利用可能である。

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。