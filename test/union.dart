// // turngen

// // ignore_for_file: constant_identifier_names

// import 'dart:convert';

// // import 'package:meta/meta.dart';

// class _Project {
//   const _Project.stage_4_BLK({
//     String api = 'https://api4.belka.aventus.work/',
//     String url = 'https://bc-api4-ru-belkacredit.wp.mendep.ru/',
//   });
//   const _Project.prod_C7({
//     String api = 'https://api.credit7.ru/',
//     String url = 'https://credit7.ru/',
//   });
//   const _Project.prod_ND({
//     String api = 'https://api.nadodeneg.ru/',
//     String url = 'https://nadodeneg.ru/',
//   });
//   const _Project.prod_BLK({
//     String api = 'https://api.belkacredit.ru/',
//     String url = 'https://belkacredit.ru/',
//   });
//   const _Project.stage_1_C7({
//     String api = 'https://api1.credit7.online.aventus.work/',
//     String url = 'https://c7-api1-ru-credit7.wp.mendep.ru/',
//   });
//   const _Project.stage_2_C7({
//     String api = 'https://api2.credit7.online.aventus.work/',
//     String url = 'https://c7-api2-ru-credit7.wp.mendep.ru/',
//   });
//   const _Project.stage_0_ND({
//     String api = 'https://api0.nd.aventus.work/',
//     String url = '',
//   });
//   const _Project.stage_1_ND({
//     String api = 'https://api1.nd.aventus.work/',
//     String url = '',
//   });
//   const _Project.stage_3_ND({
//     String api = 'https://api3.nd.aventus.work/',
//     String url = '',
//   });
//   const _Project.stage_0_BLK({
//     String api = 'https://api0.belka.aventus.work/',
//     String url = 'https://bc-api0-ru-belkacredit.wp.mendep.ru/',
//   });
//   const _Project.stage_5_BLK({
//     String api = 'https://api5.belka.aventus.work/',
//     String url = '',
//   });
// }

// // end

// //          --TURN_GEN--
// //             (union)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
// // coverage:ignore-file
// // ignore_for_file: library_private_types_in_public_api
// // ignore_for_file: camel_case_types
// // ignore_for_file: avoid-non-null-assertion
// // ignore_for_file: non_constant_identifier_names
// // ignore_for_file: unnecessary_null_checks
// // ignore_for_file: unused_element
// // ignore_for_file: sort_constructors_first
// // ignore_for_file: avoid_unused_constructor_parameters
// // ignore_for_file: avoid_positional_boolean_parameters,
// // ignore_for_file: always_put_required_named_parameters_first

// enum ProjectTag {
//   stage_4_BLK,
//   prod_C7,
//   prod_ND,
//   prod_BLK,
//   stage_1_C7,
//   stage_2_C7,
//   stage_0_ND,
//   stage_1_ND,
//   stage_3_ND,
//   stage_0_BLK,
//   stage_5_BLK,
// }

// @immutable
// class Project {
//   final ProjectTag _tag;
//   final String? _api_stage_4_BLK;
//   final String? _url_stage_4_BLK;
//   final String? _api_prod_C7;
//   final String? _url_prod_C7;
//   final String? _api_prod_ND;
//   final String? _url_prod_ND;
//   final String? _api_prod_BLK;
//   final String? _url_prod_BLK;
//   final String? _api_stage_1_C7;
//   final String? _url_stage_1_C7;
//   final String? _api_stage_2_C7;
//   final String? _url_stage_2_C7;
//   final String? _api_stage_0_ND;
//   final String? _url_stage_0_ND;
//   final String? _api_stage_1_ND;
//   final String? _url_stage_1_ND;
//   final String? _api_stage_3_ND;
//   final String? _url_stage_3_ND;
//   final String? _api_stage_0_BLK;
//   final String? _url_stage_0_BLK;
//   final String? _api_stage_5_BLK;
//   final String? _url_stage_5_BLK;

//   const Project.stage_4_BLK({
//     String api = 'https://api4.belka.aventus.work/',
//     String url = 'https://bc-api4-ru-belkacredit.wp.mendep.ru/',
//   })  : _tag = ProjectTag.stage_4_BLK,
//         _api_stage_4_BLK = api,
//         _url_stage_4_BLK = url,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.prod_C7({
//     String api = 'https://api.credit7.ru/',
//     String url = 'https://credit7.ru/',
//   })  : _tag = ProjectTag.prod_C7,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = api,
//         _url_prod_C7 = url,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.prod_ND({
//     String api = 'https://api.nadodeneg.ru/',
//     String url = 'https://nadodeneg.ru/',
//   })  : _tag = ProjectTag.prod_ND,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = api,
//         _url_prod_ND = url,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.prod_BLK({
//     String api = 'https://api.belkacredit.ru/',
//     String url = 'https://belkacredit.ru/',
//   })  : _tag = ProjectTag.prod_BLK,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = api,
//         _url_prod_BLK = url,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.stage_1_C7({
//     String api = 'https://api1.credit7.online.aventus.work/',
//     String url = 'https://c7-api1-ru-credit7.wp.mendep.ru/',
//   })  : _tag = ProjectTag.stage_1_C7,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = api,
//         _url_stage_1_C7 = url,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.stage_2_C7({
//     String api = 'https://api2.credit7.online.aventus.work/',
//     String url = 'https://c7-api2-ru-credit7.wp.mendep.ru/',
//   })  : _tag = ProjectTag.stage_2_C7,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = api,
//         _url_stage_2_C7 = url,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.stage_0_ND({
//     String api = 'https://api0.nd.aventus.work/',
//     String url = '',
//   })  : _tag = ProjectTag.stage_0_ND,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = api,
//         _url_stage_0_ND = url,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.stage_1_ND({
//     String api = 'https://api1.nd.aventus.work/',
//     String url = '',
//   })  : _tag = ProjectTag.stage_1_ND,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = api,
//         _url_stage_1_ND = url,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.stage_3_ND({
//     String api = 'https://api3.nd.aventus.work/',
//     String url = '',
//   })  : _tag = ProjectTag.stage_3_ND,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = api,
//         _url_stage_3_ND = url,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.stage_0_BLK({
//     String api = 'https://api0.belka.aventus.work/',
//     String url = 'https://bc-api0-ru-belkacredit.wp.mendep.ru/',
//   })  : _tag = ProjectTag.stage_0_BLK,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = api,
//         _url_stage_0_BLK = url,
//         _api_stage_5_BLK = null,
//         _url_stage_5_BLK = null;

//   const Project.stage_5_BLK({
//     String api = 'https://api5.belka.aventus.work/',
//     String url = '',
//   })  : _tag = ProjectTag.stage_5_BLK,
//         _api_stage_4_BLK = null,
//         _url_stage_4_BLK = null,
//         _api_prod_C7 = null,
//         _url_prod_C7 = null,
//         _api_prod_ND = null,
//         _url_prod_ND = null,
//         _api_prod_BLK = null,
//         _url_prod_BLK = null,
//         _api_stage_1_C7 = null,
//         _url_stage_1_C7 = null,
//         _api_stage_2_C7 = null,
//         _url_stage_2_C7 = null,
//         _api_stage_0_ND = null,
//         _url_stage_0_ND = null,
//         _api_stage_1_ND = null,
//         _url_stage_1_ND = null,
//         _api_stage_3_ND = null,
//         _url_stage_3_ND = null,
//         _api_stage_0_BLK = null,
//         _url_stage_0_BLK = null,
//         _api_stage_5_BLK = api,
//         _url_stage_5_BLK = url;

//   bool get stage_4_BLK => _tag == ProjectTag.stage_4_BLK;
//   bool get prod_C7 => _tag == ProjectTag.prod_C7;
//   bool get prod_ND => _tag == ProjectTag.prod_ND;
//   bool get prod_BLK => _tag == ProjectTag.prod_BLK;
//   bool get stage_1_C7 => _tag == ProjectTag.stage_1_C7;
//   bool get stage_2_C7 => _tag == ProjectTag.stage_2_C7;
//   bool get stage_0_ND => _tag == ProjectTag.stage_0_ND;
//   bool get stage_1_ND => _tag == ProjectTag.stage_1_ND;
//   bool get stage_3_ND => _tag == ProjectTag.stage_3_ND;
//   bool get stage_0_BLK => _tag == ProjectTag.stage_0_BLK;
//   bool get stage_5_BLK => _tag == ProjectTag.stage_5_BLK;

//   factory Project.fromJson(
//     String source, [
//     ProjectTag? tag,
//   ]) =>
//       Project.fromMap(
//         json.decode(source) as Map<String, dynamic>,
//         tag,
//       );

//   Map<String, dynamic> toMap() {
//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         return {
//           'tag': 'stage_4_BLK',
//           'api': _api_stage_4_BLK,
//           'url': _url_stage_4_BLK,
//         };
//       case ProjectTag.prod_C7:
//         return {
//           'tag': 'prod_C7',
//           'api': _api_prod_C7,
//           'url': _url_prod_C7,
//         };
//       case ProjectTag.prod_ND:
//         return {
//           'tag': 'prod_ND',
//           'api': _api_prod_ND,
//           'url': _url_prod_ND,
//         };
//       case ProjectTag.prod_BLK:
//         return {
//           'tag': 'prod_BLK',
//           'api': _api_prod_BLK,
//           'url': _url_prod_BLK,
//         };
//       case ProjectTag.stage_1_C7:
//         return {
//           'tag': 'stage_1_C7',
//           'api': _api_stage_1_C7,
//           'url': _url_stage_1_C7,
//         };
//       case ProjectTag.stage_2_C7:
//         return {
//           'tag': 'stage_2_C7',
//           'api': _api_stage_2_C7,
//           'url': _url_stage_2_C7,
//         };
//       case ProjectTag.stage_0_ND:
//         return {
//           'tag': 'stage_0_ND',
//           'api': _api_stage_0_ND,
//           'url': _url_stage_0_ND,
//         };
//       case ProjectTag.stage_1_ND:
//         return {
//           'tag': 'stage_1_ND',
//           'api': _api_stage_1_ND,
//           'url': _url_stage_1_ND,
//         };
//       case ProjectTag.stage_3_ND:
//         return {
//           'tag': 'stage_3_ND',
//           'api': _api_stage_3_ND,
//           'url': _url_stage_3_ND,
//         };
//       case ProjectTag.stage_0_BLK:
//         return {
//           'tag': 'stage_0_BLK',
//           'api': _api_stage_0_BLK,
//           'url': _url_stage_0_BLK,
//         };
//       case ProjectTag.stage_5_BLK:
//         return {
//           'tag': 'stage_5_BLK',
//           'api': _api_stage_5_BLK,
//           'url': _url_stage_5_BLK,
//         };
//     }
//   }

//   String toJson() => json.encode(toMap());

//   factory Project.fromMap(
//     Map<dynamic, dynamic> map, [
//     ProjectTag? tag,
//   ]) {
//     tag ??= ProjectTag.values.byName(map['tag'].toString());
//     switch (tag) {
//       case ProjectTag.stage_4_BLK:
//         return Project.stage_4_BLK(
//           api: map['api'] as String? ?? 'https://api4.belka.aventus.work/',
//           url: map['url'] as String? ??
//               'https://bc-api4-ru-belkacredit.wp.mendep.ru/',
//         );
//       case ProjectTag.prod_C7:
//         return Project.prod_C7(
//           api: map['api'] as String? ?? 'https://api.credit7.ru/',
//           url: map['url'] as String? ?? 'https://credit7.ru/',
//         );
//       case ProjectTag.prod_ND:
//         return Project.prod_ND(
//           api: map['api'] as String? ?? 'https://api.nadodeneg.ru/',
//           url: map['url'] as String? ?? 'https://nadodeneg.ru/',
//         );
//       case ProjectTag.prod_BLK:
//         return Project.prod_BLK(
//           api: map['api'] as String? ?? 'https://api.belkacredit.ru/',
//           url: map['url'] as String? ?? 'https://belkacredit.ru/',
//         );
//       case ProjectTag.stage_1_C7:
//         return Project.stage_1_C7(
//           api: map['api'] as String? ??
//               'https://api1.credit7.online.aventus.work/',
//           url: map['url'] as String? ??
//               'https://c7-api1-ru-credit7.wp.mendep.ru/',
//         );
//       case ProjectTag.stage_2_C7:
//         return Project.stage_2_C7(
//           api: map['api'] as String? ??
//               'https://api2.credit7.online.aventus.work/',
//           url: map['url'] as String? ??
//               'https://c7-api2-ru-credit7.wp.mendep.ru/',
//         );
//       case ProjectTag.stage_0_ND:
//         return Project.stage_0_ND(
//           api: map['api'] as String? ?? 'https://api0.nd.aventus.work/',
//           url: map['url'] as String? ?? '',
//         );
//       case ProjectTag.stage_1_ND:
//         return Project.stage_1_ND(
//           api: map['api'] as String? ?? 'https://api1.nd.aventus.work/',
//           url: map['url'] as String? ?? '',
//         );
//       case ProjectTag.stage_3_ND:
//         return Project.stage_3_ND(
//           api: map['api'] as String? ?? 'https://api3.nd.aventus.work/',
//           url: map['url'] as String? ?? '',
//         );
//       case ProjectTag.stage_0_BLK:
//         return Project.stage_0_BLK(
//           api: map['api'] as String? ?? 'https://api0.belka.aventus.work/',
//           url: map['url'] as String? ??
//               'https://bc-api0-ru-belkacredit.wp.mendep.ru/',
//         );
//       case ProjectTag.stage_5_BLK:
//         return Project.stage_5_BLK(
//           api: map['api'] as String? ?? 'https://api5.belka.aventus.work/',
//           url: map['url'] as String? ?? '',
//         );
//     }
//   }

//   T map<T>({
//     required T Function(_ProjectStage_4_BLK v) stage_4_BLK,
//     required T Function(_ProjectProd_C7 v) prod_C7,
//     required T Function(_ProjectProd_ND v) prod_ND,
//     required T Function(_ProjectProd_BLK v) prod_BLK,
//     required T Function(_ProjectStage_1_C7 v) stage_1_C7,
//     required T Function(_ProjectStage_2_C7 v) stage_2_C7,
//     required T Function(_ProjectStage_0_ND v) stage_0_ND,
//     required T Function(_ProjectStage_1_ND v) stage_1_ND,
//     required T Function(_ProjectStage_3_ND v) stage_3_ND,
//     required T Function(_ProjectStage_0_BLK v) stage_0_BLK,
//     required T Function(_ProjectStage_5_BLK v) stage_5_BLK,
//   }) {
//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         return stage_4_BLK(
//           _ProjectStage_4_BLK(
//             _api_stage_4_BLK!,
//             _url_stage_4_BLK!,
//           ),
//         );
//       case ProjectTag.prod_C7:
//         return prod_C7(
//           _ProjectProd_C7(
//             _api_prod_C7!,
//             _url_prod_C7!,
//           ),
//         );
//       case ProjectTag.prod_ND:
//         return prod_ND(
//           _ProjectProd_ND(
//             _api_prod_ND!,
//             _url_prod_ND!,
//           ),
//         );
//       case ProjectTag.prod_BLK:
//         return prod_BLK(
//           _ProjectProd_BLK(
//             _api_prod_BLK!,
//             _url_prod_BLK!,
//           ),
//         );
//       case ProjectTag.stage_1_C7:
//         return stage_1_C7(
//           _ProjectStage_1_C7(
//             _api_stage_1_C7!,
//             _url_stage_1_C7!,
//           ),
//         );
//       case ProjectTag.stage_2_C7:
//         return stage_2_C7(
//           _ProjectStage_2_C7(
//             _api_stage_2_C7!,
//             _url_stage_2_C7!,
//           ),
//         );
//       case ProjectTag.stage_0_ND:
//         return stage_0_ND(
//           _ProjectStage_0_ND(
//             _api_stage_0_ND!,
//             _url_stage_0_ND!,
//           ),
//         );
//       case ProjectTag.stage_1_ND:
//         return stage_1_ND(
//           _ProjectStage_1_ND(
//             _api_stage_1_ND!,
//             _url_stage_1_ND!,
//           ),
//         );
//       case ProjectTag.stage_3_ND:
//         return stage_3_ND(
//           _ProjectStage_3_ND(
//             _api_stage_3_ND!,
//             _url_stage_3_ND!,
//           ),
//         );
//       case ProjectTag.stage_0_BLK:
//         return stage_0_BLK(
//           _ProjectStage_0_BLK(
//             _api_stage_0_BLK!,
//             _url_stage_0_BLK!,
//           ),
//         );
//       case ProjectTag.stage_5_BLK:
//         return stage_5_BLK(
//           _ProjectStage_5_BLK(
//             _api_stage_5_BLK!,
//             _url_stage_5_BLK!,
//           ),
//         );
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function(_ProjectStage_4_BLK v)? stage_4_BLK,
//     T Function(_ProjectProd_C7 v)? prod_C7,
//     T Function(_ProjectProd_ND v)? prod_ND,
//     T Function(_ProjectProd_BLK v)? prod_BLK,
//     T Function(_ProjectStage_1_C7 v)? stage_1_C7,
//     T Function(_ProjectStage_2_C7 v)? stage_2_C7,
//     T Function(_ProjectStage_0_ND v)? stage_0_ND,
//     T Function(_ProjectStage_1_ND v)? stage_1_ND,
//     T Function(_ProjectStage_3_ND v)? stage_3_ND,
//     T Function(_ProjectStage_0_BLK v)? stage_0_BLK,
//     T Function(_ProjectStage_5_BLK v)? stage_5_BLK,
//   }) {
//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         if (stage_4_BLK != null) {
//           return stage_4_BLK(
//             _ProjectStage_4_BLK(
//               _api_stage_4_BLK!,
//               _url_stage_4_BLK!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.prod_C7:
//         if (prod_C7 != null) {
//           return prod_C7(
//             _ProjectProd_C7(
//               _api_prod_C7!,
//               _url_prod_C7!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.prod_ND:
//         if (prod_ND != null) {
//           return prod_ND(
//             _ProjectProd_ND(
//               _api_prod_ND!,
//               _url_prod_ND!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.prod_BLK:
//         if (prod_BLK != null) {
//           return prod_BLK(
//             _ProjectProd_BLK(
//               _api_prod_BLK!,
//               _url_prod_BLK!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.stage_1_C7:
//         if (stage_1_C7 != null) {
//           return stage_1_C7(
//             _ProjectStage_1_C7(
//               _api_stage_1_C7!,
//               _url_stage_1_C7!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.stage_2_C7:
//         if (stage_2_C7 != null) {
//           return stage_2_C7(
//             _ProjectStage_2_C7(
//               _api_stage_2_C7!,
//               _url_stage_2_C7!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.stage_0_ND:
//         if (stage_0_ND != null) {
//           return stage_0_ND(
//             _ProjectStage_0_ND(
//               _api_stage_0_ND!,
//               _url_stage_0_ND!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.stage_1_ND:
//         if (stage_1_ND != null) {
//           return stage_1_ND(
//             _ProjectStage_1_ND(
//               _api_stage_1_ND!,
//               _url_stage_1_ND!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.stage_3_ND:
//         if (stage_3_ND != null) {
//           return stage_3_ND(
//             _ProjectStage_3_ND(
//               _api_stage_3_ND!,
//               _url_stage_3_ND!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.stage_0_BLK:
//         if (stage_0_BLK != null) {
//           return stage_0_BLK(
//             _ProjectStage_0_BLK(
//               _api_stage_0_BLK!,
//               _url_stage_0_BLK!,
//             ),
//           );
//         }
//         return orElse();
//       case ProjectTag.stage_5_BLK:
//         if (stage_5_BLK != null) {
//           return stage_5_BLK(
//             _ProjectStage_5_BLK(
//               _api_stage_5_BLK!,
//               _url_stage_5_BLK!,
//             ),
//           );
//         }
//         return orElse();
//     }
//   }

//   T? mapOrNull<T>({
//     T? Function(_ProjectStage_4_BLK v)? stage_4_BLK,
//     T? Function(_ProjectProd_C7 v)? prod_C7,
//     T? Function(_ProjectProd_ND v)? prod_ND,
//     T? Function(_ProjectProd_BLK v)? prod_BLK,
//     T? Function(_ProjectStage_1_C7 v)? stage_1_C7,
//     T? Function(_ProjectStage_2_C7 v)? stage_2_C7,
//     T? Function(_ProjectStage_0_ND v)? stage_0_ND,
//     T? Function(_ProjectStage_1_ND v)? stage_1_ND,
//     T? Function(_ProjectStage_3_ND v)? stage_3_ND,
//     T? Function(_ProjectStage_0_BLK v)? stage_0_BLK,
//     T? Function(_ProjectStage_5_BLK v)? stage_5_BLK,
//   }) {
//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         return stage_4_BLK?.call(
//           _ProjectStage_4_BLK(
//             _api_stage_4_BLK!,
//             _url_stage_4_BLK!,
//           ),
//         );
//       case ProjectTag.prod_C7:
//         return prod_C7?.call(
//           _ProjectProd_C7(
//             _api_prod_C7!,
//             _url_prod_C7!,
//           ),
//         );
//       case ProjectTag.prod_ND:
//         return prod_ND?.call(
//           _ProjectProd_ND(
//             _api_prod_ND!,
//             _url_prod_ND!,
//           ),
//         );
//       case ProjectTag.prod_BLK:
//         return prod_BLK?.call(
//           _ProjectProd_BLK(
//             _api_prod_BLK!,
//             _url_prod_BLK!,
//           ),
//         );
//       case ProjectTag.stage_1_C7:
//         return stage_1_C7?.call(
//           _ProjectStage_1_C7(
//             _api_stage_1_C7!,
//             _url_stage_1_C7!,
//           ),
//         );
//       case ProjectTag.stage_2_C7:
//         return stage_2_C7?.call(
//           _ProjectStage_2_C7(
//             _api_stage_2_C7!,
//             _url_stage_2_C7!,
//           ),
//         );
//       case ProjectTag.stage_0_ND:
//         return stage_0_ND?.call(
//           _ProjectStage_0_ND(
//             _api_stage_0_ND!,
//             _url_stage_0_ND!,
//           ),
//         );
//       case ProjectTag.stage_1_ND:
//         return stage_1_ND?.call(
//           _ProjectStage_1_ND(
//             _api_stage_1_ND!,
//             _url_stage_1_ND!,
//           ),
//         );
//       case ProjectTag.stage_3_ND:
//         return stage_3_ND?.call(
//           _ProjectStage_3_ND(
//             _api_stage_3_ND!,
//             _url_stage_3_ND!,
//           ),
//         );
//       case ProjectTag.stage_0_BLK:
//         return stage_0_BLK?.call(
//           _ProjectStage_0_BLK(
//             _api_stage_0_BLK!,
//             _url_stage_0_BLK!,
//           ),
//         );
//       case ProjectTag.stage_5_BLK:
//         return stage_5_BLK?.call(
//           _ProjectStage_5_BLK(
//             _api_stage_5_BLK!,
//             _url_stage_5_BLK!,
//           ),
//         );
//     }
//   }

//   T? maybeMapOrNull<T>({
//     T? Function(_ProjectStage_4_BLK v)? stage_4_BLK,
//     T? Function(_ProjectProd_C7 v)? prod_C7,
//     T? Function(_ProjectProd_ND v)? prod_ND,
//     T? Function(_ProjectProd_BLK v)? prod_BLK,
//     T? Function(_ProjectStage_1_C7 v)? stage_1_C7,
//     T? Function(_ProjectStage_2_C7 v)? stage_2_C7,
//     T? Function(_ProjectStage_0_ND v)? stage_0_ND,
//     T? Function(_ProjectStage_1_ND v)? stage_1_ND,
//     T? Function(_ProjectStage_3_ND v)? stage_3_ND,
//     T? Function(_ProjectStage_0_BLK v)? stage_0_BLK,
//     T? Function(_ProjectStage_5_BLK v)? stage_5_BLK,
//   }) {
//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         if (stage_4_BLK != null) {
//           return stage_4_BLK(
//             _ProjectStage_4_BLK(
//               _api_stage_4_BLK!,
//               _url_stage_4_BLK!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.prod_C7:
//         if (prod_C7 != null) {
//           return prod_C7(
//             _ProjectProd_C7(
//               _api_prod_C7!,
//               _url_prod_C7!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.prod_ND:
//         if (prod_ND != null) {
//           return prod_ND(
//             _ProjectProd_ND(
//               _api_prod_ND!,
//               _url_prod_ND!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.prod_BLK:
//         if (prod_BLK != null) {
//           return prod_BLK(
//             _ProjectProd_BLK(
//               _api_prod_BLK!,
//               _url_prod_BLK!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.stage_1_C7:
//         if (stage_1_C7 != null) {
//           return stage_1_C7(
//             _ProjectStage_1_C7(
//               _api_stage_1_C7!,
//               _url_stage_1_C7!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.stage_2_C7:
//         if (stage_2_C7 != null) {
//           return stage_2_C7(
//             _ProjectStage_2_C7(
//               _api_stage_2_C7!,
//               _url_stage_2_C7!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.stage_0_ND:
//         if (stage_0_ND != null) {
//           return stage_0_ND(
//             _ProjectStage_0_ND(
//               _api_stage_0_ND!,
//               _url_stage_0_ND!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.stage_1_ND:
//         if (stage_1_ND != null) {
//           return stage_1_ND(
//             _ProjectStage_1_ND(
//               _api_stage_1_ND!,
//               _url_stage_1_ND!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.stage_3_ND:
//         if (stage_3_ND != null) {
//           return stage_3_ND(
//             _ProjectStage_3_ND(
//               _api_stage_3_ND!,
//               _url_stage_3_ND!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.stage_0_BLK:
//         if (stage_0_BLK != null) {
//           return stage_0_BLK(
//             _ProjectStage_0_BLK(
//               _api_stage_0_BLK!,
//               _url_stage_0_BLK!,
//             ),
//           );
//         }
//         return null;
//       case ProjectTag.stage_5_BLK:
//         if (stage_5_BLK != null) {
//           return stage_5_BLK(
//             _ProjectStage_5_BLK(
//               _api_stage_5_BLK!,
//               _url_stage_5_BLK!,
//             ),
//           );
//         }
//         return null;
//     }
//   }

//   T when<T>({
//     required T Function(
//       String api,
//       String url,
//     ) stage_4_BLK,
//     required T Function(
//       String api,
//       String url,
//     ) prod_C7,
//     required T Function(
//       String api,
//       String url,
//     ) prod_ND,
//     required T Function(
//       String api,
//       String url,
//     ) prod_BLK,
//     required T Function(
//       String api,
//       String url,
//     ) stage_1_C7,
//     required T Function(
//       String api,
//       String url,
//     ) stage_2_C7,
//     required T Function(
//       String api,
//       String url,
//     ) stage_0_ND,
//     required T Function(
//       String api,
//       String url,
//     ) stage_1_ND,
//     required T Function(
//       String api,
//       String url,
//     ) stage_3_ND,
//     required T Function(
//       String api,
//       String url,
//     ) stage_0_BLK,
//     required T Function(
//       String api,
//       String url,
//     ) stage_5_BLK,
//   }) {
//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         return stage_4_BLK(
//           _api_stage_4_BLK!,
//           _url_stage_4_BLK!,
//         );
//       case ProjectTag.prod_C7:
//         return prod_C7(
//           _api_prod_C7!,
//           _url_prod_C7!,
//         );
//       case ProjectTag.prod_ND:
//         return prod_ND(
//           _api_prod_ND!,
//           _url_prod_ND!,
//         );
//       case ProjectTag.prod_BLK:
//         return prod_BLK(
//           _api_prod_BLK!,
//           _url_prod_BLK!,
//         );
//       case ProjectTag.stage_1_C7:
//         return stage_1_C7(
//           _api_stage_1_C7!,
//           _url_stage_1_C7!,
//         );
//       case ProjectTag.stage_2_C7:
//         return stage_2_C7(
//           _api_stage_2_C7!,
//           _url_stage_2_C7!,
//         );
//       case ProjectTag.stage_0_ND:
//         return stage_0_ND(
//           _api_stage_0_ND!,
//           _url_stage_0_ND!,
//         );
//       case ProjectTag.stage_1_ND:
//         return stage_1_ND(
//           _api_stage_1_ND!,
//           _url_stage_1_ND!,
//         );
//       case ProjectTag.stage_3_ND:
//         return stage_3_ND(
//           _api_stage_3_ND!,
//           _url_stage_3_ND!,
//         );
//       case ProjectTag.stage_0_BLK:
//         return stage_0_BLK(
//           _api_stage_0_BLK!,
//           _url_stage_0_BLK!,
//         );
//       case ProjectTag.stage_5_BLK:
//         return stage_5_BLK(
//           _api_stage_5_BLK!,
//           _url_stage_5_BLK!,
//         );
//     }
//   }

//   @override
//   bool operator ==(Object other) {
//     if (identical(this, other)) return true;
//     if (other is! Project) return false;
//     if (other.runtimeType != runtimeType) return false;

//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_stage_4_BLK,
//                   _api_stage_4_BLK,
//                 ) ||
//                 other._api_stage_4_BLK == _api_stage_4_BLK) &&
//             (identical(
//                   other._url_stage_4_BLK,
//                   _url_stage_4_BLK,
//                 ) ||
//                 other._url_stage_4_BLK == _url_stage_4_BLK);
//       case ProjectTag.prod_C7:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_prod_C7,
//                   _api_prod_C7,
//                 ) ||
//                 other._api_prod_C7 == _api_prod_C7) &&
//             (identical(
//                   other._url_prod_C7,
//                   _url_prod_C7,
//                 ) ||
//                 other._url_prod_C7 == _url_prod_C7);
//       case ProjectTag.prod_ND:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_prod_ND,
//                   _api_prod_ND,
//                 ) ||
//                 other._api_prod_ND == _api_prod_ND) &&
//             (identical(
//                   other._url_prod_ND,
//                   _url_prod_ND,
//                 ) ||
//                 other._url_prod_ND == _url_prod_ND);
//       case ProjectTag.prod_BLK:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_prod_BLK,
//                   _api_prod_BLK,
//                 ) ||
//                 other._api_prod_BLK == _api_prod_BLK) &&
//             (identical(
//                   other._url_prod_BLK,
//                   _url_prod_BLK,
//                 ) ||
//                 other._url_prod_BLK == _url_prod_BLK);
//       case ProjectTag.stage_1_C7:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_stage_1_C7,
//                   _api_stage_1_C7,
//                 ) ||
//                 other._api_stage_1_C7 == _api_stage_1_C7) &&
//             (identical(
//                   other._url_stage_1_C7,
//                   _url_stage_1_C7,
//                 ) ||
//                 other._url_stage_1_C7 == _url_stage_1_C7);
//       case ProjectTag.stage_2_C7:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_stage_2_C7,
//                   _api_stage_2_C7,
//                 ) ||
//                 other._api_stage_2_C7 == _api_stage_2_C7) &&
//             (identical(
//                   other._url_stage_2_C7,
//                   _url_stage_2_C7,
//                 ) ||
//                 other._url_stage_2_C7 == _url_stage_2_C7);
//       case ProjectTag.stage_0_ND:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_stage_0_ND,
//                   _api_stage_0_ND,
//                 ) ||
//                 other._api_stage_0_ND == _api_stage_0_ND) &&
//             (identical(
//                   other._url_stage_0_ND,
//                   _url_stage_0_ND,
//                 ) ||
//                 other._url_stage_0_ND == _url_stage_0_ND);
//       case ProjectTag.stage_1_ND:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_stage_1_ND,
//                   _api_stage_1_ND,
//                 ) ||
//                 other._api_stage_1_ND == _api_stage_1_ND) &&
//             (identical(
//                   other._url_stage_1_ND,
//                   _url_stage_1_ND,
//                 ) ||
//                 other._url_stage_1_ND == _url_stage_1_ND);
//       case ProjectTag.stage_3_ND:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_stage_3_ND,
//                   _api_stage_3_ND,
//                 ) ||
//                 other._api_stage_3_ND == _api_stage_3_ND) &&
//             (identical(
//                   other._url_stage_3_ND,
//                   _url_stage_3_ND,
//                 ) ||
//                 other._url_stage_3_ND == _url_stage_3_ND);
//       case ProjectTag.stage_0_BLK:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_stage_0_BLK,
//                   _api_stage_0_BLK,
//                 ) ||
//                 other._api_stage_0_BLK == _api_stage_0_BLK) &&
//             (identical(
//                   other._url_stage_0_BLK,
//                   _url_stage_0_BLK,
//                 ) ||
//                 other._url_stage_0_BLK == _url_stage_0_BLK);
//       case ProjectTag.stage_5_BLK:
//         return _tag == other._tag &&
//             (identical(
//                   other._api_stage_5_BLK,
//                   _api_stage_5_BLK,
//                 ) ||
//                 other._api_stage_5_BLK == _api_stage_5_BLK) &&
//             (identical(
//                   other._url_stage_5_BLK,
//                   _url_stage_5_BLK,
//                 ) ||
//                 other._url_stage_5_BLK == _url_stage_5_BLK);
//     }
//   }

//   @override
//   int get hashCode {
//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_stage_4_BLK,
//             _url_stage_4_BLK,
//           ],
//         );
//       case ProjectTag.prod_C7:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_prod_C7,
//             _url_prod_C7,
//           ],
//         );
//       case ProjectTag.prod_ND:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_prod_ND,
//             _url_prod_ND,
//           ],
//         );
//       case ProjectTag.prod_BLK:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_prod_BLK,
//             _url_prod_BLK,
//           ],
//         );
//       case ProjectTag.stage_1_C7:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_stage_1_C7,
//             _url_stage_1_C7,
//           ],
//         );
//       case ProjectTag.stage_2_C7:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_stage_2_C7,
//             _url_stage_2_C7,
//           ],
//         );
//       case ProjectTag.stage_0_ND:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_stage_0_ND,
//             _url_stage_0_ND,
//           ],
//         );
//       case ProjectTag.stage_1_ND:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_stage_1_ND,
//             _url_stage_1_ND,
//           ],
//         );
//       case ProjectTag.stage_3_ND:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_stage_3_ND,
//             _url_stage_3_ND,
//           ],
//         );
//       case ProjectTag.stage_0_BLK:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_stage_0_BLK,
//             _url_stage_0_BLK,
//           ],
//         );
//       case ProjectTag.stage_5_BLK:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _tag,
//             _api_stage_5_BLK,
//             _url_stage_5_BLK,
//           ],
//         );
//     }
//   }

//   @override
//   String toString() {
//     switch (_tag) {
//       case ProjectTag.stage_4_BLK:
//         return 'Project.stage_4_BLK(api: $_api_stage_4_BLK, url: $_url_stage_4_BLK)';
//       case ProjectTag.prod_C7:
//         return 'Project.prod_C7(api: $_api_prod_C7, url: $_url_prod_C7)';
//       case ProjectTag.prod_ND:
//         return 'Project.prod_ND(api: $_api_prod_ND, url: $_url_prod_ND)';
//       case ProjectTag.prod_BLK:
//         return 'Project.prod_BLK(api: $_api_prod_BLK, url: $_url_prod_BLK)';
//       case ProjectTag.stage_1_C7:
//         return 'Project.stage_1_C7(api: $_api_stage_1_C7, url: $_url_stage_1_C7)';
//       case ProjectTag.stage_2_C7:
//         return 'Project.stage_2_C7(api: $_api_stage_2_C7, url: $_url_stage_2_C7)';
//       case ProjectTag.stage_0_ND:
//         return 'Project.stage_0_ND(api: $_api_stage_0_ND, url: $_url_stage_0_ND)';
//       case ProjectTag.stage_1_ND:
//         return 'Project.stage_1_ND(api: $_api_stage_1_ND, url: $_url_stage_1_ND)';
//       case ProjectTag.stage_3_ND:
//         return 'Project.stage_3_ND(api: $_api_stage_3_ND, url: $_url_stage_3_ND)';
//       case ProjectTag.stage_0_BLK:
//         return 'Project.stage_0_BLK(api: $_api_stage_0_BLK, url: $_url_stage_0_BLK)';
//       case ProjectTag.stage_5_BLK:
//         return 'Project.stage_5_BLK(api: $_api_stage_5_BLK, url: $_url_stage_5_BLK)';
//     }
//   }
// }

// @immutable
// class _ProjectStage_4_BLK extends Project {
//   const _ProjectStage_4_BLK(
//     this.api,
//     this.url,
//   ) : super.stage_4_BLK(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectStage_4_BLK copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectStage_4_BLK(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectProd_C7 extends Project {
//   const _ProjectProd_C7(
//     this.api,
//     this.url,
//   ) : super.prod_C7(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectProd_C7 copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectProd_C7(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectProd_ND extends Project {
//   const _ProjectProd_ND(
//     this.api,
//     this.url,
//   ) : super.prod_ND(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectProd_ND copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectProd_ND(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectProd_BLK extends Project {
//   const _ProjectProd_BLK(
//     this.api,
//     this.url,
//   ) : super.prod_BLK(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectProd_BLK copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectProd_BLK(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectStage_1_C7 extends Project {
//   const _ProjectStage_1_C7(
//     this.api,
//     this.url,
//   ) : super.stage_1_C7(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectStage_1_C7 copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectStage_1_C7(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectStage_2_C7 extends Project {
//   const _ProjectStage_2_C7(
//     this.api,
//     this.url,
//   ) : super.stage_2_C7(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectStage_2_C7 copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectStage_2_C7(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectStage_0_ND extends Project {
//   const _ProjectStage_0_ND(
//     this.api,
//     this.url,
//   ) : super.stage_0_ND(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectStage_0_ND copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectStage_0_ND(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectStage_1_ND extends Project {
//   const _ProjectStage_1_ND(
//     this.api,
//     this.url,
//   ) : super.stage_1_ND(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectStage_1_ND copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectStage_1_ND(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectStage_3_ND extends Project {
//   const _ProjectStage_3_ND(
//     this.api,
//     this.url,
//   ) : super.stage_3_ND(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectStage_3_ND copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectStage_3_ND(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectStage_0_BLK extends Project {
//   const _ProjectStage_0_BLK(
//     this.api,
//     this.url,
//   ) : super.stage_0_BLK(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectStage_0_BLK copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectStage_0_BLK(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }

// @immutable
// class _ProjectStage_5_BLK extends Project {
//   const _ProjectStage_5_BLK(
//     this.api,
//     this.url,
//   ) : super.stage_5_BLK(
//           api: api,
//           url: url,
//         );
//   final String api;
//   final String url;

//   _ProjectStage_5_BLK copyWith({
//     String? api,
//     String? url,
//   }) {
//     return _ProjectStage_5_BLK(
//       api ?? this.api,
//       url ?? this.url,
//     );
//   }
// }
