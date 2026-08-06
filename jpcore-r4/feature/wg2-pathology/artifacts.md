# Artifacts Summary - HL7 FHIR JP Core ImplementationGuide v1.3.0-dev

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

このページには、この実装ガイドの一部として定義されているFHIRアーティファクト（FHIR生成物）のリストを記載している。

### Behavior: Capability Statements 

以下のアーティファクト（生成物）は、実装ガイドに準拠するために、さまざまなタイプのシステムに期待される特定の機能（Capability）を定義している。実装ガイドに準拠するシステムは、次の1つ以上の機能ステートメント（Capability Statement）への準拠を宣言することが期待される。この実装ガイド(JP Core)では、派生先で期待される機能（Capability Statement）の定義ではなく、派生先での実装ガイドの作成する際の参考例を提示している点に注意すること。

| | |
| :--- | :--- |
| [JP Core Client CapabilityStatement](CapabilityStatement-jp-client-capabilitystatement.md) | JP Core実装ガイドを利用したサイトを作成する際にクライアント側で規定するCapabilityStatementのOperationsおよびSearch Parametersのリスト例を提示する。JP Core ServerがサポートするFHIRプロファイルに限定しているため、FHIR Baseのプロファイルを利用する際などは必要な項目を追記すること。 |
| [JP Core Server CapabilityStatement](CapabilityStatement-jp-server-capabilitystatement.md) | JP Core実装ガイドを利用したサイトを作成する際にサーバー側で規定するCapabilityStatementのOperationsおよびSearch Parametersのリスト例を提示する。JP Core ServerがサポートするFHIRプロファイルに限定しているため、FHIR Baseのプロファイルを利用する際などは必要な項目を追記すること。 |

### Behavior: Search Parameters 

これらは、RESTfulサーバーを検索できるプロパティを定義します。また、関連リソースの並べ替えや組み込みにも使用できる。

| | |
| :--- | :--- |
| [jp-coverage-insuredpersonnumber-sp](SearchParameter-jp-coverage-insuredpersonnumber-sp.md) | CoverageリソースのInsuredPersonNumber(健康保険における被保険者証番号)に関する検索を定義する。 |
| [jp-coverage-insuredpersonsubnumber-sp](SearchParameter-jp-coverage-insuredpersonsubnumber-sp.md) | CoverageリソースのInsuredPersonSubNumber(健康保険における被保険者証番号の枝番)に関する検索を定義する。 |
| [jp-coverage-insuredpersonsymbol-sp](SearchParameter-jp-coverage-insuredpersonsymbol-sp.md) | CoverageリソースのInsuredPersonSymbol(健康保険における被保険者証記号)に関する検索を定義する。 |
| [jp-medicationrequest-start-sp](SearchParameter-jp-medicationrequest-start-sp.md) | MedicationRequestリソースをExtensionの服用期間の開始日で検索するパラメータを定義する。 |
| [jp-organization-insuranceorganizationcategory-sp](SearchParameter-jp-organization-insuranceorganizationcategory-sp.md) | OrganizationリソースのInsuranceOrganizationCategory(点数表コード)に関する検索を定義する。 |
| [jp-organization-insuranceorganizationno-sp](SearchParameter-jp-organization-insuranceorganizationno-sp.md) | OrganizationリソースのInsuranceOrganizationNo(保険医療機関番号)に関する検索を定義する。 |
| [jp-organization-prefectureno-sp](SearchParameter-jp-organization-prefectureno-sp.md) | OrganizationリソースのPrefectureNo(都道府県番号)に関する検索を定義する。 |
| [jp-patient-kanasort-sp](SearchParameter-jp-patient-kanasort-sp.md) | Patientリソースをカナ名称でソートするための検索を定義する。検索に_sort=jp-kana-sortを指定すると、name.use=usualかつカナと指定されているname.text（フルネーム）を使ったソートを行う。 |

### Structures: Resource Profiles 

これらは、この実装ガイドに準拠するシステムでの、FHIRリソースに対する制約を定義する。

| | |
| :--- | :--- |
| [JP Core AllergyIntolerance Profile](StructureDefinition-jp-allergyintolerance.md) | このプロファイルはAllergyIntoleranceリソースに対して、患者のアレルギー不耐症に関するデータを送受信するための制約と拡張を定めるものである。 |
| [JP Core Condition Diagnosis Profile](StructureDefinition-jp-condition-diagnosis.md) | このプロファイルはConditionリソースに対して、患者の診断に関する情報を送受信するための共通の制約と拡張を定めたものである。 |
| [JP Core Condition Profile](StructureDefinition-jp-condition.md) | このプロファイルはConditionリソースに対して、患者の健康状態に関するデータを送受信するための共通の制約と拡張を定めたものである。 |
| [JP Core Coverage Profile](StructureDefinition-jp-coverage.md) | このプロファイルはCoverageリソースに対して、保険・公費のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core DiagnosticReport Common Profile](StructureDefinition-jp-diagnosticreport-common.md) | このプロファイルはDiagnosticReportリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。 |
| [JP Core DiagnosticReport DentalOral Profile](StructureDefinition-jp-diagnosticreport-dentaloral.md) | このプロファイルはDiagnosticReportリソースに対して、口腔診査の結果（口腔所見）のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core DiagnosticReport Endoscopy Profile](StructureDefinition-jp-diagnosticreport-endoscopy.md) | このプロファイルはDiagnosticReportリソースに対して、内視鏡を使用して実施された検査、治療に関わるデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core DiagnosticReport LabResult Profile](StructureDefinition-jp-diagnosticreport-labresult.md) | このプロファイルはDiagnosticReportリソースに対して、検体検査結果のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core DiagnosticReport Microbiology Profile](StructureDefinition-jp-diagnosticreport-microbiology.md) | このプロファイルはDiagnosticReportリソースに対して、データを送受信するための微生物学検査レポートの制約と拡張を定めたものである。 |
| [JP Core DiagnosticReport Pathology Profile](StructureDefinition-jp-diagnosticreport-pathology.md) | 病理にて作成された診断レポート。 |
| [JP Core DiagnosticReport Radiology Profile](StructureDefinition-jp-diagnosticreport-radiology.md) | このプロファイルはDiagnosticReportリソースに対して、放射線検査報告書（レポート）のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Encounter Profile](StructureDefinition-jp-encounter.md) | このプロファイルはEncounterリソースに対して、来院/入院情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core FamilyMemberHistory Profile](StructureDefinition-jp-familymemberhistory.md) | このプロファイルはFamilyMemberHistoryリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。 |
| [JP Core ImagingStudy Endoscopy Profile](StructureDefinition-jp-imagingstudy-endoscopy.md) | このプロファイルはImagingStudyリソースに対して、主に内視鏡検査で撮影された画像に関わるデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core ImagingStudy Pathology Profile](StructureDefinition-jp-imagingstudy-pathology.md) | 病理WSIのDICOM画像に関する情報を扱うためのプロファイル |
| [JP Core ImagingStudy Radiology Profile](StructureDefinition-jp-imagingstudy-radiology.md) | このプロファイルはImagingStudyリソースに対して、放射線検査画像のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Immunization Profile](StructureDefinition-jp-immunization.md) | このプロファイルはImmunizationリソースに対して日本での予防接種情報を送受信するための制約と拡張を加えたものである。 |
| [JP Core Location Profile](StructureDefinition-jp-location.md) | このプロファイルはLocationリソースに対して、所在場所のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core Media Pathology Profile](StructureDefinition-jp-media-pathology.md) | 病理で取得または使用される画像に関わる情報を記録するためのプロファイル |
| [JP Core Medication Profile](StructureDefinition-jp-medication.md) | このプロファイルはMedicationリソースに対して、主に薬剤データを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core MedicationAdministration Injection Profile](StructureDefinition-jp-medicationadministration-injection.md) | このプロファイルはMedicationAdministrationリソースに対して、注射薬剤処方投与実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core MedicationAdministration Profile](StructureDefinition-jp-medicationadministration.md) | このプロファイルはMedicationAdministrationリソースに対して、内服・外用薬剤処方投与実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core MedicationAdministrationBase Profile](StructureDefinition-jp-medicationadministrationBase.md) | このプロファイルはMedicationAdministrationリソースに対して、投薬実施情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core MedicationDispense Injection Profile](StructureDefinition-jp-medicationdispense-injection.md) | このプロファイルはMedicationDispenseリソースに対して、注射薬剤処方調剤・払い出し記録のデータを送受信するための基礎となる制約と拡張を定めたものである。JP_MedicationDispenseBaseプロファイルからの派生プロファイルである。 |
| [JP Core MedicationDispense Profile](StructureDefinition-jp-medicationdispense.md) | このプロファイルはMedicationDispenseリソースに対して、内服・外用薬剤処方調剤・払い出し記録のデータを送受信するための基礎となる制約と拡張を定めたものである。JP_MedicationDispenseBaseプロファイルからの派生プロファイルである。 |
| [JP Core MedicationDispenseBase Profile](StructureDefinition-jp-medicationdispensebase.md) | このプロファイルはユーザーは直接適用するものではなく、JP_MedicationDispenseとJP_MedicationDispenseInjectionの共通の親となる抽象プロファイルである。このプロファイルはMedicationDispenseリソースに対して、内服・外用薬剤処方調剤・払い出し記録のデータを送受信するため、JP_MedicationDispenseとJP_MedicationDispenseInjectionの各プロファイルの基礎となる制約と拡張のうち共通部分を定めている。 |
| [JP Core MedicationRequest Injection Profile](StructureDefinition-jp-medicationrequest-injection.md) | このプロファイルはMedicationRequestリソースに対して、注射薬剤処方のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core MedicationRequest Profile](StructureDefinition-jp-medicationrequest.md) | このプロファイルはMedicationRequestリソースに対して、内服・外用薬剤処方のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core MedicationStatement Injection Profile](StructureDefinition-jp-medicationstatement-injection.md) | このProfileは服薬状況を示すものであり、診療情報提供書や退院サマリーなどの他の文書と組み合わせて用いられる。 |
| [JP Core MedicationStatement Profile](StructureDefinition-jp-medicationstatement.md) | このProfileは服薬状況を示すものであり、診療情報提供書や退院サマリーなどの他の文書と組み合わせて用いられる。 |
| [JP Core Observation BodyMeasurement Profile](StructureDefinition-jp-observation-bodymeasurement.md) | このプロファイルはObservationリソースに対して、身体計測のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation Common Profile](StructureDefinition-jp-observation-common.md) | このプロファイルはObservationリソースに対して、データを送受信するための共通の制約と拡張を定めたものである。 |
| [JP Core Observation DentalOral Missing Tooth Condition Profile](StructureDefinition-jp-observation-dentaloral-missingtoothcondition.md) | このプロファイルはObservationリソースに対して、口腔診査結果（口腔所見）の特定の欠損歯の処置データを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation DentalOral Tooth Existence Profile](StructureDefinition-jp-observation-dentaloral-toothexistence.md) | このプロファイルはObservationリソースに対して、口腔診査結果（口腔内所見）の特定の歯の有無・状態データを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation DentalOral Tooth Treatment Condition Profile](StructureDefinition-jp-observation-dentaloral-toothtreatmentcondition.md) | このプロファイルはObservationリソースに対して、口腔診査結果（口腔内所見）の特定の現存歯の処置データを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation DentalOral eCS Profile](StructureDefinition-jp-observation-dentaloral-ecs.md) | このプロファイルはObservationリソースに対して、診療情報提供書用のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation Electrocardiogram Profile](StructureDefinition-jp-observation-electrocardiogram.md) | このプロファイルはObservationリソースに対して、心電図データを送受信するための共通の制約と拡張を定めたものである。 |
| [JP Core Observation Endoscopy Profile](StructureDefinition-jp-observation-endoscopy.md) | このプロファイルはObservationリソースに対して、内視鏡を使用して実施された検査、治療による観察結果（診断、所見など）の情報を送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation LabResult Profile](StructureDefinition-jp-observation-labresult.md) | このプロファイルはObservationリソースに対して、検体検査結果のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation Microbiology Profile](StructureDefinition-jp-observation-microbiology.md) | このプロファイルはObservationリソースに対して、微生物学検査のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation PhysicalExam Profile](StructureDefinition-jp-observation-physicalexam.md) | このプロファイルはObservationリソースに対して、身体所見のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation Radiology Findings Profile](StructureDefinition-jp-observation-radiology-findings.md) | このプロファイルはDiagnosticReport_Radiologyリソースに関連する画像診断報告書の「所見」データを送受信するための共通の制約と拡張を定めたものである。 |
| [JP Core Observation Radiology Impression Profile](StructureDefinition-jp-observation-radiology-impression.md) | このプロファイルはDiagnosticReport_Radiologyリソースに関連する画像診断報告書の「インプレッション」データを送受信するための共通の制約と拡張を定めたものである |
| [JP Core Observation SocialHistory Profile](StructureDefinition-jp-observation-socialhistory.md) | このプロファイルはObservationリソースに対して、生活背景のデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Observation VitalSigns Profile](StructureDefinition-jp-observation-vitalsigns.md) | このプロファイルはObservationリソースに対して、バイタルサインのデータを送受信するための制約と拡張を定めたものである。 |
| [JP Core Organization Department Profile](StructureDefinition-jp-organization-department.md) | このプロファイルはOrganizationリソースに対して、診療科情報のデータを送受信するための制約と拡張を定めたものである。診療科を表すOrganizationとして利用することを想定している。 |
| [JP Core Organization Profile](StructureDefinition-jp-organization.md) | このプロファイルはOrganizationリソースに対して、組織情報のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core Patient Profile](StructureDefinition-jp-patient.md) | このプロファイルはPatientリソースに対して、患者のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core Practitioner Profile](StructureDefinition-jp-practitioner.md) | このプロファイルはPractitionerリソースに対して、医療従事者のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core PractitionerRole Profile](StructureDefinition-jp-practitionerrole.md) | このプロファイルはPractitionerRoleリソースに対して、医療従事者役割のデータを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core Procedure Profile](StructureDefinition-jp-procedure.md) | このプロファイルはProcedureリソースに対して、患者に対する医療的な処置のデータを送受信するための共通の制約と拡張を定めたものである。 |
| [JP Core ServiceRequest Common Profile](StructureDefinition-jp-servicerequest-common.md) | 本プロファイル説明は、患者に対し立案・実施されるリクエストの記録で、行為や診断、もしくは他のサービスのために用いられるFHIR ServiceRequestリソースを使用するにあたっての、最低限の制約を記述したものである。 |
| [JP Core media Endoscopy Profile](StructureDefinition-jp-media-endoscopy.md) | このプロファイルはMediaリソースに対して、主に内視鏡検査で取得または使用される画像、映像、音声に関わるデータを送受信するための制約と拡張を定めたものである。 |
| [JP Specimen Pathology Profile](StructureDefinition-jp-specimen-pathology.md) | 病理検体を表現するためのプロファイル。病理診断レポートのユースケースでは、臓器そのものを表現する。 |
| [JP_Binary](StructureDefinition-jp-binary.md) | JP_Binary 暫定プロファイル |
| [JP_CarePlan](StructureDefinition-jp-careplan.md) | JP_CarePlan 暫定プロファイル |
| [JP_Consent](StructureDefinition-jp-consent.md) | JP_Consent 暫定プロファイル |
| [JP_Device](StructureDefinition-jp-device.md) | JP_Device 暫定プロファイル |
| [JP_DocumentReference](StructureDefinition-jp-documentreference.md) | JP_DocumentReference 暫定プロファイル |
| [JP_RelatedPerson](StructureDefinition-jp-relatedperson.md) | JP_RelatedPerson 暫定プロファイル |
| [JP_ResearchStudy](StructureDefinition-jp-researchstudy.md) | JP_ResearchStudy 暫定プロファイル |
| [JP_ResearchSubject](StructureDefinition-jp-researchsubject.md) | JP_ResearchSubject 暫定プロファイル |
| [JP_Specimen_Common](StructureDefinition-jp-specimen-common.md) | このプロファイルはSpecimenリソースに対して、患者のデータを送受信するための基礎となる制約と拡張を定めたものである。 |

### Structures: Data Type Profiles 

これらは、この実装ガイドに準拠するシステムでの、Data Type プロファイルに対する制約を定義する。

| | |
| :--- | :--- |
| [JP Core HumanName DataType](StructureDefinition-jp-humanname.md) | このデータタイプはHumanName DataTypeに対して、患者データを送受信するための基礎となる制約と拡張を定めたものである。 |
| [JP Core Medication Quantity DataType](StructureDefinition-jp-medicationquantity.md) | このデータタイプはQuantity DataTypeに対して、JP Coreにおける薬剤量に関する定義を行なったものである |
| [JP Core Medication Range DataType](StructureDefinition-jp-medicationrange.md) | このデータタイプはRange DataTypeに対して、薬剤量の上限下限に関する定義を行なったものである |
| [JP Core Medication Rate Ratio DataType](StructureDefinition-jp-medicationratio-doseperperiod.md) | このデータタイプはRatio DataTypeに対して、薬剤量／単位時間を表す比率を割り当てた制約と拡張を定めたものである。 |
| [JP Core Medication Rate Ratio DosePerDay DataType](StructureDefinition-jp-medicationratio-doseperday.md) | このデータタイプはJP_MedicationRatio_DosePerPeriod DataTypeに対して、一日あたりの薬剤料（薬剤量／単位時間）を表す比率を割り当てた制約と拡張を定めたものである。 |
| [JP Core Medication Ratio Amount DataType](StructureDefinition-jp-medicationratio-amount.md) | このデータタイプはRatio DataTypeに対して、薬剤量／パッケージ量を表す比率を割り当てた制約と拡張を定めたものである。 |
| [JP Core Medication Simple Quantity DataType](StructureDefinition-jp-medicationsimplequantity.md) | このデータタイプはSimpleQuantity DataTypeに対して、JP Coreにおける薬剤量に関する定義を行なったものである |
| [JP Core Medication Time Range DataType](StructureDefinition-jp-medicationrange-unitoftime.md) | このデータタイプはRange DataTypeに対して、時間の上限下限に関する定義を行なったものである |
| [JP Core Medication Timing DataType](StructureDefinition-jp-medicationtiming.md) | このデータタイプはTiming DataTypeに対して、薬剤に関するタイミング定義を行なったものである |
| [JP Core MedicationDosage Base DataType](StructureDefinition-jp-medicationdosagebase.md) | このデータタイプは薬剤用法のDosageベースとして基礎となる制約と拡張のうち共通部分を定めている。 |
| [JP Core MedicationDosage DataType](StructureDefinition-jp-medicationdosage.md) | このデータタイプは内服用法の制約と拡張のうち共通部分を定めている。 |
| [JP Core MedicationDosage Injection DataType](StructureDefinition-jp-medicationdosage-injection.md) | このデータタイプは注射用法の制約と拡張のうち共通部分を定めている。 |

### Structures: Extension Definitions 

これらは、この実装ガイドに準拠するシステムでの、拡張プロファイル（Extension Profile）を定義する。

| | |
| :--- | :--- |
| [JP Core Common Department Extension](StructureDefinition-jp-common-department.md) | 診療科情報を格納するための汎用的な拡張。様々なリソースで診療科情報を表現する際に使用できる。診療科コード（CodeableConcept）または診療科組織への参照（Reference）のいずれかを指定する。 |
| [JP Core Coverage InsuredPersonNumber Extension](StructureDefinition-jp-coverage-insuredpersonnumber.md) | 健康保険における被保険者証番号を示す拡張 |
| [JP Core Coverage InsuredPersonSubNumber Extension](StructureDefinition-jp-coverage-insuredpersonsubnumber.md) | 健康保険における被保険者証番号の枝番を示す拡張 |
| [JP Core Coverage InsuredPersonSymbol Extension](StructureDefinition-jp-coverage-insuredpersonsymbol.md) | 健康保険における被保険者証記号を示す拡張 |
| [JP Core Disease Outcome Extension](StructureDefinition-jp-condition-disease-outcome.md) | 病名の転帰を格納するための拡張 |
| [JP Core Disease Postfix Modifier Extension](StructureDefinition-jp-condition-disease-postfix-modifier.md) | 病名の後置修飾語を格納するための拡張 |
| [JP Core Disease Prefix Modifier Extension](StructureDefinition-jp-condition-disease-prefix-modifier.md) | 病名の前置修飾語を格納するための拡張 |
| [JP Core Immunization CertificatedDate Extension](StructureDefinition-jp-immunization-certificateddate.md) | 検定年月日 |
| [JP Core Immunization DueDateOfNextDose Extension](StructureDefinition-jp-immunization-duedateofnextdose.md) | 次回接種予定日 |
| [JP Core Immunization ManufacturedDate Extension](StructureDefinition-jp-immunization-manufactureddate.md) | 製造年月日 |
| [JP Core Medication Dosage Device Extension](StructureDefinition-jp-medicationdosage-device.md) | 投与装置を格納する拡張 |
| [JP Core Medication Dosage DosageComment Extension](StructureDefinition-jp-medicationdosage-dosagecomment.md) | 用法コメントを格納するための拡張 |
| [JP Core Medication Dosage Line Extension](StructureDefinition-jp-medicationdosage-line.md) | 指示ラインを格納するための拡張 |
| [JP Core Medication Dosage LineComment Extension](StructureDefinition-jp-medicationdosage-linecomment.md) | ラインコメントを格納する |
| [JP Core Medication Dosage MethodComment Extension](StructureDefinition-jp-medicationdosage-methodcomment.md) | 手技コメントを格納するための拡張 |
| [JP Core Medication Dosage PeriodOfUse Extension](StructureDefinition-jp-medicationdosage-periodofuse.md) | 投与開始日を格納する拡張 |
| [JP Core Medication Dosage RateComment Extension](StructureDefinition-jp-medicationdosage-ratecomment.md) | 投与速度コメントを格納するための拡張 |
| [JP Core Medication Dosage RouteComment Extension](StructureDefinition-jp-medicationdosage-routecomment.md) | 投与経路コメントを格納するための拡張 |
| [JP Core Medication Dosage SiteComment Extension](StructureDefinition-jp-medicationdosage-sitecomment.md) | 投与部位コメントを格納するための拡張 |
| [JP Core Medication Dosage UsageDuration Extension](StructureDefinition-jp-medicationdosage-usageduration.md) | 隔日投与など、服用開始日から終了日までの日数と実投与日数が異なる場合に、実投与日数を明⽰したい場合に使用する拡張 |
| [JP Core Medication Ingredient DrugNo Extension](StructureDefinition-jp-medication-ingredient-drugno.md) | 同一剤グループ内での順番を格納する拡張 |
| [JP Core Medication IngredientStrength StrengthType Extension](StructureDefinition-jp-medication-ingredientstrength-strengthtype.md) | 投与量が製剤単位か成分単位かを格納する拡張 |
| [JP Core MedicationAdministration Location Extension](StructureDefinition-jp-medicationadministration-location.md) | 実施場所を格納するための拡張 |
| [JP Core MedicationAdministration RequestAuthoredOn Extension](StructureDefinition-jp-medicationadministration-requestauthoredon.md) | 依頼日時を格納するための拡張 |
| [JP Core MedicationAdministration RequestDepartment Extension](StructureDefinition-jp-medicationadministration-requestdepartment.md) | 依頼科を格納するための拡張 |
| [JP Core MedicationAdministration Requester Extension](StructureDefinition-jp-medicationadministration-requester.md) | 依頼医を格納するための拡張 |
| [JP Core MedicationAdministration UncategorizedComment Extension](StructureDefinition-jp-medicationadministration-uncategorizedcomment.md) | 未分類コメントを格納するための拡張 |
| [JP Core MedicationDispense Preparation Extension](StructureDefinition-jp-medicationdispense-preparation.md) | 薬剤単位の調剤結果 |
| [JP Core MedicationRequest DispenseRequest ExpectedRepeatCount Extension](StructureDefinition-jp-medicationrequest-dispenserequest-expectedrepeatcount.md) | 頓用回数 |
| [JP Core MedicationRequest DispenseRequest InstructionForDispense Extension](StructureDefinition-jp-medicationrequest-dispenserequest-instructionfordispense.md) | 調剤指示。薬剤単位の調剤指示を表現するための拡張 |
| [JP Core Observation DentalOral Body Site Status Extension](StructureDefinition-jp-observation-dentaloral-bodysitestatus.md) | 歯の状態を格納するための拡張 |
| [JP Core Observation DentalOral BodyStructure IncludedStructure Extension](StructureDefinition-jp-observation-dentaloral-bodystructure-ecs.md) | 特定の歯を格納するための拡張 |
| [JP Core Observation DentalOral Tooth Root Status Extension](StructureDefinition-jp-observation-dentaloral-toothroot.md) | 歯根を格納するための拡張 |
| [JP Core Observation DentalOral ToothSurface Extension](StructureDefinition-jp-observation-dentaloral-toothsurface.md) | 特定の歯の歯面を格納するための拡張 |
| [JP Core Observation Electrocardiogram Device Interpretation Extention](StructureDefinition-jp-observation-electrocardiogram-deviceinterpretation.md) | 心電図検査で測定された結果に対しての機械的に判定された所見、解釈の有無 |
| [JP Core Observation Electrocardiogram Duration Extention](StructureDefinition-jp-observation-electrocardiogram-duration.md) | 心電図検査で測定を行った時間を記録するための拡張。 |
| [JP Core Observation Electrocardiogram NumberOfLeed Extention](StructureDefinition-jp-observation-electrocardiogram-numberoflead.md) | 心電図検査を実施したときに使った誘導の数を示すExtension |
| [JP Core Observation Electrocardiogram StressType Extention](StructureDefinition-jp-observation-electrocardiogram-stresstype.md) | 負荷心電図検査の種別について記録する。 |
| [JP Core Organization InsuranceOrganizationCategory Extension](StructureDefinition-jp-organization-insuranceorganizationcategory.md) | 点数表コード１桁を表現するためのExtension。 JP Core Organizationプロファイルで利用されることを想定しているが、他のリソースでも利用可能である |
| [JP Core Organization InsuranceOrganizationNo Extension](StructureDefinition-jp-organization-insuranceorganizationno.md) | 保険医療機関番号７桁を表現するためのExtension。 JP Core Organizationプロファイルで利用されることを想定しているが、他のリソースでも利用可能である |
| [JP Core Organization PrefectureNo Extension](StructureDefinition-jp-organization-prefectureno.md) | 都道府県番号２桁を表現するためのExtension。 JP Core Organizationプロファイルで利用されることを想定しているが、他のリソースでも利用可能である |
| [JP Core Patient Race Extension](StructureDefinition-jp-patient-race.md) | 人種(Race)に関する情報を格納するためのExtension。 |

### Terminology: Value Sets 

これらは、この実装ガイドに準拠するシステムでの、値セット（ValueSet）を定義する。

| | |
| :--- | :--- |
| [JP Core Condition BodySite ValueSet](ValueSet-jp-condition-bodysite-vs.md) | 病名・状態の対象となる身体部位のコード |
| [JP Core Condition Disease Outcome Receipt System ValueSet](ValueSet-jp-condition-disease-outcome-receipt-vs.md) | レセプト電算システムの病名転帰区分を示す値セット |
| [JP Core DICOM Modality ValueSet](ValueSet-jp-dicommodality-vs.md) | 放射線モダリテに対する 値セット |
| [JP Core Dental BodySite ValueSet](ValueSet-jp-dental-bodysite-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する身体部位コード |
| [JP Core Dental BodySiteStatus ValueSet](ValueSet-jp-dental-bodysitestatus-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する身体部位状態コード |
| [JP Core Dental FundamentalStatus ValueSet](ValueSet-jp-dental-fundamentalstatus-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する歯の基礎状態コード |
| [JP Core Dental MissingTeethObservation ValueSet](ValueSet-jp-dental-missingteeth-observation-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する欠損歯の観察結果コード |
| [JP Core Dental PresentTeethObservation ValueSet](ValueSet-jp-dental-presentteeth-observation-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する現存歯の観察結果コード |
| [JP Core Dental RootBodyStructure ValueSet](ValueSet-jp-dental-rootbodystructure-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する歯根に関する詳細部位構造コード |
| [JP Core Dental SimpleMissingTeethObservation ValueSet](ValueSet-jp-dental-simple-missingteeth-observation-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する欠損歯の観察結果コード（簡易版） |
| [JP Core Dental SimplePresentTeethObservation ValueSet](ValueSet-jp-dental-simple-presentteeth-observation-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する現存歯の観察結果コード（簡易版） |
| [JP Core Dental SurfaceBodyStructure ValueSet](ValueSet-jp-dental-surfacebodystructure-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する歯面に関連する詳細部位構造コード |
| [JP Core Dental TeethObservation ValueSet](ValueSet-jp-dental-teethobservation-vs.md) | JP Coreにて定義した歯科のObservationリソースに関する歯面の詳細部位構造コード |
| [JP Core ImagingStudy Radiology BodySite ValueSet](ValueSet-jp-imagingstudy-radiology-bodysite-vs.md) | 放射線検査画像の対象となる身体部位のコード |
| [JP Core Medication Substitution Prohibition Reason ValueSet](ValueSet-jp-medication-substitution-prohibition-reason-vs.md) | 後発医薬品への変更不可理由を示す値セット。令和6年保険改訂（2024年10月施行）により導入された長期収載医薬品の変更不可理由区分（医療上の必要性・患者希望）を含む。MedicationRequest.substitution.reason および MedicationDispense.substitution.reason に使用する。 |
| [JP Core Observation BodySite ValueSet](ValueSet-jp-observation-bodysite-vs.md) | 検査の対象となる身体部位のコード |
| [JP Core Observation Electrocardiogram Component Code ValueSet](ValueSet-jp-observation-electrocardiogram-component-code-vs.md) | 心電図検査の一連の測定項目を示す値セット |
| [JP Core Observation Electrocardiogram Duration ValueSet](ValueSet-jp-observation-electrocardiogram-duration-vs.md) | JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（検査時間） |
| [JP Core Observation Electrocardiogram ExtraCategory ValueSet](ValueSet-jp-observation-electrocardiogram-extracategory-vs.md) | JP Coreにて定義した心電図のObservationリソースに関する分類コード |
| [JP Core Observation Electrocardiogram StressType ValueSet](ValueSet-jp-observation-electrocardiogram-stresstype-vs.md) | JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（負荷タイプ） |
| [JP Core Observation Endoscopy Code ValueSet](ValueSet-jp-observation-endoscopy-code-vs.md) | Observation（内視鏡）コードで使用する項目値セット。LOINCとJED用語のうち臓器毎のFindings、Diagnosis（Characterization）に該当するコードの組み合わせ |
| [JP Core Observation Endoscopy Value JED ValueSet](ValueSet-jp-observation-endoscoy-value-jed-vs.md) | 日本消化器内視鏡学会が推進するJED (Japan Endoscopy Database) Projectのコード値セットのうち主に「所見（存在所見）」「質的診断」に該当するコード |
| [JP Core Observation Radiology Code ValueSet](ValueSet-jp-observation-radiology-code-vs.md) | Observation（放射線）コードで使用する項目値セット。LOINCのFindings、Impressionに相当する |
| [JP Core ObservationDetailedDentalCategory ValueSet](ValueSet-jp-observation-detailed-dental-category-vs.md) | JP Coreにて定義した歯科のObservationリソースに関するカテゴリの第３コード |
| [JP Core Undefined ValueSet](ValueSet-jp-undefined-vs.md) | 未定義の値セット。使用する予定のコードシステムが利用できない場合や方針未決定の場合に割り振る特別なリソースである。 |

### Terminology: Code Systems 

これらは、この実装ガイドに準拠するシステムでの、新しいコードシステム（CodeSystem）を定義する。

| | |
| :--- | :--- |
| [JP Core Condition Disease Outcome HL7 Table 0241 - Patient Outcome CodeSystem](CodeSystem-jp-condition-disease-outcome-hl70241-cs.md) | HL7表0241-Patient Outcome コードシステム |
| [JP Core Condition Disease Outcome Receipt CodeSystem](CodeSystem-jp-condition-disease-outcome-receipt-cs.md) | レセプト電算システム 転帰区分 コードシステム |
| [JP Core Dental BodySite CodeSystem](CodeSystem-jp-dental-bodysite-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する身体部位コード |
| [JP Core Dental BodySiteStatus CodeSystem](CodeSystem-jp-dental-bodysitestatus-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する身体部位状態コード |
| [JP Core Dental FundamentalStatus CodeSystem](CodeSystem-jp-dental-fundamentalstatus-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する歯の基礎状態コード |
| [JP Core Dental MissingTeethObservation CodeSystem](CodeSystem-jp-dental-missingteeth-observation-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する欠損歯の観察結果コード |
| [JP Core Dental PresentTeethObservation CodeSystem](CodeSystem-jp-dental-presentteeth-observation-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する現存歯の観察結果コード |
| [JP Core Dental RootBodyStructure CodeSystem](CodeSystem-jp-dental-rootbodystructure-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する歯根に関する部位構造コード |
| [JP Core Dental SimpleMissingTeethObservation CodeSystem](CodeSystem-jp-dental-simple-missingteeth-observation-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する欠損歯の観察結果コード（簡易版） |
| [JP Core Dental SimplePresentTeethObservation CodeSystem](CodeSystem-jp-dental-simple-presentteeth-observation-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する現存歯の観察結果コード（簡易版） |
| [JP Core Dental Surface BodyStructure CodeSystem](CodeSystem-jp-dental-surfacebodystructure-cs.md) | JP Coreにて定義した歯科のObservationリソースに関する歯面に関連する詳細部位構造コード |
| [JP Core Medication Substitution Prohibition Reason CodeSystem](CodeSystem-jp-medication-substitution-prohibition-reason-cs.md) | 後発医薬品への変更不可理由を示すコードシステム。令和6年保険改訂（2024年10月施行）により導入された長期収載医薬品の変更不可理由区分を定義する。MedicationRequest.substitution.reason および MedicationDispense.substitution.reason に使用する。 |
| [JP Core Observation BodyMeasurement Code CodeSystem](CodeSystem-jp-observation-bodymeasurement-code-cs.md) | Observation（身体計測）で使用する項目コードのコードシステム （出典：看護実践用語標準マスターの概要＜看護行為編＞Ver. 3. 6） |
| [JP Core Observation Electrocardiogram Duration CodeSystem](CodeSystem-jp-observation-electrocardiogram-duration-cs.md) | JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（検査時間） |
| [JP Core Observation Electrocardiogram Extra Category CodeSystem](CodeSystem-jp-observation-electrocardiogram-extracategory-cs.md) | JP Coreにて定義した心電図のObservationリソースに関する分類コード |
| [JP Core Observation Electrocardiogram StressType CodeSystem](CodeSystem-jp-observation-electrocardiogram-stresstype-cs.md) | JP Coreにて定義した心電図のObservationリソースに関する詳細分類コード（負荷タイプ） |
| [JP Core ObservationDentalCategory CodeSystem](CodeSystem-jp-observation-dental-category-cs.md) | JP Coreにて定義した歯科のObservationリソースに関するカテゴリのコード |
| [JP Core Undefined CodeSystem](CodeSystem-jp-undefined-cs.md) | 未定義のコードシステム。使用する予定のコードシステムが利用できない場合や方針未決定の場合等に割り振る特別なリソースである。 |

### Terminology: Naming Systems 

これらは、この実装ガイドに準拠するシステムでの、新しい識別子システムと／またはコードシステム（Identifier and/or CodeSystem）を定義する。

| | |
| :--- | :--- |
| [jp-IdSystem-prescriptionDocumentID-namingsystem](NamingSystem-jp-IdSystem-prescriptionDocumentID-namingsystem.md) | JP_IdSystem_PrescriptionDocumentID_NamingSystem |
| [jp-clins-bundle-identifier](NamingSystem-jp-clins-bundle-identifier.md) | JP_CLINS_bundle_identifier_NamingSystem |
| [jp-core-resourceInstance-identifier](NamingSystem-jp-core-resourceInstance-identifier.md) | JP_core_resourceInstance_identifier_NamingSystem |
| [jp-department-ssmix-namingsystem](NamingSystem-jp-department-ssmix-namingsystem.md) | JP Core Department SsMix NamingSystem JAMI SSMIX2診療科コード表 |
| [jp-endoscopyterminology-codes-jed-ns](NamingSystem-jp-endoscopyterminology-codes-jed-ns.md) | 日本消化器内視鏡学会が推進するJED (Japan Endoscopy Database) Projectで定義されるコード |
| [jp-example-local-identifiersystem](NamingSystem-jp-example-local-identifiersystem.md) | JP_local_example_identifiersystem_NamingSystem |
| [jp-insurance-memberID-identifier](NamingSystem-jp-insurance-memberID-identifier.md) | JP_insurance_memberID_identifier_NamingSystem |
| [jp-insured-person-number-namingsystem](NamingSystem-jp-insured-person-number-namingsystem.md) | JP Core Insured Person Number NamingSystem 被保険者証番号 |
| [jp-insured-person-symbol-namingsystem](NamingSystem-jp-insured-person-symbol-namingsystem.md) | JP Core Insured Person Symbol NamingSystem 被保険者証記号 |
| [jp-insuredpersoncategory-namingsystem](NamingSystem-jp-insuredpersoncategory-namingsystem.md) | JP Core InsuredPersonCategory NamingSystem 被保険者区分コード |
| [jp-insurer-identifier](NamingSystem-jp-insurer-identifier.md) | JP_insurer_identifier_NamingSystem |
| [jp-insurer-number-namingsystem](NamingSystem-jp-insurer-number-namingsystem.md) | JP Core Insurer Number NamingSystem 保険者番号 |
| [jp-local-identifier-11311234567](NamingSystem-jp-local-identifier-11311234567.md) | JP_local_patient-identifier_11311234567_NamingSystem |
| [jp-local-patient-identifier-root](NamingSystem-jp-local-patient-identifier-root.md) | JP_local_patient-identifier_root_NamingSystem |
| [jp-medical-institution-identifier](NamingSystem-jp-medical-institution-identifier.md) | JP_imedical_institution_identifier_NamingSystem |
| [jp-medical-organizationid-namingsystem](NamingSystem-jp-medical-organizationid-namingsystem.md) | JP Core MedicalOrganizationID NamingSystem 保険医療機関コード（７桁） |
| [jp-medical-registration-number-namingsystem](NamingSystem-jp-medical-registration-number-namingsystem.md) | JP Core Medical Registration Number NamingSystem 医籍登録番号 |
| [jp-medicalfeescoretype-namingsystem](NamingSystem-jp-medicalfeescoretype-namingsystem.md) | JP Core MedicalFeeScoreType NamingSystem 点数表番号 |
| [jp-medication-rpgroup-number-namingsystem](NamingSystem-jp-medication-rpgroup-number-namingsystem.md) | JP Core Medication RpGroup Number NamingSystem RP番号 |
| [jp-medication-rpgruop-index-namingsystem](NamingSystem-jp-medication-rpgruop-index-namingsystem.md) | JP Core Medication RpGruop Index NamingSystem RP内の順序を示す連番 |
| [jp-medicationbodysitejamiexternal-namingsystem](NamingSystem-jp-medicationbodysitejamiexternal-namingsystem.md) | JP Core Medication BodySite JAMI External NamingSystem JAMI用法コード表ー外用部位コード表３桁 |
| [jp-medicationcodecommon-namingsystem](NamingSystem-jp-medicationcodecommon-namingsystem.md) | JP Core MedicationCode Common NamingSystem 一般名処方マスタ |
| [jp-medicationcodeyj-namingsystem](NamingSystem-jp-medicationcodeyj-namingsystem.md) | JP Core MedicationCode YJ NamingSystem 個別医薬品コード（YJ コード）リスト |
| [jp-medicationingredientstrengthstrengthtype-namingsystem](NamingSystem-jp-medicationingredientstrengthstrengthtype-namingsystem.md) | JP Core Medication IngredientStrength StrengthType NamingSystem |
| [jp-medicationmethodjamibasicusage-namingsystem](NamingSystem-jp-medicationmethodjamibasicusage-namingsystem.md) | JP Core MedicationMethod JAMI BasicUsage NamingSystem JAMI用法コード表ー基本用法コード１桁 |
| [jp-medicationmethodjamidetailusage-namingsystem](NamingSystem-jp-medicationmethodjamidetailusage-namingsystem.md) | JP Core MedicationMethod JAMI DetailUsage NamingSystem JAMI用法コード表ー投与経路区分コード２桁（基本用法コード１桁と詳細区分コード１桁を連結） |
| [jp-medicationrequestdepartment-namingsystem](NamingSystem-jp-medicationrequestdepartment-namingsystem.md) | JP Core MedicationRequestDepartment NamingSystem 処方オーダ時に使用する診療科コード。医療機関固有の診療科コードを識別するためのコード体系。 |
| [jp-medicationroute-hl7-0162-namingsystem](NamingSystem-jp-medicationroute-hl7-0162-namingsystem.md) | JP MedicationRouteHL7 0162 NamingSystem |
| [jp-medicationsubstitutionnotallowedreason-namingsystem](NamingSystem-jp-medicationsubstitutionnotallowedreason-namingsystem.md) | JP Core MedicationSubstitution NotAllowedReason NamingSystem 後発品変更不可コード |
| [jp-medicationunitmerit9-namingsystem](NamingSystem-jp-medicationunitmerit9-namingsystem.md) | JP Core MedicationUnit MERIT9 NamingSystem 医薬品単位略号 |
| [jp-medicationusagejami-namingsystem](NamingSystem-jp-medicationusagejami-namingsystem.md) | JP MedicationUsage JAMI NamingSystem JAMI用法コード表ー１６桁バージョン |
| [jp-medicationusagejamiadditional-namingsystem](NamingSystem-jp-medicationusagejamiadditional-namingsystem.md) | JP Core MedicationUsage JAMI Additional NamingSystem JAMI用法コード表ー８桁補足用法コード |
| [jp-medis-master-disease-excode-namingsystem](NamingSystem-jp-medis-master-disease-excode-namingsystem.md) | JP MEDIS Master Disease ExCode NamingSystem MEDIS 病名マスタ 病名交換用コード |
| [jp-medis-master-disease-keynumber-namingsystem](NamingSystem-jp-medis-master-disease-keynumber-namingsystem.md) | JP MEDIS Master Disease KeyNumber NamingSystem MEDIS 病名マスタ 病名管理番号 NamingSystem |
| [jp-medis-master-disease-modExCode-namingsystem](NamingSystem-jp-medis-master-disease-modExCode-namingsystem.md) | JP MEDIS Master Disease ModExCode NamingSystem MEDIS 病名マスタ 修飾語交換用コード |
| [jp-medis-master-disease-modkeynumber-namingsystem](NamingSystem-jp-medis-master-disease-modkeynumber-namingsystem.md) | JP MEDIS Master Disease ModKeyNumber NamingSystem MEDIS 病名マスタ 修飾語管理番号 |
| [jp-medis-master-nursingobservationkeycode-namingsystem](NamingSystem-jp-medis-master-nursingobservationkeycode-namingsystem.md) | MEDIS Master NursingObservation KeyCode NamingSystem MEDIS 看護観察テーブル（観察名称管理番号（コード）） |
| [jp-medis-medicationcodehot13-namingsystem](NamingSystem-jp-medis-medicationcodehot13-namingsystem.md) | JP Core MedicationCode HOT13 NamingSystem MEDIS 医薬品基準番号（ＨＯＴ１３） |
| [jp-medis-medicationcodehot7-namingsystem](NamingSystem-jp-medis-medicationcodehot7-namingsystem.md) | JP Core MedicationCode HOT7 NamingSystem MEDIS 医薬品処方用番号（ＨＯＴ７） |
| [jp-medis-medicationcodehot9-namingsystem](NamingSystem-jp-medis-medicationcodehot9-namingsystem.md) | JP Core MedicationCode HOT9 NamingSystem MEDIS 医薬品基準番号（ＨＯＴ９） |
| [jp-medis-observation-jlac10-namingsystem](NamingSystem-jp-medis-observation-jlac10-namingsystem.md) | JP Core Observation JLAC10 NamingSystem MEDIS 臨床検査コードまとめ表「17桁コード表」 |
| [jp-microbiology-antimicrobialdrug-ns](NamingSystem-jp-microbiology-antimicrobialdrug-ns.md) | 微生物学的検査抗菌薬コード(Ver.5.2)本コードは厚生労働省院内感染対策サーベイランス事業(https://janis.mhlw.go.jp/)で作成されているマスタを編集・加工して利用している |
| [jp-microbiology-infectious-agent-ns](NamingSystem-jp-microbiology-infectious-agent-ns.md) | 微生物学的検査感染性物質コード(Ver.6.2) 本コードは厚生労働省院内感染対策サーベイランス事業(https://janis.mhlw.go.jp/)で作成されているマスタを編集・加工して利用している |
| [jp-prefecture-IdSystem](NamingSystem-jp-prefecture-IdSystem.md) | JP_prefecture_IdSystem_NamingSystem |
| [jp-prefecturenumber-namingsystem](NamingSystem-jp-prefecturenumber-namingsystem.md) | JP Core PrefectureNumber NamingSystem 都道府県番号 |
| [jp-specimen](NamingSystem-jp-specimen.md) | JP_specimen_NamingSystem |

### Example: Example Instances 

これらは、この実装ガイドに準拠するシステムによって生成および消費されるデータがどのように見えるかを示すインスタンスの例である。

| | |
| :--- | :--- |
| [Endpoint DICOM WADO-RS Example](Endpoint-endpoint-dicom-wadors-example.md) | DICOM WADO-RS Example |
| [JP Core AllergyIntolerance Example 食物アレルギー（小麦）](AllergyIntolerance-jp-allergyintolerance-example-1.md) | じん麻疹を生じた小麦粉アレルギーの例 |
| [JP Core Condition Diagnosis Example 病名（右橈骨遠位端骨折の術後）](Condition-jp-condition-diagnosis-example-1.md) | 右橈骨遠位端骨折の術後の例 |
| [JP Core Condition Example 病名（直腸癌）](Condition-jp-condition-example-1.md) | 下血を生じたKRAS野生型の転移性結腸直腸癌の例 |
| [JP Core Coverage Example 健康保険証](Coverage-jp-coverage-example-1.md) | 健康保険証 |
| [JP Core DiagnosticReport DentalOral Example 口腔診査レポート1](DiagnosticReport-jp-diagnosticreport-dentaloral-example-1.md) | 初診時口腔診査レポート |
| [JP Core DiagnosticReport DentalOral Example 口腔診査レポート2](DiagnosticReport-jp-diagnosticreport-dentaloral-example-2.md) | 初診時口腔診査レポート |
| [JP Core DiagnosticReport Endoscopy Example 内視鏡検査レポート](DiagnosticReport-jp-diagnosticreport-endoscopy-example-1.md) | 上部消化管内視鏡検査レポート |
| [JP Core DiagnosticReport Endoscopy Example2 内視鏡検査レポート](DiagnosticReport-jp-diagnosticreport-endoscopy-example-2.md) | 大腸内視鏡検査レポート |
| [JP Core DiagnosticReport Radiology Example 放射線読影レポート](DiagnosticReport-jp-diagnosticreport-radiology-example-1.md) | 放射線読影レポート |
| [JP Core DiagnosticReport_LabResult Example 検体検査（血液）レポート](DiagnosticReport-jp-diagnosticreport-labresult-example-1.md) | 検体検査（血液）レポート |
| [JP Core DiagnosticReport_Microbiology Example 一般細菌検査レポート](DiagnosticReport-jp-diagnosticreport-microbiology-example-1.md) | 一般細菌検査レポート |
| [JP Core Encounter Example 外来](Encounter-jp-encounter-example-1.md) | 外来 |
| [JP Core FamilyMemberHistory Example 家族歴（母親）](FamilyMemberHistory-jp-familymemberhistory-example-1.md) | 母親が糖尿病と難聴を有する家族歴の例 |
| [JP Core ImagingStudy Endoscopy Example 内視鏡画像検査](ImagingStudy-jp-imagingstudy-endoscopy-example-1.md) | 内視鏡画像検査 |
| [JP Core ImagingStudy Radiology Example 放射線画像検査](ImagingStudy-jp-imagingstudy-radiology-example-1.md) | 放射線画像検査 |
| [JP Core Immunization Example 肺炎球菌ワクチン接種](Immunization-jp-immunization-example-1.md) | 肺炎球菌ワクチン接種 YJコードによるワクチン記述 |
| [JP Core Location Example 手術室](Location-jp-location-example-ope.md) | 手術室 |
| [JP Core Location Example 病棟](Location-jp-location-example-ward.md) | 病棟 |
| [JP Core Location Example 診察室](Location-jp-location-example-examinationroom.md) | 診察室 |
| [JP Core Media Endoscopy Example 内視鏡画像](Media-jp-media-endoscopy-example-1.md) | 内視鏡画像 |
| [JP Core Medication Example ソリタ－＋アドナ注](Medication-jp-medication-example-2.md) | ソリタ－＋アドナ注 |
| [JP Core Medication Example ホリゾン注射液１０ｍｇ](Medication-jp-medication-example-1.md) | ホリゾン注射液１０ｍｇ |
| [JP Core MedicationAdministration Example 投薬中止 パンスポリンＴ錠１００ １００ｍｇ](MedicationAdministration-jp-medicationadministration-example-2.md) | 投薬中止 パンスポリンＴ錠１００ １００ｍｇ |
| [JP Core MedicationAdministration Example 投薬実施 ムコダイン錠２５０ｍｇ](MedicationAdministration-jp-medicationadministration-example-1.md) | 投薬実施 ムコダイン錠２５０ｍｇ |
| [JP Core MedicationAdministration Injection Example 注射実施 ワンショット静脈注射](MedicationAdministration-jp-medicationadministration-injection-example-1.md) | 注射実施 ワンショット静脈注射 |
| [JP Core MedicationAdministration Injection Example 注射実施 点滴注射](MedicationAdministration-jp-medicationadministration-injection-example-2.md) | 注射実施 点滴注射 |
| [JP Core MedicationDispense Example 調剤実施 内服薬](MedicationDispense-jp-medicationdispense-example-1.md) | 調剤実施 内服薬 |
| [JP Core MedicationDispense Injection Example 調剤実施 注射薬](MedicationDispense-jp-medicationdispense-injection-example-1.md) | 調剤実施 注射薬 |
| [JP Core MedicationRequest Example 内服処方指示 パンスポリンＴ錠１００ １００ｍｇ](MedicationRequest-jp-medicationrequest-example-2.md) | 内服処方指示 パンスポリンＴ錠１００ １００ｍｇ |
| [JP Core MedicationRequest Example 内服処方指示 ムコダイン錠２５０ｍｇ](MedicationRequest-jp-medicationrequest-example-1.md) | 内服処方指示 ムコダイン錠２５０ｍｇ |
| [JP Core MedicationRequest Injection Example 注射処方指示 ワンショット静脈注射](MedicationRequest-jp-medicationrequest-injection-example-1.md) | 注射処方指示 ホリゾン注射液１０ｍｇワンショット静脈注射 |
| [JP Core MedicationRequest Injection Example 注射処方指示 点滴注射](MedicationRequest-jp-medicationrequest-injection-example-2.md) | 点滴注射 |
| [JP Core MedicationRequest with Department Extension Example (CodeableConcept)](MedicationRequest-jp-medicationrequest-department-example-01.md) | JP_Department拡張を使用したMedicationRequestの例。診療科情報をSS-MIX2コードで表現する。 |
| [JP Core MedicationRequest with Department Extension Example (Reference)](MedicationRequest-jp-medicationrequest-department-example-02.md) | JP_Department拡張を使用したMedicationRequestの例。診療科情報をJP_Organization_Departmentへの参照で表現する。 |
| [JP Core MedicationStatement Example 服用申告情報 ムコダイン錠２５０ｍｇ](MedicationStatement-jp-medicationstatement-example-1.md) | 服用申告情報 ムコダイン錠２５０ｍｇ |
| [JP Core MedicationStatement Injection Example 投与申告情報 ソリタ－＋アドナ注](MedicationStatement-jp-medicationstatement-injection-example-1.md) | 投与申告情報 ソリタ－＋アドナ注 |
| [JP Core Observation BodyMeasurement Example 身体計測（体重）](Observation-jp-observation-bodyMeasurement-example-1.md) | 身体計測（体重） |
| [JP Core Observation DentalOral Missing Tooth Condition Example 口腔診査結果４（欠損歯の状態）](Observation-jp-observation-dentaloral-missingtoothcondition-example-4.md) | 口腔診査結果４（欠損歯の状態） |
| [JP Core Observation DentalOral Missing Tooth Condition Example 口腔診査結果５（欠損歯の状態）](Observation-jp-observation-dentaloral-missingtoothcondition-example-5.md) | 口腔診査結果５（欠損歯の状態） |
| [JP Core Observation DentalOral Missing Tooth Condition Example 口腔診査結果６（欠損歯の状態）](Observation-jp-observation-dentaloral-missingtoothcondition-example-6.md) | 口腔診査結果６（欠損歯の状態） |
| [JP Core Observation DentalOral Tooth Existence Example 口腔診査結果１（歯の有無）](Observation-jp-observation-dentaloral-toothexistence-example-1.md) | 口腔診査結果１（歯の有無） |
| [JP Core Observation DentalOral Tooth Existence Example 口腔診査結果２（歯の有無）](Observation-jp-observation-dentaloral-toothexistence-example-2.md) | 口腔診査結果２（歯の有無） |
| [JP Core Observation DentalOral Tooth Existence Example 口腔診査結果３（歯の有無）](Observation-jp-observation-dentaloral-toothexistence-example-3.md) | 口腔診査結果３（歯の有無） |
| [JP Core Observation DentalOral Tooth Existence Example 口腔診査結果４（歯の有無）](Observation-jp-observation-dentaloral-toothexistence-example-4.md) | 口腔診査結果４（歯の有無） |
| [JP Core Observation DentalOral Tooth Existence Example 口腔診査結果５（歯の有無）](Observation-jp-observation-dentaloral-toothexistence-example-5.md) | 口腔診査結果５（歯の有無） |
| [JP Core Observation DentalOral Tooth Existence Example 口腔診査結果６（歯の有無）](Observation-jp-observation-dentaloral-toothexistence-example-6.md) | 口腔診査結果６（歯の有無） |
| [JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果１（現存歯の処置状態）](Observation-jp-observation-dentaloral-toothtreatmentcondition-example-1.md) | 口腔診査結果１（現存歯の処置状態） |
| [JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果２（現存歯の処置状態）](Observation-jp-observation-dentaloral-toothtreatmentcondition-example-2.md) | 口腔診査結果２（現存歯の処置状態） |
| [JP Core Observation DentalOral Tooth Treatment Condition Example 口腔診査結果３（現存歯の処置状態）](Observation-jp-observation-dentaloral-toothtreatmentcondition-example-3.md) | 口腔診査結果３（現存歯の処置状態） |
| [JP Core Observation DentalOral eCS Example 口腔診査結果（診療情報提供書用）](Observation-jp-observation-dentaloral-ecs-example.md) | 口腔診査結果（現存複数歯の処置状態） |
| [JP Core Observation Electrocardiogram Example](Observation-jp-observation-electrocardiogram-example-1.md) | 安静時12誘導心電図 |
| [JP Core Observation Endoscopy Example 所見（[大腸 肉眼型1] IIa）](Observation-jp-observation-endoscopy-example-findings-2b.md) | 内視鏡所見（[大腸 肉眼型1] IIa） |
| [JP Core Observation Endoscopy Example 所見（[大腸 肉眼型1] Is(p)）](Observation-jp-observation-endoscopy-example-findings-1b.md) | 内視鏡所見（[大腸 肉眼型1] Is(p)） |
| [JP Core Observation Endoscopy Example 所見（大きさ 長径４（ｍｍ））](Observation-jp-observation-endoscopy-example-findings-1a.md) | 内視鏡所見（大きさ 長径４（ｍｍ）） |
| [JP Core Observation Endoscopy Example 所見（大きさ 長径５（ｍｍ））](Observation-jp-observation-endoscopy-example-findings-2a.md) | 内視鏡所見（大きさ 長径５（ｍｍ）） |
| [JP Core Observation Endoscopy Example 診断（[鋸歯状病変] HP）](Observation-jp-observation-endoscopy-example-diagnosis-2.md) | 内視鏡診断（[鋸歯状病変] HP） |
| [JP Core Observation Endoscopy Example 診断（腺腫）](Observation-jp-observation-endoscopy-example-diagnosis-1.md) | 内視鏡診断（腺腫） |
| [JP Core Observation LabResult Example 検体検査（尿酸）](Observation-jp-observation-labresult-example-1.md) | 検体検査（尿酸） |
| [JP Core Observation PhysicalExam Example 身体所見（腹痛）](Observation-jp-observation-physicalexam-example-1.md) | 身体所見（腹痛） |
| [JP Core Observation Radiology Findings Example 画像診断報告書（所見）](Observation-jp-observation-radiology-findings-example-1.md) | 画像診断報告書（所見） |
| [JP Core Observation Radiology Impression Example 画像診断報告書（インプレッション）](Observation-jp-observation-radiology-impression-example-1.md) | 画像診断報告書（インプレッション） |
| [JP Core Observation SocialHistory Example 社会的背景（喫煙）](Observation-jp-observation-socialhistory-example-1.md) | 喫煙に関する項目 |
| [JP Core Observation VitalSigns Example バイタル（呼吸数）](Observation-jp-observation-vitalsigns-example-1.md) | バイタル（呼吸数） |
| [JP Core Organization Department Example 内科診療科（ローカルコード使用）](Organization-jp-organization-department-example-02.md) | JP_Organization_Departmentリソースの例。内科診療科を表すOrganization例。医療機関固有の診療科コード（ローカルコード）を使用している。 |
| [JP Core Organization Department Example 循環器内科（両方のコード使用）](Organization-jp-organization-department-example-01.md) | JP_Organization_Departmentリソースの例。循環器内科を表すOrganization例。ローカルコードとSS-MIX2コードの両方を使用している（推奨パターン）。 |
| [JP Core Organization Department Example 整形外科診療科（SS-MIX2コード使用）](Organization-jp-organization-department-example-03.md) | JP_Organization_Departmentリソースの例。整形外科診療科を表すOrganization例。SS-MIX2標準診療科コードを使用している。 |
| [JP Core Organization Example ひまわり健康保険組合](Organization-jp-organization-example-payer.md) | ひまわり健康保険組合 |
| [JP Core Organization Example クリニック](Organization-jp-organization-example-clinic.md) | 太郎花子クリニック |
| [JP Core Organization Example 病院](Organization-jp-organization-example-hospital.md) | 健康第一病院 |
| [JP Core Organization Example ＡＢＣ検査株式会社](Organization-jp-organization-example-inspection.md) | ＡＢＣ検査株式会社 |
| [JP Core Patient Example 患者男性](Patient-jp-patient-example-1.md) | 患者男性 |
| [JP Core Practitioner Example 医師女性１](Practitioner-jp-practitioner-example-female-1.md) | 医師女性 |
| [JP Core Practitioner Example 医師男性１](Practitioner-jp-practitioner-example-male-1.md) | 医師男性 |
| [JP Core Practitioner Example 看護師女性１](Practitioner-jp-practitioner-example-female-2.md) | 看護師女性 |
| [JP Core Practitioner Example 看護師男性１](Practitioner-jp-practitioner-example-male-2.md) | 看護師男性 |
| [JP Core Procedure Example 処置（抜糸）](Procedure-jp-procedure-example-1.md) | 前額部に創傷処置を施術しフォローアップとして縫合糸の除去を予定している例 |
| [JP Core ProcedureRole Example 精神科外来サービス担当](PractitionerRole-jp-practitionerrole-example-1.md) | 精神科外来サービス担当 |
| [JP Core ServiceRequest with Department Extension Example (Text only)](ServiceRequest-jp-servicerequest-department-example-03.md) | JP_Department拡張を使用したServiceRequestの例。診療科情報をテキストのみで表現する。 |
| [JP Core Specimen Example 検体材料（喀痰）](Specimen-jp-specimen-example-3.md) | 検体材料（喀痰） |
| [JP Core Specimen Example 検体材料（尿）](Specimen-jp-specimen-example-1.md) | 検体材料（尿） |
| [JP Core Specimen Example 検体材料（血液）](Specimen-jp-specimen-example-2.md) | 検体材料（血液） |

本実装ガイドへのご質問・ご指摘については、
[GitHub Issue](https://github.com/jami-fhir-jp-wg/jp-core-v1x/issues)および
[GitHub PullRequest](https://github.com/jami-fhir-jp-wg/jp-core-v1x/pulls)にて受け付けている。