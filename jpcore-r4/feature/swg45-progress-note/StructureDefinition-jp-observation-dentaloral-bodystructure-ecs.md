# JP Core Observation DentalOral BodyStructure IncludedStructure Extension - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **JP Core Observation DentalOral BodyStructure IncludedStructure Extension**

## Extension: JP Core Observation DentalOral BodyStructure IncludedStructure Extension 

* **項目**: *定義URL*
  * **内容**: http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodyStructure_eCS
* **項目**: *Version*
  * **内容**: 1.3.0-dev
* **項目**: *Name*
  * **内容**: JP_Observation_DentalOral_BodyStructure_eCS
* **項目**: *Title*
  * **内容**: JP Core Observation DentalOral BodyStructure IncludedStructure Extension
* **項目**: *Status*
  * **内容**: Active ( 2025-07-30 )
* **項目**: *Copyright*
  * **内容**: Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会

特定の歯を格納するための拡張

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [JP Core Observation DentalOral eCS Profile](StructureDefinition-jp-observation-dentaloral-ecs.md)
* Examples for this Extension: [Observation/jp-observation-dentaloral-ecs-example](Observation-jp-observation-dentaloral-ecs-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/jpfhir.jp.core|current/StructureDefinition/jp-observation-dentaloral-bodystructure-ecs)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-jp-observation-dentaloral-bodystructure-ecs.csv), [Excel](StructureDefinition-jp-observation-dentaloral-bodystructure-ecs.xlsx), [Schematron](StructureDefinition-jp-observation-dentaloral-bodystructure-ecs.sch) 

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "jp-observation-dentaloral-bodystructure-ecs",
  "url" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodyStructure_eCS",
  "version" : "1.3.0-dev",
  "name" : "JP_Observation_DentalOral_BodyStructure_eCS",
  "title" : "JP Core Observation DentalOral BodyStructure IncludedStructure Extension",
  "status" : "active",
  "date" : "2025-07-30",
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
  "description" : "特定の歯を格納するための拡張",
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
  "copyright" : "Copyright Japan FHIR Implementation Infrastructure Study Group in Japan Association of Medical Informatics (JAMI) 一般社団法人日本医療情報学会FHIR国内実装基盤研究会",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Observation.bodySite"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "特定の歯",
        "definition" : "特定の歯を格納するための拡張"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 1
      },
      {
        "id" : "Extension.extension:structure",
        "path" : "Extension.extension",
        "sliceName" : "structure",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:structure.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:structure.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "structure"
      },
      {
        "id" : "Extension.extension:structure.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:laterality",
        "path" : "Extension.extension",
        "sliceName" : "laterality",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:laterality.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:laterality.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "laterality"
      },
      {
        "id" : "Extension.extension:laterality.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation",
        "path" : "Extension.extension",
        "sliceName" : "bodyLandmarkOrientation",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:landmarkDescription",
        "path" : "Extension.extension.extension",
        "sliceName" : "landmarkDescription",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:landmarkDescription.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:landmarkDescription.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "landmarkDescription"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:landmarkDescription.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:clockFacePosition",
        "path" : "Extension.extension.extension",
        "sliceName" : "clockFacePosition",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:clockFacePosition.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:clockFacePosition.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "clockFacePosition"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:clockFacePosition.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:distanceFromLandmark",
        "path" : "Extension.extension.extension",
        "sliceName" : "distanceFromLandmark",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:distanceFromLandmark.extension:value",
        "path" : "Extension.extension.extension.extension",
        "sliceName" : "value",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:distanceFromLandmark.extension:value.extension",
        "path" : "Extension.extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:distanceFromLandmark.extension:value.url",
        "path" : "Extension.extension.extension.extension.url",
        "fixedUri" : "value"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:distanceFromLandmark.extension:value.value[x]",
        "path" : "Extension.extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Quantity"
          }
        ]
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:distanceFromLandmark.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "distanceFromLandmark"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:distanceFromLandmark.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:surfaceOrientation",
        "path" : "Extension.extension.extension",
        "sliceName" : "surfaceOrientation",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:surfaceOrientation.extension",
        "path" : "Extension.extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:surfaceOrientation.url",
        "path" : "Extension.extension.extension.url",
        "fixedUri" : "surfaceOrientation"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.extension:surfaceOrientation.value[x]",
        "path" : "Extension.extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "bodyLandmarkOrientation"
      },
      {
        "id" : "Extension.extension:bodyLandmarkOrientation.value[x]",
        "path" : "Extension.extension.value[x]",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:qualifier",
        "path" : "Extension.extension",
        "sliceName" : "qualifier",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Extension.extension:qualifier.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:qualifier.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "qualifier"
      },
      {
        "id" : "Extension.extension:qualifier.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "http://jpfhir.jp/fhir/core/Extension/StructureDefinition/JP_Observation_DentalOral_BodyStructure_eCS"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
