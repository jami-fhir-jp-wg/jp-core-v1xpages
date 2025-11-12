# Endpoint DICOM WADO-RS Example - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Endpoint DICOM WADO-RS Example**

## Example Endpoint: Endpoint DICOM WADO-RS Example

**identifier**: [JP_local_example_identifiersystem_NamingSystem](NamingSystem-jp-example-local-identifiersystem.md)/example-wadors (use: usual, )

**status**: Active

**connectionType**: [Endpoint Connection Type: dicom-wado-rs](http://terminology.hl7.org/6.5.0/CodeSystem-endpoint-connection-type.html#endpoint-connection-type-dicom-wado-rs) (DICOM WADO-RS)

**name**: ABC Hospital PACS DICOM WADO-RS endpoint

**payloadType**: DICOM WADO-RS

**payloadMimeType**: application/dicom

**address**: [http://abc-hospital.local/wado-rs](https://simplifier.net/resolve?scope=jpfhir-terminology@1.4.0&canonical=http://abc-hospital.local/wado-rs)

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "Endpoint",
  "id" : "endpoint-dicom-wadors-example",
  "identifier" : [
    {
      "use" : "usual",
      "system" : "http://abc-hospital.local/fhir/identifier",
      "value" : "example-wadors"
    }
  ],
  "status" : "active",
  "connectionType" : {
    "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
    "code" : "dicom-wado-rs"
  },
  "name" : "ABC Hospital PACS DICOM WADO-RS endpoint",
  "payloadType" : [
    {
      "text" : "DICOM WADO-RS"
    }
  ],
  "payloadMimeType" : ["application/dicom"],
  "address" : "http://abc-hospital.local/wado-rs"
}

```
