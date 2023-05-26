// import 'package:collection/collection.dart';
// import 'package:meta/meta.dart';

// import 'models/enum_type_run.dart';

// //
// /* no: tomap frommap  */
// class _Failure {
//   /// Expected value has invalid format
//   const _Failure.unprocessableEntity(
//     /* type: enum*/
//     TestRun a,
//     TestRun g,
//   );

//   /// Expected value is null or empty
//   const _Failure.empty(
//     List<String> a,
//     List<String> g,
//   );

//   /// Any status other than 200
//   const _Failure.badRequest({List<String>? a, List<String> g = const []});

//   /// Get the error message for specified failure
//   const _Failure.other();

//   /// Timeout error
//   const _Failure.timeout();

//   /// Network connection failure
//   const _Failure.connectionError(String message);
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

// enum FailureTag {
//   unprocessableEntity,
//   empty,
//   badRequest,
//   other,
//   timeout,
//   connectionError,
// }

// @immutable
// class Failure {
//   const Failure.unprocessableEntity(
//     TestRun a,
//     TestRun g,
//   )   : _tag = FailureTag.unprocessableEntity,
//         _a_unprocessableEntity = a,
//         _g_unprocessableEntity = g,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null;

//   const Failure.empty(
//     List<String> a,
//     List<String> g,
//   )   : _tag = FailureTag.empty,
//         _a_unprocessableEntity = null,
//         _g_unprocessableEntity = null,
//         _a_empty = a,
//         _g_empty = g,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null;

//   const Failure.badRequest({List<String>? a, List<String> g = const []})
//       : _tag = FailureTag.badRequest,
//         _a_unprocessableEntity = null,
//         _g_unprocessableEntity = null,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = a,
//         _g_badRequest = g,
//         _message_connectionError = null;

//   const Failure.other()
//       : _tag = FailureTag.other,
//         _a_unprocessableEntity = null,
//         _g_unprocessableEntity = null,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null;

//   const Failure.timeout()
//       : _tag = FailureTag.timeout,
//         _a_unprocessableEntity = null,
//         _g_unprocessableEntity = null,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null;

//   const Failure.connectionError(String message)
//       : _tag = FailureTag.connectionError,
//         _a_unprocessableEntity = null,
//         _g_unprocessableEntity = null,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = message;

//   bool get isUnprocessableEntity => _tag == FailureTag.unprocessableEntity;
//   bool get isEmpty => _tag == FailureTag.empty;
//   bool get isBadRequest => _tag == FailureTag.badRequest;
//   bool get isOther => _tag == FailureTag.other;
//   bool get isTimeout => _tag == FailureTag.timeout;
//   bool get isConnectionError => _tag == FailureTag.connectionError;

//   T map<T>({
//     required T Function(_FailureUnprocessableEntity v) unprocessableEntity,
//     required T Function(_FailureEmpty v) empty,
//     required T Function(_FailureBadRequest v) badRequest,
//     required T Function(_FailureOther v) other,
//     required T Function(_FailureTimeout v) timeout,
//     required T Function(_FailureConnectionError v) connectionError,
//   }) {
//     switch (_tag) {
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity(
//           _FailureUnprocessableEntity(
//             _a_unprocessableEntity!,
//             _g_unprocessableEntity!,
//           ),
//         );
//       case FailureTag.empty:
//         return empty(
//           _FailureEmpty(
//             _a_empty!,
//             _g_empty!,
//           ),
//         );
//       case FailureTag.badRequest:
//         return badRequest(
//           _FailureBadRequest(
//             _a_badRequest,
//             _g_badRequest!,
//           ),
//         );
//       case FailureTag.other:
//         return other(
//           const _FailureOther(),
//         );
//       case FailureTag.timeout:
//         return timeout(
//           const _FailureTimeout(),
//         );
//       case FailureTag.connectionError:
//         return connectionError(
//           _FailureConnectionError(
//             _message_connectionError!,
//           ),
//         );
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function(_FailureUnprocessableEntity v)? unprocessableEntity,
//     T Function(_FailureEmpty v)? empty,
//     T Function(_FailureBadRequest v)? badRequest,
//     T Function(_FailureOther v)? other,
//     T Function(_FailureTimeout v)? timeout,
//     T Function(_FailureConnectionError v)? connectionError,
//   }) {
//     switch (_tag) {
//       case FailureTag.unprocessableEntity:
//         if (unprocessableEntity != null) {
//           return unprocessableEntity(
//             _FailureUnprocessableEntity(
//               _a_unprocessableEntity!,
//               _g_unprocessableEntity!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.empty:
//         if (empty != null) {
//           return empty(
//             _FailureEmpty(
//               _a_empty!,
//               _g_empty!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.badRequest:
//         if (badRequest != null) {
//           return badRequest(
//             _FailureBadRequest(
//               _a_badRequest,
//               _g_badRequest!,
//             ),
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
//       case FailureTag.timeout:
//         if (timeout != null) {
//           return timeout(
//             const _FailureTimeout(),
//           );
//         }
//         return orElse();
//       case FailureTag.connectionError:
//         if (connectionError != null) {
//           return connectionError(
//             _FailureConnectionError(
//               _message_connectionError!,
//             ),
//           );
//         }
//         return orElse();
//     }
//   }

//   T? mapOrNull<T>({
//     T? Function(_FailureUnprocessableEntity v)? unprocessableEntity,
//     T? Function(_FailureEmpty v)? empty,
//     T? Function(_FailureBadRequest v)? badRequest,
//     T? Function(_FailureOther v)? other,
//     T? Function(_FailureTimeout v)? timeout,
//     T? Function(_FailureConnectionError v)? connectionError,
//   }) {
//     switch (_tag) {
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity?.call(
//           _FailureUnprocessableEntity(
//             _a_unprocessableEntity!,
//             _g_unprocessableEntity!,
//           ),
//         );
//       case FailureTag.empty:
//         return empty?.call(
//           _FailureEmpty(
//             _a_empty!,
//             _g_empty!,
//           ),
//         );
//       case FailureTag.badRequest:
//         return badRequest?.call(
//           _FailureBadRequest(
//             _a_badRequest,
//             _g_badRequest!,
//           ),
//         );
//       case FailureTag.other:
//         return other?.call(
//           const _FailureOther(),
//         );
//       case FailureTag.timeout:
//         return timeout?.call(
//           const _FailureTimeout(),
//         );
//       case FailureTag.connectionError:
//         return connectionError?.call(
//           _FailureConnectionError(
//             _message_connectionError!,
//           ),
//         );
//     }
//   }

//   T? maybeMapOrNull<T>({
//     T? Function(_FailureUnprocessableEntity v)? unprocessableEntity,
//     T? Function(_FailureEmpty v)? empty,
//     T? Function(_FailureBadRequest v)? badRequest,
//     T? Function(_FailureOther v)? other,
//     T? Function(_FailureTimeout v)? timeout,
//     T? Function(_FailureConnectionError v)? connectionError,
//   }) {
//     switch (_tag) {
//       case FailureTag.unprocessableEntity:
//         if (unprocessableEntity != null) {
//           return unprocessableEntity(
//             _FailureUnprocessableEntity(
//               _a_unprocessableEntity!,
//               _g_unprocessableEntity!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.empty:
//         if (empty != null) {
//           return empty(
//             _FailureEmpty(
//               _a_empty!,
//               _g_empty!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.badRequest:
//         if (badRequest != null) {
//           return badRequest(
//             _FailureBadRequest(
//               _a_badRequest,
//               _g_badRequest!,
//             ),
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
//       case FailureTag.timeout:
//         if (timeout != null) {
//           return timeout(
//             const _FailureTimeout(),
//           );
//         }
//         return null;
//       case FailureTag.connectionError:
//         if (connectionError != null) {
//           return connectionError(
//             _FailureConnectionError(
//               _message_connectionError!,
//             ),
//           );
//         }
//         return null;
//     }
//   }

//   T when<T>({
//     required T Function(
//       TestRun a,
//       TestRun g,
//     ) unprocessableEntity,
//     required T Function(
//       List<String> a,
//       List<String> g,
//     ) empty,
//     required T Function(
//       List<String>? a,
//       List<String> g,
//     ) badRequest,
//     required T Function() other,
//     required T Function() timeout,
//     required T Function(
//       String message,
//     ) connectionError,
//   }) {
//     switch (_tag) {
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity(
//           _a_unprocessableEntity!,
//           _g_unprocessableEntity!,
//         );
//       case FailureTag.empty:
//         return empty(
//           _a_empty!,
//           _g_empty!,
//         );
//       case FailureTag.badRequest:
//         return badRequest(
//           _a_badRequest,
//           _g_badRequest!,
//         );
//       case FailureTag.other:
//         return other();
//       case FailureTag.timeout:
//         return timeout();
//       case FailureTag.connectionError:
//         return connectionError(
//           _message_connectionError!,
//         );
//     }
//   }

//   @override
//   bool operator ==(dynamic other) {
//     switch (_tag) {
//       case FailureTag.unprocessableEntity:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._a_unprocessableEntity,
//                       _a_unprocessableEntity,
//                     ) ||
//                     other._a_unprocessableEntity == _a_unprocessableEntity) &&
//                 (identical(
//                       other._g_unprocessableEntity,
//                       _g_unprocessableEntity,
//                     ) ||
//                     other._g_unprocessableEntity == _g_unprocessableEntity));
//       case FailureTag.empty:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 const DeepCollectionEquality().equals(
//                   other._a_empty,
//                   _a_empty,
//                 ) &&
//                 const DeepCollectionEquality().equals(
//                   other._g_empty,
//                   _g_empty,
//                 ));
//       case FailureTag.badRequest:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 const DeepCollectionEquality().equals(
//                   other._a_badRequest,
//                   _a_badRequest,
//                 ) &&
//                 const DeepCollectionEquality().equals(
//                   other._g_badRequest,
//                   _g_badRequest,
//                 ));
//       case FailureTag.other:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is Failure);

//       case FailureTag.timeout:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is Failure);

//       case FailureTag.connectionError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._message_connectionError,
//                       _message_connectionError,
//                     ) ||
//                     other._message_connectionError ==
//                         _message_connectionError));
//     }
//   }

//   @override
//   int get hashCode {
//     switch (_tag) {
//       case FailureTag.unprocessableEntity:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _a_unprocessableEntity,
//             _g_unprocessableEntity,
//           ],
//         );
//       case FailureTag.empty:
//         return Object.hashAll(
//           [
//             runtimeType,
//             const DeepCollectionEquality().hash(
//               _a_empty,
//             ),
//             const DeepCollectionEquality().hash(
//               _g_empty,
//             ),
//           ],
//         );
//       case FailureTag.badRequest:
//         return Object.hashAll(
//           [
//             runtimeType,
//             const DeepCollectionEquality().hash(
//               _a_badRequest,
//             ),
//             const DeepCollectionEquality().hash(
//               _g_badRequest,
//             ),
//           ],
//         );
//       case FailureTag.other:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//       case FailureTag.timeout:
//         return Object.hashAll(
//           [
//             runtimeType,
//           ],
//         );
//       case FailureTag.connectionError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _message_connectionError,
//           ],
//         );
//     }
//   }

//   @override
//   String toString() {
//     switch (_tag) {
//       case FailureTag.unprocessableEntity:
//         return 'Failure.unprocessableEntity(a: $_a_unprocessableEntity, g: $_g_unprocessableEntity)';
//       case FailureTag.empty:
//         return 'Failure.empty(a: $_a_empty, g: $_g_empty)';
//       case FailureTag.badRequest:
//         return 'Failure.badRequest(a: $_a_badRequest, g: $_g_badRequest)';
//       case FailureTag.other:
//         return 'Failure.other()';
//       case FailureTag.timeout:
//         return 'Failure.timeout()';
//       case FailureTag.connectionError:
//         return 'Failure.connectionError(message: $_message_connectionError)';
//     }
//   }

//   final FailureTag _tag;
//   final TestRun? _a_unprocessableEntity;
//   final TestRun? _g_unprocessableEntity;
//   final List<String>? _a_empty;
//   final List<String>? _g_empty;
//   final List<String>? _a_badRequest;
//   final List<String>? _g_badRequest;
//   final String? _message_connectionError;
// }

// @immutable
// class _FailureUnprocessableEntity extends Failure {
//   const _FailureUnprocessableEntity(
//     this.a,
//     this.g,
//   ) : super.unprocessableEntity(
//           a,
//           g,
//         );
//   final TestRun a;
//   final TestRun g;

//   _FailureUnprocessableEntity copyWith({
//     TestRun? a,
//     TestRun? g,
//   }) {
//     return _FailureUnprocessableEntity(
//       a ?? this.a,
//       g ?? this.g,
//     );
//   }
// }

// @immutable
// class _FailureEmpty extends Failure {
//   const _FailureEmpty(
//     this.a,
//     this.g,
//   ) : super.empty(
//           a,
//           g,
//         );
//   final List<String> a;
//   final List<String> g;

//   _FailureEmpty copyWith({
//     List<String>? a,
//     List<String>? g,
//   }) {
//     return _FailureEmpty(
//       a ?? this.a,
//       g ?? this.g,
//     );
//   }
// }

// @immutable
// class _FailureBadRequest extends Failure {
//   const _FailureBadRequest(
//     this.a,
//     this.g,
//   ) : super.badRequest(
//           a: a,
//           g: g,
//         );
//   final List<String>? a;
//   final List<String> g;

//   _FailureBadRequest copyWith({
//     List<String>? a,
//     List<String>? g,
//   }) {
//     return _FailureBadRequest(
//       a ?? this.a,
//       g ?? this.g,
//     );
//   }
// }

// @immutable
// class _FailureOther extends Failure {
//   const _FailureOther() : super.other();
// }

// @immutable
// class _FailureTimeout extends Failure {
//   const _FailureTimeout() : super.timeout();
// }

// @immutable
// class _FailureConnectionError extends Failure {
//   const _FailureConnectionError(
//     this.message,
//   ) : super.connectionError(
//           message,
//         );
//   final String message;

//   _FailureConnectionError copyWith({
//     String? message,
//   }) {
//     return _FailureConnectionError(
//       message ?? this.message,
//     );
//   }
// }
