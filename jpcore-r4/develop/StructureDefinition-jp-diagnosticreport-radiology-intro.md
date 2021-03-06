<br/>
本プロファイルは、[`DiagnosticReport`リソース][JP_DiagnosticReport_Radiology] のうち、放射線画像検査における患者、患者群、機器、場所、およびこれらから得られた画像に対して実施された診断結果またはその解釈を示す「報告書」を表現するリソースの定義である。ここでは、`DiagnosticReport` リソースに対して本プロファイルに準拠する場合に必須となる要素や、サポートすべき拡張、用語、検索パラメータを定義する。
報告書は、依頼者や撮影の情報などの臨床的背景のほか、いくつかの計測値、画像、テキストおよびコード化された解釈、テンプレート化された診断報告書により構成される。

## 背景および想定シナリオ

本プロファイルは、以下のようなユースケースを想定する。

- 施設内で発生するオーダをもとに実施される画像検査に対する診断レポートの保存
- 他のリソースからの放射線検査レポートの参照<br/>
（例：[`ImagingStudy`リソース][JP_ImagingStudy_Radiology]) や[`ServiceRequest`リソース](http://www.hl7.org/fhir/servicerequest.html) の`reasonReference` エレメントで参照される放射線検査レポート）

## スコープ

放射線検査レポートで取り扱う診断報告書は、検査の終了後に、検査の診断結果として提供される一連の情報である。
この情報には、テキストレポート、画像、コード、および計測値などが含まれる。この組み合わせは、診断手順や特定の検査の結果の性質に応じて変化する。FHIRでは、レポートはドキュメント、RESTful API、メッセージングフレームワークなど、さまざまな方法で伝達することができる。これらの方法に含まれるのは、`DiagnosticReport`リソースそのものである。

`DiagnosticReport`リソースは、診断レポート自体の他に、患者など対象者に関する情報を持つ。また、オーダーに関する情報や所見の詳細、画像を参照することもできる。レポートの結論は、テキスト、構造化されたコード化データ、またはPDFなどの完全に標準化された添付レポートとして表現することができる。

もっとも典型的にはレポートの診断結果を`DiagnosticReport.conclusion`エレメントに保持し`DiagnosticReport.presentedForm`エレメントでレポート全体のデータを持つ。また、キー画像等の添付データは`DiagnosticReport.media`エレメントに`Media`リソースへのリンクとして保持する。

レポート全体のデータは、レポーティングシステム等により作成された多彩な表現型（PDF, RichText, xhtml等）でBase64のAttachmentとして提供される。ただし、結果参照や検索の汎用性を担保しHuman readableな形で提供されることを目的とし、レポートの内容はDomainResourceであるDiagnosticReport.textエレメントにも格納される。

`DiagnosticReport`リソースは、過去の結果（リソース内での過去および現在の結果）の提示をサポートすることを意図していない。`DiagnosticReport`リソースは、シーケンスの構造化を含めレポートの完全なサポートをまだ提供できていないが、将来実装される予定である。

## プロファイル定義


{% include markdown-link-references.md %}