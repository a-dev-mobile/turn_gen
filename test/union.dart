// import 'dart:convert';

// import 'package:meta/meta.dart';

// /// Represents all app failures
// class _Failure implements Exception {
//   /// Expected value is null or empty
//   const _Failure.empty();

//   /// Any status other than 200
//   const _Failure.badRequest();

//   ///  Expected value has invalid format
//   const _Failure.unprocessableEntity();

//   /// Get the error message for specified failure
//   const _Failure.other();
// }
// // end

// //          --TURN_GEN--
// //             (union)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
// // coverage:ignore-file
// // ignore_for_file: library_private_types_in_public_api
// // ignore_for_file: avoid-non-null-assertion
// // ignore_for_file: non_constant_identifier_names
// // ignore_for_file: unnecessary_null_checks
// // ignore_for_file: unused_element
// // ignore_for_file: sort_constructors_first
// // ignore_for_file: avoid_unused_constructor_parameters
// // ignore_for_file: avoid_positional_boolean_parameters,
// // ignore_for_file: always_put_required_named_parameters_first

// @immutable

// /// Represents all app failures
// class Failure implements Exception {
//   const Failure.empty() : _tag = FailureTag.empty;

//   const Failure.badRequest() : _tag = FailureTag.badRequest;

//   const Failure.unprocessableEntity() : _tag = FailureTag.unprocessableEntity;

//   const Failure.other() : _tag = FailureTag.other;

//   bool get isEmpty => _tag == FailureTag.empty;
//   bool get isBadRequest => _tag == FailureTag.badRequest;
//   bool get isUnprocessableEntity => _tag == FailureTag.unprocessableEntity;
//   bool get isOther => _tag == FailureTag.other;

//   String toJson() => jsonEncode(toMap());

//   factory Failure.fromJson(String source, [FailureTag? tag]) => Failure.fromMap(
//         json.decode(source) as Map<String, dynamic>,
//         tag,
//       );

//   Map<String, dynamic> toMap() {
//     switch (_tag) {
//       case FailureTag.empty:
//         return {
//           'tag': 'empty',
//         };
//       case FailureTag.badRequest:
//         return {
//           'tag': 'badRequest',
//         };
//       case FailureTag.unprocessableEntity:
//         return {
//           'tag': 'unprocessableEntity',
//         };
//       case FailureTag.other:
//         return {
//           'tag': 'other',
//         };
//     }
//   }

//   factory Failure.fromMap(
//     Map<dynamic, dynamic> map,
//     FailureTag? tag,
//   ) {
//     tag ??= FailureTag.values.byName(map['tag'].toString());
//     switch (tag) {
//       case FailureTag.empty:
//         return const Failure.empty();
//       case FailureTag.badRequest:
//         return const Failure.badRequest();
//       case FailureTag.unprocessableEntity:
//         return const Failure.unprocessableEntity();
//       case FailureTag.other:
//         return const Failure.other();
//     }
//   }

//   T map<T>({
//     required T Function(_FailureEmpty v) empty,
//     required T Function(_FailureBadRequest v) badRequest,
//     required T Function(_FailureUnprocessableEntity v) unprocessableEntity,
//     required T Function(_FailureOther v) other,
//   }) {
//     switch (_tag) {
//       case FailureTag.empty:
//         return empty(
//           const _FailureEmpty(),
//         );
//       case FailureTag.badRequest:
//         return badRequest(
//           const _FailureBadRequest(),
//         );
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity(
//           const _FailureUnprocessableEntity(),
//         );
//       case FailureTag.other:
//         return other(
//           const _FailureOther(),
//         );
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function(_FailureEmpty v)? empty,
//     T Function(_FailureBadRequest v)? badRequest,
//     T Function(_FailureUnprocessableEntity v)? unprocessableEntity,
//     T Function(_FailureOther v)? other,
//   }) {
//     switch (_tag) {
//       case FailureTag.empty:
//         if (empty != null) {
//           return empty(
//             const _FailureEmpty(),
//           );
//         }
//         return orElse();
//       case FailureTag.badRequest:
//         if (badRequest != null) {
//           return badRequest(
//             const _FailureBadRequest(),
//           );
//         }
//         return orElse();
//       case FailureTag.unprocessableEntity:
//         if (unprocessableEntity != null) {
//           return unprocessableEntity(
//             const _FailureUnprocessableEntity(),
//           );
//         }
//         return orElse();
//       case FailureTag.other:
//         if (other != null) {
//           return other(
//             const _FailureOther(),
//           );
//         }
//         return orElse();
//     }
//   }

//   T? mapOrNull<T>({
//     T? Function(_FailureEmpty v)? empty,
//     T? Function(_FailureBadRequest v)? badRequest,
//     T? Function(_FailureUnprocessableEntity v)? unprocessableEntity,
//     T? Function(_FailureOther v)? other,
//   }) {
//     switch (_tag) {
//       case FailureTag.empty:
//         return empty?.call(
//           const _FailureEmpty(),
//         );
//       case FailureTag.badRequest:
//         return badRequest?.call(
//           const _FailureBadRequest(),
//         );
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity?.call(
//           const _FailureUnprocessableEntity(),
//         );
//       case FailureTag.other:
//         return other?.call(
//           const _FailureOther(),
//         );
//     }
//   }

//   T? maybeMapOrNull<T>({
//     T? Function(_FailureEmpty v)? empty,
//     T? Function(_FailureBadRequest v)? badRequest,
//     T? Function(_FailureUnprocessableEntity v)? unprocessableEntity,
//     T? Function(_FailureOther v)? other,
//   }) {
//     switch (_tag) {
//       case FailureTag.empty:
//         if (empty != null) {
//           return empty(
//             const _FailureEmpty(),
//           );
//         }
//         return null;
//       case FailureTag.badRequest:
//         if (badRequest != null) {
//           return badRequest(
//             const _FailureBadRequest(),
//           );
//         }
//         return null;
//       case FailureTag.unprocessableEntity:
//         if (unprocessableEntity != null) {
//           return unprocessableEntity(
//             const _FailureUnprocessableEntity(),
//           );
//         }
//         return null;
//       case FailureTag.other:
//         if (other != null) {
//           return other(
//             const _FailureOther(),
//           );
//         }
//         return null;
//     }
//   }

//   T when<T>({
//     required T Function() empty,
//     required T Function() badRequest,
//     required T Function() unprocessableEntity,
//     required T Function() other,
//   }) {
//     switch (_tag) {
//       case FailureTag.empty:
//         return empty();
//       case FailureTag.badRequest:
//         return badRequest();
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity();
//       case FailureTag.other:
//         return other();
//     }
//   }

//   @override
//   bool operator ==(dynamic other) {
//     switch (_tag) {
//       case FailureTag.empty:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is Failure);

//       case FailureTag.badRequest:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is Failure);

//       case FailureTag.unprocessableEntity:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is Failure);

//       case FailureTag.other:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is Failure);
//     }
//   }

//   @override
//   int get hashCode {
//     switch (_tag) {
//       case FailureTag.empty:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//       case FailureTag.badRequest:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//       case FailureTag.unprocessableEntity:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//       case FailureTag.other:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//     }
//   }

//   @override
//   String toString() {
//     switch (_tag) {
//       case FailureTag.empty:
//         return 'Failure.empty()';
//       case FailureTag.badRequest:
//         return 'Failure.badRequest()';
//       case FailureTag.unprocessableEntity:
//         return 'Failure.unprocessableEntity()';
//       case FailureTag.other:
//         return 'Failure.other()';
//     }
//   }

//   final FailureTag _tag;
// }

// enum FailureTag {
//   empty,
//   badRequest,
//   unprocessableEntity,
//   other,
// }

// @immutable
// class _FailureEmpty extends Failure {
//   const _FailureEmpty() : super.empty();
// }

// @immutable
// class _FailureBadRequest extends Failure {
//   const _FailureBadRequest() : super.badRequest();
// }

// @immutable
// class _FailureUnprocessableEntity extends Failure {
//   const _FailureUnprocessableEntity() : super.unprocessableEntity();
// }

// @immutable
// class _FailureOther extends Failure {
//   const _FailureOther() : super.other();
// }
