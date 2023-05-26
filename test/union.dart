/* // import 'dart:convert';

// import 'package:collection/collection.dart';
// import 'package:meta/meta.dart';

// class _Failure {
//   /// Expected value is null or empty
//   const _Failure.empty(List<String> a, List<String> g);

//   /// Any status other than 200
//   const _Failure.badRequest({List<String>? a, List<String> g = const []});

//   /// Expected value has invalid format
//   const _Failure.unprocessableEntity();

//   /// Get the error message for specified failure
//   const _Failure.other();

//   /// Timeout error
//   const _Failure.timeout();

//   /// Network connection failure
//   const _Failure.connectionError(String message);

//   /// Authentication failure
//   const _Failure.authenticationError({
//     required String username,
//     required String password,
//   });

//   /// Database error
//   const _Failure.databaseError({required int errorCode, String? errorMessage});

//   /// File not found error
//   const _Failure.fileNotFoundError(String filePath);

//   /// Permission denied error
//   const _Failure.permissionDeniedError({
//     required String resourceName,
//     required List<String> permissions,
//   });

//   /// Invalid input error
//   const _Failure.invalidInputError(
//     String input,
//     String param2,
//     int param3,
//     bool param4,
//     double param5,
//     List<int> param6,
//     String? param7,
//     Map<String, dynamic> param8,
//     DateTime param9,
//     String param10,
//   );

//   /// Out of memory error
//   const _Failure.outOfMemoryError(
//     int param1,
//     double param2,
//     String param3,
//     bool param4,
//     List<String> param5,
//     Map<String, dynamic> param6,
//     DateTime param7,
//     int param8,
//     double param9,
//     String param10,
//   );

//   /// Invalid configuration error
//   const _Failure.invalidConfigurationError(
//     String config,
//     int param2,
//     double param3,
//     List<int> param4,
//     bool param5,
//     String? param6,
//     Map<String, dynamic> param7,
//     DateTime param8,
//     String param9,
//     int param10,
//   );

//   /// Invalid operation error
//   const _Failure.invalidOperationError(
//     String operation,
//     bool param2,
//     double param3,
//     String param4,
//     int param5,
//     List<String> param6,
//     DateTime param7,
//     String param8,
//     Map<String, dynamic> param9,
//     int param10,
//   );

//   /// Overflow error
//   const _Failure.overflowError(
//     double param1,
//     int param2,
//     String param3,
//     bool param4,
//     List<int> param5,
//     Map<String, dynamic> param6,
//     DateTime param7,
//     String param8,
//     double param9,
//     int param10,
//   );

//   /// Division by zero error
//   const _Failure.divisionByZeroError(
//     String param1,
//     List<String> param2,
//     int param3,
//     double param4,
//     String param5,
//     DateTime param6,
//     Map<String, dynamic> param7,
//     bool param8,
//     double param9,
//     int param10,
//   );

//   /// Parsing error
//   const _Failure.parsingError(
//     String input,
//     int param2,
//     double param3,
//     String param4,
//     bool param5,
//     List<String> param6,
//     DateTime param7,
//     String param8,
//     Map<String, dynamic> param9,
//     int param10,
//   );

//   /// Not implemented error
//   const _Failure.notImplementedError(
//     int param1,
//     double param2,
//     String param3,
//     bool param4,
//     List<int> param5,
//     Map<String, dynamic> param6,
//     DateTime param7,
//     String param8,
//     int param9,
//     double param10,
//   );

//   /// Unknown error
//   const _Failure.unknownError(
//     String param1,
//     int param2,
//     double param3,
//     bool param4,
//     String param5,
//     DateTime param6,
//     Map<String, dynamic> param7,
//     List<String> param8,
//     int param9,
//     double param10,
//   );
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
//   empty,
//   badRequest,
//   unprocessableEntity,
//   other,
//   timeout,
//   connectionError,
//   authenticationError,
//   databaseError,
//   fileNotFoundError,
//   permissionDeniedError,
//   invalidInputError,
//   outOfMemoryError,
//   invalidConfigurationError,
//   invalidOperationError,
//   overflowError,
//   divisionByZeroError,
//   parsingError,
//   notImplementedError,
//   unknownError,
// }

// @immutable
// class Failure {
//   const Failure.empty(List<String> a, List<String> g)
//       : _tag = FailureTag.empty,
//         _a_empty = a,
//         _g_empty = g,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.badRequest({List<String>? a, List<String> g = const []})
//       : _tag = FailureTag.badRequest,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = a,
//         _g_badRequest = g,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.unprocessableEntity()
//       : _tag = FailureTag.unprocessableEntity,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.other()
//       : _tag = FailureTag.other,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.timeout()
//       : _tag = FailureTag.timeout,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.connectionError(String message)
//       : _tag = FailureTag.connectionError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = message,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.authenticationError({
//     required String username,
//     required String password,
//   })  : _tag = FailureTag.authenticationError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = username,
//         _password_authenticationError = password,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.databaseError({required int errorCode, String? errorMessage})
//       : _tag = FailureTag.databaseError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = errorCode,
//         _errorMessage_databaseError = errorMessage,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.fileNotFoundError(String filePath)
//       : _tag = FailureTag.fileNotFoundError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = filePath,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.permissionDeniedError({
//     required String resourceName,
//     required List<String> permissions,
//   })  : _tag = FailureTag.permissionDeniedError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = resourceName,
//         _permissions_permissionDeniedError = permissions,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.invalidInputError(
//     String input,
//     String param2,
//     int param3,
//     bool param4,
//     double param5,
//     List<int> param6,
//     String? param7,
//     Map<String, dynamic> param8,
//     DateTime param9,
//     String param10,
//   )   : _tag = FailureTag.invalidInputError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = input,
//         _param2_invalidInputError = param2,
//         _param3_invalidInputError = param3,
//         _param4_invalidInputError = param4,
//         _param5_invalidInputError = param5,
//         _param6_invalidInputError = param6,
//         _param7_invalidInputError = param7,
//         _param8_invalidInputError = param8,
//         _param9_invalidInputError = param9,
//         _param10_invalidInputError = param10,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.outOfMemoryError(
//     int param1,
//     double param2,
//     String param3,
//     bool param4,
//     List<String> param5,
//     Map<String, dynamic> param6,
//     DateTime param7,
//     int param8,
//     double param9,
//     String param10,
//   )   : _tag = FailureTag.outOfMemoryError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = param1,
//         _param2_outOfMemoryError = param2,
//         _param3_outOfMemoryError = param3,
//         _param4_outOfMemoryError = param4,
//         _param5_outOfMemoryError = param5,
//         _param6_outOfMemoryError = param6,
//         _param7_outOfMemoryError = param7,
//         _param8_outOfMemoryError = param8,
//         _param9_outOfMemoryError = param9,
//         _param10_outOfMemoryError = param10,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.invalidConfigurationError(
//     String config,
//     int param2,
//     double param3,
//     List<int> param4,
//     bool param5,
//     String? param6,
//     Map<String, dynamic> param7,
//     DateTime param8,
//     String param9,
//     int param10,
//   )   : _tag = FailureTag.invalidConfigurationError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = config,
//         _param2_invalidConfigurationError = param2,
//         _param3_invalidConfigurationError = param3,
//         _param4_invalidConfigurationError = param4,
//         _param5_invalidConfigurationError = param5,
//         _param6_invalidConfigurationError = param6,
//         _param7_invalidConfigurationError = param7,
//         _param8_invalidConfigurationError = param8,
//         _param9_invalidConfigurationError = param9,
//         _param10_invalidConfigurationError = param10,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.invalidOperationError(
//     String operation,
//     bool param2,
//     double param3,
//     String param4,
//     int param5,
//     List<String> param6,
//     DateTime param7,
//     String param8,
//     Map<String, dynamic> param9,
//     int param10,
//   )   : _tag = FailureTag.invalidOperationError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = operation,
//         _param2_invalidOperationError = param2,
//         _param3_invalidOperationError = param3,
//         _param4_invalidOperationError = param4,
//         _param5_invalidOperationError = param5,
//         _param6_invalidOperationError = param6,
//         _param7_invalidOperationError = param7,
//         _param8_invalidOperationError = param8,
//         _param9_invalidOperationError = param9,
//         _param10_invalidOperationError = param10,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.overflowError(
//     double param1,
//     int param2,
//     String param3,
//     bool param4,
//     List<int> param5,
//     Map<String, dynamic> param6,
//     DateTime param7,
//     String param8,
//     double param9,
//     int param10,
//   )   : _tag = FailureTag.overflowError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = param1,
//         _param2_overflowError = param2,
//         _param3_overflowError = param3,
//         _param4_overflowError = param4,
//         _param5_overflowError = param5,
//         _param6_overflowError = param6,
//         _param7_overflowError = param7,
//         _param8_overflowError = param8,
//         _param9_overflowError = param9,
//         _param10_overflowError = param10,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.divisionByZeroError(
//     String param1,
//     List<String> param2,
//     int param3,
//     double param4,
//     String param5,
//     DateTime param6,
//     Map<String, dynamic> param7,
//     bool param8,
//     double param9,
//     int param10,
//   )   : _tag = FailureTag.divisionByZeroError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = param1,
//         _param2_divisionByZeroError = param2,
//         _param3_divisionByZeroError = param3,
//         _param4_divisionByZeroError = param4,
//         _param5_divisionByZeroError = param5,
//         _param6_divisionByZeroError = param6,
//         _param7_divisionByZeroError = param7,
//         _param8_divisionByZeroError = param8,
//         _param9_divisionByZeroError = param9,
//         _param10_divisionByZeroError = param10,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.parsingError(
//     String input,
//     int param2,
//     double param3,
//     String param4,
//     bool param5,
//     List<String> param6,
//     DateTime param7,
//     String param8,
//     Map<String, dynamic> param9,
//     int param10,
//   )   : _tag = FailureTag.parsingError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = input,
//         _param2_parsingError = param2,
//         _param3_parsingError = param3,
//         _param4_parsingError = param4,
//         _param5_parsingError = param5,
//         _param6_parsingError = param6,
//         _param7_parsingError = param7,
//         _param8_parsingError = param8,
//         _param9_parsingError = param9,
//         _param10_parsingError = param10,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.notImplementedError(
//     int param1,
//     double param2,
//     String param3,
//     bool param4,
//     List<int> param5,
//     Map<String, dynamic> param6,
//     DateTime param7,
//     String param8,
//     int param9,
//     double param10,
//   )   : _tag = FailureTag.notImplementedError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = param1,
//         _param2_notImplementedError = param2,
//         _param3_notImplementedError = param3,
//         _param4_notImplementedError = param4,
//         _param5_notImplementedError = param5,
//         _param6_notImplementedError = param6,
//         _param7_notImplementedError = param7,
//         _param8_notImplementedError = param8,
//         _param9_notImplementedError = param9,
//         _param10_notImplementedError = param10,
//         _param1_unknownError = null,
//         _param2_unknownError = null,
//         _param3_unknownError = null,
//         _param4_unknownError = null,
//         _param5_unknownError = null,
//         _param6_unknownError = null,
//         _param7_unknownError = null,
//         _param8_unknownError = null,
//         _param9_unknownError = null,
//         _param10_unknownError = null;

//   const Failure.unknownError(
//     String param1,
//     int param2,
//     double param3,
//     bool param4,
//     String param5,
//     DateTime param6,
//     Map<String, dynamic> param7,
//     List<String> param8,
//     int param9,
//     double param10,
//   )   : _tag = FailureTag.unknownError,
//         _a_empty = null,
//         _g_empty = null,
//         _a_badRequest = null,
//         _g_badRequest = null,
//         _message_connectionError = null,
//         _username_authenticationError = null,
//         _password_authenticationError = null,
//         _errorCode_databaseError = null,
//         _errorMessage_databaseError = null,
//         _filePath_fileNotFoundError = null,
//         _resourceName_permissionDeniedError = null,
//         _permissions_permissionDeniedError = null,
//         _input_invalidInputError = null,
//         _param2_invalidInputError = null,
//         _param3_invalidInputError = null,
//         _param4_invalidInputError = null,
//         _param5_invalidInputError = null,
//         _param6_invalidInputError = null,
//         _param7_invalidInputError = null,
//         _param8_invalidInputError = null,
//         _param9_invalidInputError = null,
//         _param10_invalidInputError = null,
//         _param1_outOfMemoryError = null,
//         _param2_outOfMemoryError = null,
//         _param3_outOfMemoryError = null,
//         _param4_outOfMemoryError = null,
//         _param5_outOfMemoryError = null,
//         _param6_outOfMemoryError = null,
//         _param7_outOfMemoryError = null,
//         _param8_outOfMemoryError = null,
//         _param9_outOfMemoryError = null,
//         _param10_outOfMemoryError = null,
//         _config_invalidConfigurationError = null,
//         _param2_invalidConfigurationError = null,
//         _param3_invalidConfigurationError = null,
//         _param4_invalidConfigurationError = null,
//         _param5_invalidConfigurationError = null,
//         _param6_invalidConfigurationError = null,
//         _param7_invalidConfigurationError = null,
//         _param8_invalidConfigurationError = null,
//         _param9_invalidConfigurationError = null,
//         _param10_invalidConfigurationError = null,
//         _operation_invalidOperationError = null,
//         _param2_invalidOperationError = null,
//         _param3_invalidOperationError = null,
//         _param4_invalidOperationError = null,
//         _param5_invalidOperationError = null,
//         _param6_invalidOperationError = null,
//         _param7_invalidOperationError = null,
//         _param8_invalidOperationError = null,
//         _param9_invalidOperationError = null,
//         _param10_invalidOperationError = null,
//         _param1_overflowError = null,
//         _param2_overflowError = null,
//         _param3_overflowError = null,
//         _param4_overflowError = null,
//         _param5_overflowError = null,
//         _param6_overflowError = null,
//         _param7_overflowError = null,
//         _param8_overflowError = null,
//         _param9_overflowError = null,
//         _param10_overflowError = null,
//         _param1_divisionByZeroError = null,
//         _param2_divisionByZeroError = null,
//         _param3_divisionByZeroError = null,
//         _param4_divisionByZeroError = null,
//         _param5_divisionByZeroError = null,
//         _param6_divisionByZeroError = null,
//         _param7_divisionByZeroError = null,
//         _param8_divisionByZeroError = null,
//         _param9_divisionByZeroError = null,
//         _param10_divisionByZeroError = null,
//         _input_parsingError = null,
//         _param2_parsingError = null,
//         _param3_parsingError = null,
//         _param4_parsingError = null,
//         _param5_parsingError = null,
//         _param6_parsingError = null,
//         _param7_parsingError = null,
//         _param8_parsingError = null,
//         _param9_parsingError = null,
//         _param10_parsingError = null,
//         _param1_notImplementedError = null,
//         _param2_notImplementedError = null,
//         _param3_notImplementedError = null,
//         _param4_notImplementedError = null,
//         _param5_notImplementedError = null,
//         _param6_notImplementedError = null,
//         _param7_notImplementedError = null,
//         _param8_notImplementedError = null,
//         _param9_notImplementedError = null,
//         _param10_notImplementedError = null,
//         _param1_unknownError = param1,
//         _param2_unknownError = param2,
//         _param3_unknownError = param3,
//         _param4_unknownError = param4,
//         _param5_unknownError = param5,
//         _param6_unknownError = param6,
//         _param7_unknownError = param7,
//         _param8_unknownError = param8,
//         _param9_unknownError = param9,
//         _param10_unknownError = param10;

//   bool get isEmpty => _tag == FailureTag.empty;
//   bool get isBadRequest => _tag == FailureTag.badRequest;
//   bool get isUnprocessableEntity => _tag == FailureTag.unprocessableEntity;
//   bool get isOther => _tag == FailureTag.other;
//   bool get isTimeout => _tag == FailureTag.timeout;
//   bool get isConnectionError => _tag == FailureTag.connectionError;
//   bool get isAuthenticationError => _tag == FailureTag.authenticationError;
//   bool get isDatabaseError => _tag == FailureTag.databaseError;
//   bool get isFileNotFoundError => _tag == FailureTag.fileNotFoundError;
//   bool get isPermissionDeniedError => _tag == FailureTag.permissionDeniedError;
//   bool get isInvalidInputError => _tag == FailureTag.invalidInputError;
//   bool get isOutOfMemoryError => _tag == FailureTag.outOfMemoryError;
//   bool get isInvalidConfigurationError =>
//       _tag == FailureTag.invalidConfigurationError;
//   bool get isInvalidOperationError => _tag == FailureTag.invalidOperationError;
//   bool get isOverflowError => _tag == FailureTag.overflowError;
//   bool get isDivisionByZeroError => _tag == FailureTag.divisionByZeroError;
//   bool get isParsingError => _tag == FailureTag.parsingError;
//   bool get isNotImplementedError => _tag == FailureTag.notImplementedError;
//   bool get isUnknownError => _tag == FailureTag.unknownError;

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
//           'a': _a_empty,
//           'g': _g_empty,
//         };
//       case FailureTag.badRequest:
//         return {
//           'tag': 'badRequest',
//           'a': _a_badRequest,
//           'g': _g_badRequest,
//         };
//       case FailureTag.unprocessableEntity:
//         return {
//           'tag': 'unprocessableEntity',
//         };
//       case FailureTag.other:
//         return {
//           'tag': 'other',
//         };
//       case FailureTag.timeout:
//         return {
//           'tag': 'timeout',
//         };
//       case FailureTag.connectionError:
//         return {
//           'tag': 'connectionError',
//           'message': _message_connectionError,
//         };
//       case FailureTag.authenticationError:
//         return {
//           'tag': 'authenticationError',
//           'username': _username_authenticationError,
//           'password': _password_authenticationError,
//         };
//       case FailureTag.databaseError:
//         return {
//           'tag': 'databaseError',
//           'errorCode': _errorCode_databaseError,
//           'errorMessage': _errorMessage_databaseError,
//         };
//       case FailureTag.fileNotFoundError:
//         return {
//           'tag': 'fileNotFoundError',
//           'filePath': _filePath_fileNotFoundError,
//         };
//       case FailureTag.permissionDeniedError:
//         return {
//           'tag': 'permissionDeniedError',
//           'resourceName': _resourceName_permissionDeniedError,
//           'permissions': _permissions_permissionDeniedError,
//         };
//       case FailureTag.invalidInputError:
//         return {
//           'tag': 'invalidInputError',
//           'input': _input_invalidInputError,
//           'param2': _param2_invalidInputError,
//           'param3': _param3_invalidInputError,
//           'param4': _param4_invalidInputError,
//           'param5': _param5_invalidInputError,
//           'param6': _param6_invalidInputError,
//           'param7': _param7_invalidInputError,
//           'param8': _param8_invalidInputError?.map(MapEntry.new),
//           'param9': _param9_invalidInputError?.toIso8601String(),
//           'param10': _param10_invalidInputError,
//         };
//       case FailureTag.outOfMemoryError:
//         return {
//           'tag': 'outOfMemoryError',
//           'param1': _param1_outOfMemoryError,
//           'param2': _param2_outOfMemoryError,
//           'param3': _param3_outOfMemoryError,
//           'param4': _param4_outOfMemoryError,
//           'param5': _param5_outOfMemoryError,
//           'param6': _param6_outOfMemoryError?.map(MapEntry.new),
//           'param7': _param7_outOfMemoryError?.toIso8601String(),
//           'param8': _param8_outOfMemoryError,
//           'param9': _param9_outOfMemoryError,
//           'param10': _param10_outOfMemoryError,
//         };
//       case FailureTag.invalidConfigurationError:
//         return {
//           'tag': 'invalidConfigurationError',
//           'config': _config_invalidConfigurationError,
//           'param2': _param2_invalidConfigurationError,
//           'param3': _param3_invalidConfigurationError,
//           'param4': _param4_invalidConfigurationError,
//           'param5': _param5_invalidConfigurationError,
//           'param6': _param6_invalidConfigurationError,
//           'param7': _param7_invalidConfigurationError?.map(MapEntry.new),
//           'param8': _param8_invalidConfigurationError?.toIso8601String(),
//           'param9': _param9_invalidConfigurationError,
//           'param10': _param10_invalidConfigurationError,
//         };
//       case FailureTag.invalidOperationError:
//         return {
//           'tag': 'invalidOperationError',
//           'operation': _operation_invalidOperationError,
//           'param2': _param2_invalidOperationError,
//           'param3': _param3_invalidOperationError,
//           'param4': _param4_invalidOperationError,
//           'param5': _param5_invalidOperationError,
//           'param6': _param6_invalidOperationError,
//           'param7': _param7_invalidOperationError?.toIso8601String(),
//           'param8': _param8_invalidOperationError,
//           'param9': _param9_invalidOperationError?.map(MapEntry.new),
//           'param10': _param10_invalidOperationError,
//         };
//       case FailureTag.overflowError:
//         return {
//           'tag': 'overflowError',
//           'param1': _param1_overflowError,
//           'param2': _param2_overflowError,
//           'param3': _param3_overflowError,
//           'param4': _param4_overflowError,
//           'param5': _param5_overflowError,
//           'param6': _param6_overflowError?.map(MapEntry.new),
//           'param7': _param7_overflowError?.toIso8601String(),
//           'param8': _param8_overflowError,
//           'param9': _param9_overflowError,
//           'param10': _param10_overflowError,
//         };
//       case FailureTag.divisionByZeroError:
//         return {
//           'tag': 'divisionByZeroError',
//           'param1': _param1_divisionByZeroError,
//           'param2': _param2_divisionByZeroError,
//           'param3': _param3_divisionByZeroError,
//           'param4': _param4_divisionByZeroError,
//           'param5': _param5_divisionByZeroError,
//           'param6': _param6_divisionByZeroError?.toIso8601String(),
//           'param7': _param7_divisionByZeroError?.map(MapEntry.new),
//           'param8': _param8_divisionByZeroError,
//           'param9': _param9_divisionByZeroError,
//           'param10': _param10_divisionByZeroError,
//         };
//       case FailureTag.parsingError:
//         return {
//           'tag': 'parsingError',
//           'input': _input_parsingError,
//           'param2': _param2_parsingError,
//           'param3': _param3_parsingError,
//           'param4': _param4_parsingError,
//           'param5': _param5_parsingError,
//           'param6': _param6_parsingError,
//           'param7': _param7_parsingError?.toIso8601String(),
//           'param8': _param8_parsingError,
//           'param9': _param9_parsingError?.map(MapEntry.new),
//           'param10': _param10_parsingError,
//         };
//       case FailureTag.notImplementedError:
//         return {
//           'tag': 'notImplementedError',
//           'param1': _param1_notImplementedError,
//           'param2': _param2_notImplementedError,
//           'param3': _param3_notImplementedError,
//           'param4': _param4_notImplementedError,
//           'param5': _param5_notImplementedError,
//           'param6': _param6_notImplementedError?.map(MapEntry.new),
//           'param7': _param7_notImplementedError?.toIso8601String(),
//           'param8': _param8_notImplementedError,
//           'param9': _param9_notImplementedError,
//           'param10': _param10_notImplementedError,
//         };
//       case FailureTag.unknownError:
//         return {
//           'tag': 'unknownError',
//           'param1': _param1_unknownError,
//           'param2': _param2_unknownError,
//           'param3': _param3_unknownError,
//           'param4': _param4_unknownError,
//           'param5': _param5_unknownError,
//           'param6': _param6_unknownError?.toIso8601String(),
//           'param7': _param7_unknownError?.map(MapEntry.new),
//           'param8': _param8_unknownError,
//           'param9': _param9_unknownError,
//           'param10': _param10_unknownError,
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
//         return Failure.empty(
//           map['a'] != null
//               ? (map['a'] as List<dynamic>).map((e) => e as String).toList()
//               : throw Exception(
//                   "map['a']_type_'Null'",
//                 ),
//           map['g'] != null
//               ? (map['g'] as List<dynamic>).map((e) => e as String).toList()
//               : throw Exception(
//                   "map['g']_type_'Null'",
//                 ),
//         );
//       case FailureTag.badRequest:
//         return Failure.badRequest(
//           a: (map['a'] as List<dynamic>?)?.map((e) => e as String).toList(),
//           g: (map['g'] as List<dynamic>?)?.map((e) => e as String).toList() ??
//               const [],
//         );
//       case FailureTag.unprocessableEntity:
//         return const Failure.unprocessableEntity();
//       case FailureTag.other:
//         return const Failure.other();
//       case FailureTag.timeout:
//         return const Failure.timeout();
//       case FailureTag.connectionError:
//         return Failure.connectionError(
//           map['message'] != null
//               ? map['message'] as String
//               : throw Exception(
//                   "map['message']_type_'Null'",
//                 ),
//         );
//       case FailureTag.authenticationError:
//         return Failure.authenticationError(
//           username: map['username'] != null
//               ? map['username'] as String
//               : throw Exception(
//                   "map['username']_type_'Null'",
//                 ),
//           password: map['password'] != null
//               ? map['password'] as String
//               : throw Exception(
//                   "map['password']_type_'Null'",
//                 ),
//         );
//       case FailureTag.databaseError:
//         return Failure.databaseError(
//           errorCode: map['errorCode'] != null
//               ? (map['errorCode'] as num).toInt()
//               : throw Exception(
//                   "map['errorCode']_type_'Null'",
//                 ),
//           errorMessage: map['errorMessage'] as String?,
//         );
//       case FailureTag.fileNotFoundError:
//         return Failure.fileNotFoundError(
//           map['filePath'] != null
//               ? map['filePath'] as String
//               : throw Exception(
//                   "map['filePath']_type_'Null'",
//                 ),
//         );
//       case FailureTag.permissionDeniedError:
//         return Failure.permissionDeniedError(
//           resourceName: map['resourceName'] != null
//               ? map['resourceName'] as String
//               : throw Exception(
//                   "map['resourceName']_type_'Null'",
//                 ),
//           permissions: map['permissions'] != null
//               ? (map['permissions'] as List<dynamic>)
//                   .map((e) => e as String)
//                   .toList()
//               : throw Exception(
//                   "map['permissions']_type_'Null'",
//                 ),
//         );
//       case FailureTag.invalidInputError:
//         return Failure.invalidInputError(
//           map['input'] != null
//               ? map['input'] as String
//               : throw Exception(
//                   "map['input']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? map['param2'] as String
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? (map['param3'] as num).toInt()
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? map['param4'] as bool
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? (map['param5'] as num).toDouble()
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] != null
//               ? (map['param6'] as List<dynamic>).map((e) => e as int).toList()
//               : throw Exception(
//                   "map['param6']_type_'Null'",
//                 ),
//           map['param7'] as String?,
//           map['param8'] != null
//               ? map['param8'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? DateTime.parse(map['param9'] as String)
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? map['param10'] as String
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//       case FailureTag.outOfMemoryError:
//         return Failure.outOfMemoryError(
//           map['param1'] != null
//               ? (map['param1'] as num).toInt()
//               : throw Exception(
//                   "map['param1']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? (map['param2'] as num).toDouble()
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? map['param3'] as String
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? map['param4'] as bool
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? (map['param5'] as List<dynamic>)
//                   .map((e) => e as String)
//                   .toList()
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] != null
//               ? map['param6'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param6']_type_'Null'",
//                 ),
//           map['param7'] != null
//               ? DateTime.parse(map['param7'] as String)
//               : throw Exception(
//                   "map['param7']_type_'Null'",
//                 ),
//           map['param8'] != null
//               ? (map['param8'] as num).toInt()
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? (map['param9'] as num).toDouble()
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? map['param10'] as String
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//       case FailureTag.invalidConfigurationError:
//         return Failure.invalidConfigurationError(
//           map['config'] != null
//               ? map['config'] as String
//               : throw Exception(
//                   "map['config']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? (map['param2'] as num).toInt()
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? (map['param3'] as num).toDouble()
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? (map['param4'] as List<dynamic>).map((e) => e as int).toList()
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? map['param5'] as bool
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] as String?,
//           map['param7'] != null
//               ? map['param7'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param7']_type_'Null'",
//                 ),
//           map['param8'] != null
//               ? DateTime.parse(map['param8'] as String)
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? map['param9'] as String
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? (map['param10'] as num).toInt()
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//       case FailureTag.invalidOperationError:
//         return Failure.invalidOperationError(
//           map['operation'] != null
//               ? map['operation'] as String
//               : throw Exception(
//                   "map['operation']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? map['param2'] as bool
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? (map['param3'] as num).toDouble()
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? map['param4'] as String
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? (map['param5'] as num).toInt()
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] != null
//               ? (map['param6'] as List<dynamic>)
//                   .map((e) => e as String)
//                   .toList()
//               : throw Exception(
//                   "map['param6']_type_'Null'",
//                 ),
//           map['param7'] != null
//               ? DateTime.parse(map['param7'] as String)
//               : throw Exception(
//                   "map['param7']_type_'Null'",
//                 ),
//           map['param8'] != null
//               ? map['param8'] as String
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? map['param9'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? (map['param10'] as num).toInt()
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//       case FailureTag.overflowError:
//         return Failure.overflowError(
//           map['param1'] != null
//               ? (map['param1'] as num).toDouble()
//               : throw Exception(
//                   "map['param1']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? (map['param2'] as num).toInt()
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? map['param3'] as String
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? map['param4'] as bool
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? (map['param5'] as List<dynamic>).map((e) => e as int).toList()
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] != null
//               ? map['param6'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param6']_type_'Null'",
//                 ),
//           map['param7'] != null
//               ? DateTime.parse(map['param7'] as String)
//               : throw Exception(
//                   "map['param7']_type_'Null'",
//                 ),
//           map['param8'] != null
//               ? map['param8'] as String
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? (map['param9'] as num).toDouble()
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? (map['param10'] as num).toInt()
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//       case FailureTag.divisionByZeroError:
//         return Failure.divisionByZeroError(
//           map['param1'] != null
//               ? map['param1'] as String
//               : throw Exception(
//                   "map['param1']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? (map['param2'] as List<dynamic>)
//                   .map((e) => e as String)
//                   .toList()
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? (map['param3'] as num).toInt()
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? (map['param4'] as num).toDouble()
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? map['param5'] as String
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] != null
//               ? DateTime.parse(map['param6'] as String)
//               : throw Exception(
//                   "map['param6']_type_'Null'",
//                 ),
//           map['param7'] != null
//               ? map['param7'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param7']_type_'Null'",
//                 ),
//           map['param8'] != null
//               ? map['param8'] as bool
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? (map['param9'] as num).toDouble()
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? (map['param10'] as num).toInt()
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//       case FailureTag.parsingError:
//         return Failure.parsingError(
//           map['input'] != null
//               ? map['input'] as String
//               : throw Exception(
//                   "map['input']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? (map['param2'] as num).toInt()
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? (map['param3'] as num).toDouble()
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? map['param4'] as String
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? map['param5'] as bool
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] != null
//               ? (map['param6'] as List<dynamic>)
//                   .map((e) => e as String)
//                   .toList()
//               : throw Exception(
//                   "map['param6']_type_'Null'",
//                 ),
//           map['param7'] != null
//               ? DateTime.parse(map['param7'] as String)
//               : throw Exception(
//                   "map['param7']_type_'Null'",
//                 ),
//           map['param8'] != null
//               ? map['param8'] as String
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? map['param9'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? (map['param10'] as num).toInt()
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//       case FailureTag.notImplementedError:
//         return Failure.notImplementedError(
//           map['param1'] != null
//               ? (map['param1'] as num).toInt()
//               : throw Exception(
//                   "map['param1']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? (map['param2'] as num).toDouble()
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? map['param3'] as String
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? map['param4'] as bool
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? (map['param5'] as List<dynamic>).map((e) => e as int).toList()
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] != null
//               ? map['param6'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param6']_type_'Null'",
//                 ),
//           map['param7'] != null
//               ? DateTime.parse(map['param7'] as String)
//               : throw Exception(
//                   "map['param7']_type_'Null'",
//                 ),
//           map['param8'] != null
//               ? map['param8'] as String
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? (map['param9'] as num).toInt()
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? (map['param10'] as num).toDouble()
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//       case FailureTag.unknownError:
//         return Failure.unknownError(
//           map['param1'] != null
//               ? map['param1'] as String
//               : throw Exception(
//                   "map['param1']_type_'Null'",
//                 ),
//           map['param2'] != null
//               ? (map['param2'] as num).toInt()
//               : throw Exception(
//                   "map['param2']_type_'Null'",
//                 ),
//           map['param3'] != null
//               ? (map['param3'] as num).toDouble()
//               : throw Exception(
//                   "map['param3']_type_'Null'",
//                 ),
//           map['param4'] != null
//               ? map['param4'] as bool
//               : throw Exception(
//                   "map['param4']_type_'Null'",
//                 ),
//           map['param5'] != null
//               ? map['param5'] as String
//               : throw Exception(
//                   "map['param5']_type_'Null'",
//                 ),
//           map['param6'] != null
//               ? DateTime.parse(map['param6'] as String)
//               : throw Exception(
//                   "map['param6']_type_'Null'",
//                 ),
//           map['param7'] != null
//               ? map['param7'] as Map<String, dynamic>
//               : throw Exception(
//                   "map['param7']_type_'Null'",
//                 ),
//           map['param8'] != null
//               ? (map['param8'] as List<dynamic>)
//                   .map((e) => e as String)
//                   .toList()
//               : throw Exception(
//                   "map['param8']_type_'Null'",
//                 ),
//           map['param9'] != null
//               ? (map['param9'] as num).toInt()
//               : throw Exception(
//                   "map['param9']_type_'Null'",
//                 ),
//           map['param10'] != null
//               ? (map['param10'] as num).toDouble()
//               : throw Exception(
//                   "map['param10']_type_'Null'",
//                 ),
//         );
//     }
//   }

//   T map<T>({
//     required T Function(_FailureEmpty v) empty,
//     required T Function(_FailureBadRequest v) badRequest,
//     required T Function(_FailureUnprocessableEntity v) unprocessableEntity,
//     required T Function(_FailureOther v) other,
//     required T Function(_FailureTimeout v) timeout,
//     required T Function(_FailureConnectionError v) connectionError,
//     required T Function(_FailureAuthenticationError v) authenticationError,
//     required T Function(_FailureDatabaseError v) databaseError,
//     required T Function(_FailureFileNotFoundError v) fileNotFoundError,
//     required T Function(_FailurePermissionDeniedError v) permissionDeniedError,
//     required T Function(_FailureInvalidInputError v) invalidInputError,
//     required T Function(_FailureOutOfMemoryError v) outOfMemoryError,
//     required T Function(_FailureInvalidConfigurationError v)
//         invalidConfigurationError,
//     required T Function(_FailureInvalidOperationError v) invalidOperationError,
//     required T Function(_FailureOverflowError v) overflowError,
//     required T Function(_FailureDivisionByZeroError v) divisionByZeroError,
//     required T Function(_FailureParsingError v) parsingError,
//     required T Function(_FailureNotImplementedError v) notImplementedError,
//     required T Function(_FailureUnknownError v) unknownError,
//   }) {
//     switch (_tag) {
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
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity(
//           const _FailureUnprocessableEntity(),
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
//       case FailureTag.authenticationError:
//         return authenticationError(
//           _FailureAuthenticationError(
//             _username_authenticationError!,
//             _password_authenticationError!,
//           ),
//         );
//       case FailureTag.databaseError:
//         return databaseError(
//           _FailureDatabaseError(
//             _errorCode_databaseError!,
//             _errorMessage_databaseError,
//           ),
//         );
//       case FailureTag.fileNotFoundError:
//         return fileNotFoundError(
//           _FailureFileNotFoundError(
//             _filePath_fileNotFoundError!,
//           ),
//         );
//       case FailureTag.permissionDeniedError:
//         return permissionDeniedError(
//           _FailurePermissionDeniedError(
//             _resourceName_permissionDeniedError!,
//             _permissions_permissionDeniedError!,
//           ),
//         );
//       case FailureTag.invalidInputError:
//         return invalidInputError(
//           _FailureInvalidInputError(
//             _input_invalidInputError!,
//             _param2_invalidInputError!,
//             _param3_invalidInputError!,
//             _param4_invalidInputError!,
//             _param5_invalidInputError!,
//             _param6_invalidInputError!,
//             _param7_invalidInputError,
//             _param8_invalidInputError!,
//             _param9_invalidInputError!,
//             _param10_invalidInputError!,
//           ),
//         );
//       case FailureTag.outOfMemoryError:
//         return outOfMemoryError(
//           _FailureOutOfMemoryError(
//             _param1_outOfMemoryError!,
//             _param2_outOfMemoryError!,
//             _param3_outOfMemoryError!,
//             _param4_outOfMemoryError!,
//             _param5_outOfMemoryError!,
//             _param6_outOfMemoryError!,
//             _param7_outOfMemoryError!,
//             _param8_outOfMemoryError!,
//             _param9_outOfMemoryError!,
//             _param10_outOfMemoryError!,
//           ),
//         );
//       case FailureTag.invalidConfigurationError:
//         return invalidConfigurationError(
//           _FailureInvalidConfigurationError(
//             _config_invalidConfigurationError!,
//             _param2_invalidConfigurationError!,
//             _param3_invalidConfigurationError!,
//             _param4_invalidConfigurationError!,
//             _param5_invalidConfigurationError!,
//             _param6_invalidConfigurationError,
//             _param7_invalidConfigurationError!,
//             _param8_invalidConfigurationError!,
//             _param9_invalidConfigurationError!,
//             _param10_invalidConfigurationError!,
//           ),
//         );
//       case FailureTag.invalidOperationError:
//         return invalidOperationError(
//           _FailureInvalidOperationError(
//             _operation_invalidOperationError!,
//             _param2_invalidOperationError!,
//             _param3_invalidOperationError!,
//             _param4_invalidOperationError!,
//             _param5_invalidOperationError!,
//             _param6_invalidOperationError!,
//             _param7_invalidOperationError!,
//             _param8_invalidOperationError!,
//             _param9_invalidOperationError!,
//             _param10_invalidOperationError!,
//           ),
//         );
//       case FailureTag.overflowError:
//         return overflowError(
//           _FailureOverflowError(
//             _param1_overflowError!,
//             _param2_overflowError!,
//             _param3_overflowError!,
//             _param4_overflowError!,
//             _param5_overflowError!,
//             _param6_overflowError!,
//             _param7_overflowError!,
//             _param8_overflowError!,
//             _param9_overflowError!,
//             _param10_overflowError!,
//           ),
//         );
//       case FailureTag.divisionByZeroError:
//         return divisionByZeroError(
//           _FailureDivisionByZeroError(
//             _param1_divisionByZeroError!,
//             _param2_divisionByZeroError!,
//             _param3_divisionByZeroError!,
//             _param4_divisionByZeroError!,
//             _param5_divisionByZeroError!,
//             _param6_divisionByZeroError!,
//             _param7_divisionByZeroError!,
//             _param8_divisionByZeroError!,
//             _param9_divisionByZeroError!,
//             _param10_divisionByZeroError!,
//           ),
//         );
//       case FailureTag.parsingError:
//         return parsingError(
//           _FailureParsingError(
//             _input_parsingError!,
//             _param2_parsingError!,
//             _param3_parsingError!,
//             _param4_parsingError!,
//             _param5_parsingError!,
//             _param6_parsingError!,
//             _param7_parsingError!,
//             _param8_parsingError!,
//             _param9_parsingError!,
//             _param10_parsingError!,
//           ),
//         );
//       case FailureTag.notImplementedError:
//         return notImplementedError(
//           _FailureNotImplementedError(
//             _param1_notImplementedError!,
//             _param2_notImplementedError!,
//             _param3_notImplementedError!,
//             _param4_notImplementedError!,
//             _param5_notImplementedError!,
//             _param6_notImplementedError!,
//             _param7_notImplementedError!,
//             _param8_notImplementedError!,
//             _param9_notImplementedError!,
//             _param10_notImplementedError!,
//           ),
//         );
//       case FailureTag.unknownError:
//         return unknownError(
//           _FailureUnknownError(
//             _param1_unknownError!,
//             _param2_unknownError!,
//             _param3_unknownError!,
//             _param4_unknownError!,
//             _param5_unknownError!,
//             _param6_unknownError!,
//             _param7_unknownError!,
//             _param8_unknownError!,
//             _param9_unknownError!,
//             _param10_unknownError!,
//           ),
//         );
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function(_FailureEmpty v)? empty,
//     T Function(_FailureBadRequest v)? badRequest,
//     T Function(_FailureUnprocessableEntity v)? unprocessableEntity,
//     T Function(_FailureOther v)? other,
//     T Function(_FailureTimeout v)? timeout,
//     T Function(_FailureConnectionError v)? connectionError,
//     T Function(_FailureAuthenticationError v)? authenticationError,
//     T Function(_FailureDatabaseError v)? databaseError,
//     T Function(_FailureFileNotFoundError v)? fileNotFoundError,
//     T Function(_FailurePermissionDeniedError v)? permissionDeniedError,
//     T Function(_FailureInvalidInputError v)? invalidInputError,
//     T Function(_FailureOutOfMemoryError v)? outOfMemoryError,
//     T Function(_FailureInvalidConfigurationError v)? invalidConfigurationError,
//     T Function(_FailureInvalidOperationError v)? invalidOperationError,
//     T Function(_FailureOverflowError v)? overflowError,
//     T Function(_FailureDivisionByZeroError v)? divisionByZeroError,
//     T Function(_FailureParsingError v)? parsingError,
//     T Function(_FailureNotImplementedError v)? notImplementedError,
//     T Function(_FailureUnknownError v)? unknownError,
//   }) {
//     switch (_tag) {
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
//       case FailureTag.authenticationError:
//         if (authenticationError != null) {
//           return authenticationError(
//             _FailureAuthenticationError(
//               _username_authenticationError!,
//               _password_authenticationError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.databaseError:
//         if (databaseError != null) {
//           return databaseError(
//             _FailureDatabaseError(
//               _errorCode_databaseError!,
//               _errorMessage_databaseError,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.fileNotFoundError:
//         if (fileNotFoundError != null) {
//           return fileNotFoundError(
//             _FailureFileNotFoundError(
//               _filePath_fileNotFoundError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.permissionDeniedError:
//         if (permissionDeniedError != null) {
//           return permissionDeniedError(
//             _FailurePermissionDeniedError(
//               _resourceName_permissionDeniedError!,
//               _permissions_permissionDeniedError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.invalidInputError:
//         if (invalidInputError != null) {
//           return invalidInputError(
//             _FailureInvalidInputError(
//               _input_invalidInputError!,
//               _param2_invalidInputError!,
//               _param3_invalidInputError!,
//               _param4_invalidInputError!,
//               _param5_invalidInputError!,
//               _param6_invalidInputError!,
//               _param7_invalidInputError,
//               _param8_invalidInputError!,
//               _param9_invalidInputError!,
//               _param10_invalidInputError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.outOfMemoryError:
//         if (outOfMemoryError != null) {
//           return outOfMemoryError(
//             _FailureOutOfMemoryError(
//               _param1_outOfMemoryError!,
//               _param2_outOfMemoryError!,
//               _param3_outOfMemoryError!,
//               _param4_outOfMemoryError!,
//               _param5_outOfMemoryError!,
//               _param6_outOfMemoryError!,
//               _param7_outOfMemoryError!,
//               _param8_outOfMemoryError!,
//               _param9_outOfMemoryError!,
//               _param10_outOfMemoryError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.invalidConfigurationError:
//         if (invalidConfigurationError != null) {
//           return invalidConfigurationError(
//             _FailureInvalidConfigurationError(
//               _config_invalidConfigurationError!,
//               _param2_invalidConfigurationError!,
//               _param3_invalidConfigurationError!,
//               _param4_invalidConfigurationError!,
//               _param5_invalidConfigurationError!,
//               _param6_invalidConfigurationError,
//               _param7_invalidConfigurationError!,
//               _param8_invalidConfigurationError!,
//               _param9_invalidConfigurationError!,
//               _param10_invalidConfigurationError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.invalidOperationError:
//         if (invalidOperationError != null) {
//           return invalidOperationError(
//             _FailureInvalidOperationError(
//               _operation_invalidOperationError!,
//               _param2_invalidOperationError!,
//               _param3_invalidOperationError!,
//               _param4_invalidOperationError!,
//               _param5_invalidOperationError!,
//               _param6_invalidOperationError!,
//               _param7_invalidOperationError!,
//               _param8_invalidOperationError!,
//               _param9_invalidOperationError!,
//               _param10_invalidOperationError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.overflowError:
//         if (overflowError != null) {
//           return overflowError(
//             _FailureOverflowError(
//               _param1_overflowError!,
//               _param2_overflowError!,
//               _param3_overflowError!,
//               _param4_overflowError!,
//               _param5_overflowError!,
//               _param6_overflowError!,
//               _param7_overflowError!,
//               _param8_overflowError!,
//               _param9_overflowError!,
//               _param10_overflowError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.divisionByZeroError:
//         if (divisionByZeroError != null) {
//           return divisionByZeroError(
//             _FailureDivisionByZeroError(
//               _param1_divisionByZeroError!,
//               _param2_divisionByZeroError!,
//               _param3_divisionByZeroError!,
//               _param4_divisionByZeroError!,
//               _param5_divisionByZeroError!,
//               _param6_divisionByZeroError!,
//               _param7_divisionByZeroError!,
//               _param8_divisionByZeroError!,
//               _param9_divisionByZeroError!,
//               _param10_divisionByZeroError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.parsingError:
//         if (parsingError != null) {
//           return parsingError(
//             _FailureParsingError(
//               _input_parsingError!,
//               _param2_parsingError!,
//               _param3_parsingError!,
//               _param4_parsingError!,
//               _param5_parsingError!,
//               _param6_parsingError!,
//               _param7_parsingError!,
//               _param8_parsingError!,
//               _param9_parsingError!,
//               _param10_parsingError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.notImplementedError:
//         if (notImplementedError != null) {
//           return notImplementedError(
//             _FailureNotImplementedError(
//               _param1_notImplementedError!,
//               _param2_notImplementedError!,
//               _param3_notImplementedError!,
//               _param4_notImplementedError!,
//               _param5_notImplementedError!,
//               _param6_notImplementedError!,
//               _param7_notImplementedError!,
//               _param8_notImplementedError!,
//               _param9_notImplementedError!,
//               _param10_notImplementedError!,
//             ),
//           );
//         }
//         return orElse();
//       case FailureTag.unknownError:
//         if (unknownError != null) {
//           return unknownError(
//             _FailureUnknownError(
//               _param1_unknownError!,
//               _param2_unknownError!,
//               _param3_unknownError!,
//               _param4_unknownError!,
//               _param5_unknownError!,
//               _param6_unknownError!,
//               _param7_unknownError!,
//               _param8_unknownError!,
//               _param9_unknownError!,
//               _param10_unknownError!,
//             ),
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
//     T? Function(_FailureTimeout v)? timeout,
//     T? Function(_FailureConnectionError v)? connectionError,
//     T? Function(_FailureAuthenticationError v)? authenticationError,
//     T? Function(_FailureDatabaseError v)? databaseError,
//     T? Function(_FailureFileNotFoundError v)? fileNotFoundError,
//     T? Function(_FailurePermissionDeniedError v)? permissionDeniedError,
//     T? Function(_FailureInvalidInputError v)? invalidInputError,
//     T? Function(_FailureOutOfMemoryError v)? outOfMemoryError,
//     T? Function(_FailureInvalidConfigurationError v)? invalidConfigurationError,
//     T? Function(_FailureInvalidOperationError v)? invalidOperationError,
//     T? Function(_FailureOverflowError v)? overflowError,
//     T? Function(_FailureDivisionByZeroError v)? divisionByZeroError,
//     T? Function(_FailureParsingError v)? parsingError,
//     T? Function(_FailureNotImplementedError v)? notImplementedError,
//     T? Function(_FailureUnknownError v)? unknownError,
//   }) {
//     switch (_tag) {
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
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity?.call(
//           const _FailureUnprocessableEntity(),
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
//       case FailureTag.authenticationError:
//         return authenticationError?.call(
//           _FailureAuthenticationError(
//             _username_authenticationError!,
//             _password_authenticationError!,
//           ),
//         );
//       case FailureTag.databaseError:
//         return databaseError?.call(
//           _FailureDatabaseError(
//             _errorCode_databaseError!,
//             _errorMessage_databaseError,
//           ),
//         );
//       case FailureTag.fileNotFoundError:
//         return fileNotFoundError?.call(
//           _FailureFileNotFoundError(
//             _filePath_fileNotFoundError!,
//           ),
//         );
//       case FailureTag.permissionDeniedError:
//         return permissionDeniedError?.call(
//           _FailurePermissionDeniedError(
//             _resourceName_permissionDeniedError!,
//             _permissions_permissionDeniedError!,
//           ),
//         );
//       case FailureTag.invalidInputError:
//         return invalidInputError?.call(
//           _FailureInvalidInputError(
//             _input_invalidInputError!,
//             _param2_invalidInputError!,
//             _param3_invalidInputError!,
//             _param4_invalidInputError!,
//             _param5_invalidInputError!,
//             _param6_invalidInputError!,
//             _param7_invalidInputError,
//             _param8_invalidInputError!,
//             _param9_invalidInputError!,
//             _param10_invalidInputError!,
//           ),
//         );
//       case FailureTag.outOfMemoryError:
//         return outOfMemoryError?.call(
//           _FailureOutOfMemoryError(
//             _param1_outOfMemoryError!,
//             _param2_outOfMemoryError!,
//             _param3_outOfMemoryError!,
//             _param4_outOfMemoryError!,
//             _param5_outOfMemoryError!,
//             _param6_outOfMemoryError!,
//             _param7_outOfMemoryError!,
//             _param8_outOfMemoryError!,
//             _param9_outOfMemoryError!,
//             _param10_outOfMemoryError!,
//           ),
//         );
//       case FailureTag.invalidConfigurationError:
//         return invalidConfigurationError?.call(
//           _FailureInvalidConfigurationError(
//             _config_invalidConfigurationError!,
//             _param2_invalidConfigurationError!,
//             _param3_invalidConfigurationError!,
//             _param4_invalidConfigurationError!,
//             _param5_invalidConfigurationError!,
//             _param6_invalidConfigurationError,
//             _param7_invalidConfigurationError!,
//             _param8_invalidConfigurationError!,
//             _param9_invalidConfigurationError!,
//             _param10_invalidConfigurationError!,
//           ),
//         );
//       case FailureTag.invalidOperationError:
//         return invalidOperationError?.call(
//           _FailureInvalidOperationError(
//             _operation_invalidOperationError!,
//             _param2_invalidOperationError!,
//             _param3_invalidOperationError!,
//             _param4_invalidOperationError!,
//             _param5_invalidOperationError!,
//             _param6_invalidOperationError!,
//             _param7_invalidOperationError!,
//             _param8_invalidOperationError!,
//             _param9_invalidOperationError!,
//             _param10_invalidOperationError!,
//           ),
//         );
//       case FailureTag.overflowError:
//         return overflowError?.call(
//           _FailureOverflowError(
//             _param1_overflowError!,
//             _param2_overflowError!,
//             _param3_overflowError!,
//             _param4_overflowError!,
//             _param5_overflowError!,
//             _param6_overflowError!,
//             _param7_overflowError!,
//             _param8_overflowError!,
//             _param9_overflowError!,
//             _param10_overflowError!,
//           ),
//         );
//       case FailureTag.divisionByZeroError:
//         return divisionByZeroError?.call(
//           _FailureDivisionByZeroError(
//             _param1_divisionByZeroError!,
//             _param2_divisionByZeroError!,
//             _param3_divisionByZeroError!,
//             _param4_divisionByZeroError!,
//             _param5_divisionByZeroError!,
//             _param6_divisionByZeroError!,
//             _param7_divisionByZeroError!,
//             _param8_divisionByZeroError!,
//             _param9_divisionByZeroError!,
//             _param10_divisionByZeroError!,
//           ),
//         );
//       case FailureTag.parsingError:
//         return parsingError?.call(
//           _FailureParsingError(
//             _input_parsingError!,
//             _param2_parsingError!,
//             _param3_parsingError!,
//             _param4_parsingError!,
//             _param5_parsingError!,
//             _param6_parsingError!,
//             _param7_parsingError!,
//             _param8_parsingError!,
//             _param9_parsingError!,
//             _param10_parsingError!,
//           ),
//         );
//       case FailureTag.notImplementedError:
//         return notImplementedError?.call(
//           _FailureNotImplementedError(
//             _param1_notImplementedError!,
//             _param2_notImplementedError!,
//             _param3_notImplementedError!,
//             _param4_notImplementedError!,
//             _param5_notImplementedError!,
//             _param6_notImplementedError!,
//             _param7_notImplementedError!,
//             _param8_notImplementedError!,
//             _param9_notImplementedError!,
//             _param10_notImplementedError!,
//           ),
//         );
//       case FailureTag.unknownError:
//         return unknownError?.call(
//           _FailureUnknownError(
//             _param1_unknownError!,
//             _param2_unknownError!,
//             _param3_unknownError!,
//             _param4_unknownError!,
//             _param5_unknownError!,
//             _param6_unknownError!,
//             _param7_unknownError!,
//             _param8_unknownError!,
//             _param9_unknownError!,
//             _param10_unknownError!,
//           ),
//         );
//     }
//   }

//   T? maybeMapOrNull<T>({
//     T? Function(_FailureEmpty v)? empty,
//     T? Function(_FailureBadRequest v)? badRequest,
//     T? Function(_FailureUnprocessableEntity v)? unprocessableEntity,
//     T? Function(_FailureOther v)? other,
//     T? Function(_FailureTimeout v)? timeout,
//     T? Function(_FailureConnectionError v)? connectionError,
//     T? Function(_FailureAuthenticationError v)? authenticationError,
//     T? Function(_FailureDatabaseError v)? databaseError,
//     T? Function(_FailureFileNotFoundError v)? fileNotFoundError,
//     T? Function(_FailurePermissionDeniedError v)? permissionDeniedError,
//     T? Function(_FailureInvalidInputError v)? invalidInputError,
//     T? Function(_FailureOutOfMemoryError v)? outOfMemoryError,
//     T? Function(_FailureInvalidConfigurationError v)? invalidConfigurationError,
//     T? Function(_FailureInvalidOperationError v)? invalidOperationError,
//     T? Function(_FailureOverflowError v)? overflowError,
//     T? Function(_FailureDivisionByZeroError v)? divisionByZeroError,
//     T? Function(_FailureParsingError v)? parsingError,
//     T? Function(_FailureNotImplementedError v)? notImplementedError,
//     T? Function(_FailureUnknownError v)? unknownError,
//   }) {
//     switch (_tag) {
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
//       case FailureTag.authenticationError:
//         if (authenticationError != null) {
//           return authenticationError(
//             _FailureAuthenticationError(
//               _username_authenticationError!,
//               _password_authenticationError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.databaseError:
//         if (databaseError != null) {
//           return databaseError(
//             _FailureDatabaseError(
//               _errorCode_databaseError!,
//               _errorMessage_databaseError,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.fileNotFoundError:
//         if (fileNotFoundError != null) {
//           return fileNotFoundError(
//             _FailureFileNotFoundError(
//               _filePath_fileNotFoundError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.permissionDeniedError:
//         if (permissionDeniedError != null) {
//           return permissionDeniedError(
//             _FailurePermissionDeniedError(
//               _resourceName_permissionDeniedError!,
//               _permissions_permissionDeniedError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.invalidInputError:
//         if (invalidInputError != null) {
//           return invalidInputError(
//             _FailureInvalidInputError(
//               _input_invalidInputError!,
//               _param2_invalidInputError!,
//               _param3_invalidInputError!,
//               _param4_invalidInputError!,
//               _param5_invalidInputError!,
//               _param6_invalidInputError!,
//               _param7_invalidInputError,
//               _param8_invalidInputError!,
//               _param9_invalidInputError!,
//               _param10_invalidInputError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.outOfMemoryError:
//         if (outOfMemoryError != null) {
//           return outOfMemoryError(
//             _FailureOutOfMemoryError(
//               _param1_outOfMemoryError!,
//               _param2_outOfMemoryError!,
//               _param3_outOfMemoryError!,
//               _param4_outOfMemoryError!,
//               _param5_outOfMemoryError!,
//               _param6_outOfMemoryError!,
//               _param7_outOfMemoryError!,
//               _param8_outOfMemoryError!,
//               _param9_outOfMemoryError!,
//               _param10_outOfMemoryError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.invalidConfigurationError:
//         if (invalidConfigurationError != null) {
//           return invalidConfigurationError(
//             _FailureInvalidConfigurationError(
//               _config_invalidConfigurationError!,
//               _param2_invalidConfigurationError!,
//               _param3_invalidConfigurationError!,
//               _param4_invalidConfigurationError!,
//               _param5_invalidConfigurationError!,
//               _param6_invalidConfigurationError,
//               _param7_invalidConfigurationError!,
//               _param8_invalidConfigurationError!,
//               _param9_invalidConfigurationError!,
//               _param10_invalidConfigurationError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.invalidOperationError:
//         if (invalidOperationError != null) {
//           return invalidOperationError(
//             _FailureInvalidOperationError(
//               _operation_invalidOperationError!,
//               _param2_invalidOperationError!,
//               _param3_invalidOperationError!,
//               _param4_invalidOperationError!,
//               _param5_invalidOperationError!,
//               _param6_invalidOperationError!,
//               _param7_invalidOperationError!,
//               _param8_invalidOperationError!,
//               _param9_invalidOperationError!,
//               _param10_invalidOperationError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.overflowError:
//         if (overflowError != null) {
//           return overflowError(
//             _FailureOverflowError(
//               _param1_overflowError!,
//               _param2_overflowError!,
//               _param3_overflowError!,
//               _param4_overflowError!,
//               _param5_overflowError!,
//               _param6_overflowError!,
//               _param7_overflowError!,
//               _param8_overflowError!,
//               _param9_overflowError!,
//               _param10_overflowError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.divisionByZeroError:
//         if (divisionByZeroError != null) {
//           return divisionByZeroError(
//             _FailureDivisionByZeroError(
//               _param1_divisionByZeroError!,
//               _param2_divisionByZeroError!,
//               _param3_divisionByZeroError!,
//               _param4_divisionByZeroError!,
//               _param5_divisionByZeroError!,
//               _param6_divisionByZeroError!,
//               _param7_divisionByZeroError!,
//               _param8_divisionByZeroError!,
//               _param9_divisionByZeroError!,
//               _param10_divisionByZeroError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.parsingError:
//         if (parsingError != null) {
//           return parsingError(
//             _FailureParsingError(
//               _input_parsingError!,
//               _param2_parsingError!,
//               _param3_parsingError!,
//               _param4_parsingError!,
//               _param5_parsingError!,
//               _param6_parsingError!,
//               _param7_parsingError!,
//               _param8_parsingError!,
//               _param9_parsingError!,
//               _param10_parsingError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.notImplementedError:
//         if (notImplementedError != null) {
//           return notImplementedError(
//             _FailureNotImplementedError(
//               _param1_notImplementedError!,
//               _param2_notImplementedError!,
//               _param3_notImplementedError!,
//               _param4_notImplementedError!,
//               _param5_notImplementedError!,
//               _param6_notImplementedError!,
//               _param7_notImplementedError!,
//               _param8_notImplementedError!,
//               _param9_notImplementedError!,
//               _param10_notImplementedError!,
//             ),
//           );
//         }
//         return null;
//       case FailureTag.unknownError:
//         if (unknownError != null) {
//           return unknownError(
//             _FailureUnknownError(
//               _param1_unknownError!,
//               _param2_unknownError!,
//               _param3_unknownError!,
//               _param4_unknownError!,
//               _param5_unknownError!,
//               _param6_unknownError!,
//               _param7_unknownError!,
//               _param8_unknownError!,
//               _param9_unknownError!,
//               _param10_unknownError!,
//             ),
//           );
//         }
//         return null;
//     }
//   }

//   T when<T>({
//     required T Function(
//       List<String> a,
//       List<String> g,
//     ) empty,
//     required T Function(
//       List<String>? a,
//       List<String> g,
//     ) badRequest,
//     required T Function() unprocessableEntity,
//     required T Function() other,
//     required T Function() timeout,
//     required T Function(
//       String message,
//     ) connectionError,
//     required T Function(
//       String username,
//       String password,
//     ) authenticationError,
//     required T Function(
//       int errorCode,
//       String? errorMessage,
//     ) databaseError,
//     required T Function(
//       String filePath,
//     ) fileNotFoundError,
//     required T Function(
//       String resourceName,
//       List<String> permissions,
//     ) permissionDeniedError,
//     required T Function(
//       String input,
//       String param2,
//       int param3,
//       bool param4,
//       double param5,
//       List<int> param6,
//       String? param7,
//       Map<String, dynamic> param8,
//       DateTime param9,
//       String param10,
//     ) invalidInputError,
//     required T Function(
//       int param1,
//       double param2,
//       String param3,
//       bool param4,
//       List<String> param5,
//       Map<String, dynamic> param6,
//       DateTime param7,
//       int param8,
//       double param9,
//       String param10,
//     ) outOfMemoryError,
//     required T Function(
//       String config,
//       int param2,
//       double param3,
//       List<int> param4,
//       bool param5,
//       String? param6,
//       Map<String, dynamic> param7,
//       DateTime param8,
//       String param9,
//       int param10,
//     ) invalidConfigurationError,
//     required T Function(
//       String operation,
//       bool param2,
//       double param3,
//       String param4,
//       int param5,
//       List<String> param6,
//       DateTime param7,
//       String param8,
//       Map<String, dynamic> param9,
//       int param10,
//     ) invalidOperationError,
//     required T Function(
//       double param1,
//       int param2,
//       String param3,
//       bool param4,
//       List<int> param5,
//       Map<String, dynamic> param6,
//       DateTime param7,
//       String param8,
//       double param9,
//       int param10,
//     ) overflowError,
//     required T Function(
//       String param1,
//       List<String> param2,
//       int param3,
//       double param4,
//       String param5,
//       DateTime param6,
//       Map<String, dynamic> param7,
//       bool param8,
//       double param9,
//       int param10,
//     ) divisionByZeroError,
//     required T Function(
//       String input,
//       int param2,
//       double param3,
//       String param4,
//       bool param5,
//       List<String> param6,
//       DateTime param7,
//       String param8,
//       Map<String, dynamic> param9,
//       int param10,
//     ) parsingError,
//     required T Function(
//       int param1,
//       double param2,
//       String param3,
//       bool param4,
//       List<int> param5,
//       Map<String, dynamic> param6,
//       DateTime param7,
//       String param8,
//       int param9,
//       double param10,
//     ) notImplementedError,
//     required T Function(
//       String param1,
//       int param2,
//       double param3,
//       bool param4,
//       String param5,
//       DateTime param6,
//       Map<String, dynamic> param7,
//       List<String> param8,
//       int param9,
//       double param10,
//     ) unknownError,
//   }) {
//     switch (_tag) {
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
//       case FailureTag.unprocessableEntity:
//         return unprocessableEntity();
//       case FailureTag.other:
//         return other();
//       case FailureTag.timeout:
//         return timeout();
//       case FailureTag.connectionError:
//         return connectionError(
//           _message_connectionError!,
//         );
//       case FailureTag.authenticationError:
//         return authenticationError(
//           _username_authenticationError!,
//           _password_authenticationError!,
//         );
//       case FailureTag.databaseError:
//         return databaseError(
//           _errorCode_databaseError!,
//           _errorMessage_databaseError,
//         );
//       case FailureTag.fileNotFoundError:
//         return fileNotFoundError(
//           _filePath_fileNotFoundError!,
//         );
//       case FailureTag.permissionDeniedError:
//         return permissionDeniedError(
//           _resourceName_permissionDeniedError!,
//           _permissions_permissionDeniedError!,
//         );
//       case FailureTag.invalidInputError:
//         return invalidInputError(
//           _input_invalidInputError!,
//           _param2_invalidInputError!,
//           _param3_invalidInputError!,
//           _param4_invalidInputError!,
//           _param5_invalidInputError!,
//           _param6_invalidInputError!,
//           _param7_invalidInputError,
//           _param8_invalidInputError!,
//           _param9_invalidInputError!,
//           _param10_invalidInputError!,
//         );
//       case FailureTag.outOfMemoryError:
//         return outOfMemoryError(
//           _param1_outOfMemoryError!,
//           _param2_outOfMemoryError!,
//           _param3_outOfMemoryError!,
//           _param4_outOfMemoryError!,
//           _param5_outOfMemoryError!,
//           _param6_outOfMemoryError!,
//           _param7_outOfMemoryError!,
//           _param8_outOfMemoryError!,
//           _param9_outOfMemoryError!,
//           _param10_outOfMemoryError!,
//         );
//       case FailureTag.invalidConfigurationError:
//         return invalidConfigurationError(
//           _config_invalidConfigurationError!,
//           _param2_invalidConfigurationError!,
//           _param3_invalidConfigurationError!,
//           _param4_invalidConfigurationError!,
//           _param5_invalidConfigurationError!,
//           _param6_invalidConfigurationError,
//           _param7_invalidConfigurationError!,
//           _param8_invalidConfigurationError!,
//           _param9_invalidConfigurationError!,
//           _param10_invalidConfigurationError!,
//         );
//       case FailureTag.invalidOperationError:
//         return invalidOperationError(
//           _operation_invalidOperationError!,
//           _param2_invalidOperationError!,
//           _param3_invalidOperationError!,
//           _param4_invalidOperationError!,
//           _param5_invalidOperationError!,
//           _param6_invalidOperationError!,
//           _param7_invalidOperationError!,
//           _param8_invalidOperationError!,
//           _param9_invalidOperationError!,
//           _param10_invalidOperationError!,
//         );
//       case FailureTag.overflowError:
//         return overflowError(
//           _param1_overflowError!,
//           _param2_overflowError!,
//           _param3_overflowError!,
//           _param4_overflowError!,
//           _param5_overflowError!,
//           _param6_overflowError!,
//           _param7_overflowError!,
//           _param8_overflowError!,
//           _param9_overflowError!,
//           _param10_overflowError!,
//         );
//       case FailureTag.divisionByZeroError:
//         return divisionByZeroError(
//           _param1_divisionByZeroError!,
//           _param2_divisionByZeroError!,
//           _param3_divisionByZeroError!,
//           _param4_divisionByZeroError!,
//           _param5_divisionByZeroError!,
//           _param6_divisionByZeroError!,
//           _param7_divisionByZeroError!,
//           _param8_divisionByZeroError!,
//           _param9_divisionByZeroError!,
//           _param10_divisionByZeroError!,
//         );
//       case FailureTag.parsingError:
//         return parsingError(
//           _input_parsingError!,
//           _param2_parsingError!,
//           _param3_parsingError!,
//           _param4_parsingError!,
//           _param5_parsingError!,
//           _param6_parsingError!,
//           _param7_parsingError!,
//           _param8_parsingError!,
//           _param9_parsingError!,
//           _param10_parsingError!,
//         );
//       case FailureTag.notImplementedError:
//         return notImplementedError(
//           _param1_notImplementedError!,
//           _param2_notImplementedError!,
//           _param3_notImplementedError!,
//           _param4_notImplementedError!,
//           _param5_notImplementedError!,
//           _param6_notImplementedError!,
//           _param7_notImplementedError!,
//           _param8_notImplementedError!,
//           _param9_notImplementedError!,
//           _param10_notImplementedError!,
//         );
//       case FailureTag.unknownError:
//         return unknownError(
//           _param1_unknownError!,
//           _param2_unknownError!,
//           _param3_unknownError!,
//           _param4_unknownError!,
//           _param5_unknownError!,
//           _param6_unknownError!,
//           _param7_unknownError!,
//           _param8_unknownError!,
//           _param9_unknownError!,
//           _param10_unknownError!,
//         );
//     }
//   }

//   @override
//   bool operator ==(dynamic other) {
//     switch (_tag) {
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
//       case FailureTag.unprocessableEntity:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType && other is Failure);

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
//       case FailureTag.authenticationError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._username_authenticationError,
//                       _username_authenticationError,
//                     ) ||
//                     other._username_authenticationError ==
//                         _username_authenticationError) &&
//                 (identical(
//                       other._password_authenticationError,
//                       _password_authenticationError,
//                     ) ||
//                     other._password_authenticationError ==
//                         _password_authenticationError));
//       case FailureTag.databaseError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._errorCode_databaseError,
//                       _errorCode_databaseError,
//                     ) ||
//                     other._errorCode_databaseError ==
//                         _errorCode_databaseError) &&
//                 (identical(
//                       other._errorMessage_databaseError,
//                       _errorMessage_databaseError,
//                     ) ||
//                     other._errorMessage_databaseError ==
//                         _errorMessage_databaseError));
//       case FailureTag.fileNotFoundError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._filePath_fileNotFoundError,
//                       _filePath_fileNotFoundError,
//                     ) ||
//                     other._filePath_fileNotFoundError ==
//                         _filePath_fileNotFoundError));
//       case FailureTag.permissionDeniedError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._resourceName_permissionDeniedError,
//                       _resourceName_permissionDeniedError,
//                     ) ||
//                     other._resourceName_permissionDeniedError ==
//                         _resourceName_permissionDeniedError) &&
//                 const DeepCollectionEquality().equals(
//                   other._permissions_permissionDeniedError,
//                   _permissions_permissionDeniedError,
//                 ));
//       case FailureTag.invalidInputError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._input_invalidInputError,
//                       _input_invalidInputError,
//                     ) ||
//                     other._input_invalidInputError ==
//                         _input_invalidInputError) &&
//                 (identical(
//                       other._param2_invalidInputError,
//                       _param2_invalidInputError,
//                     ) ||
//                     other._param2_invalidInputError ==
//                         _param2_invalidInputError) &&
//                 (identical(
//                       other._param3_invalidInputError,
//                       _param3_invalidInputError,
//                     ) ||
//                     other._param3_invalidInputError ==
//                         _param3_invalidInputError) &&
//                 (identical(
//                       other._param4_invalidInputError,
//                       _param4_invalidInputError,
//                     ) ||
//                     other._param4_invalidInputError ==
//                         _param4_invalidInputError) &&
//                 (identical(
//                       other._param5_invalidInputError,
//                       _param5_invalidInputError,
//                     ) ||
//                     other._param5_invalidInputError ==
//                         _param5_invalidInputError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param6_invalidInputError,
//                   _param6_invalidInputError,
//                 ) &&
//                 (identical(
//                       other._param7_invalidInputError,
//                       _param7_invalidInputError,
//                     ) ||
//                     other._param7_invalidInputError ==
//                         _param7_invalidInputError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param8_invalidInputError,
//                   _param8_invalidInputError,
//                 ) &&
//                 (identical(
//                       other._param9_invalidInputError,
//                       _param9_invalidInputError,
//                     ) ||
//                     other._param9_invalidInputError ==
//                         _param9_invalidInputError) &&
//                 (identical(
//                       other._param10_invalidInputError,
//                       _param10_invalidInputError,
//                     ) ||
//                     other._param10_invalidInputError ==
//                         _param10_invalidInputError));
//       case FailureTag.outOfMemoryError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._param1_outOfMemoryError,
//                       _param1_outOfMemoryError,
//                     ) ||
//                     other._param1_outOfMemoryError ==
//                         _param1_outOfMemoryError) &&
//                 (identical(
//                       other._param2_outOfMemoryError,
//                       _param2_outOfMemoryError,
//                     ) ||
//                     other._param2_outOfMemoryError ==
//                         _param2_outOfMemoryError) &&
//                 (identical(
//                       other._param3_outOfMemoryError,
//                       _param3_outOfMemoryError,
//                     ) ||
//                     other._param3_outOfMemoryError ==
//                         _param3_outOfMemoryError) &&
//                 (identical(
//                       other._param4_outOfMemoryError,
//                       _param4_outOfMemoryError,
//                     ) ||
//                     other._param4_outOfMemoryError ==
//                         _param4_outOfMemoryError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param5_outOfMemoryError,
//                   _param5_outOfMemoryError,
//                 ) &&
//                 const DeepCollectionEquality().equals(
//                   other._param6_outOfMemoryError,
//                   _param6_outOfMemoryError,
//                 ) &&
//                 (identical(
//                       other._param7_outOfMemoryError,
//                       _param7_outOfMemoryError,
//                     ) ||
//                     other._param7_outOfMemoryError ==
//                         _param7_outOfMemoryError) &&
//                 (identical(
//                       other._param8_outOfMemoryError,
//                       _param8_outOfMemoryError,
//                     ) ||
//                     other._param8_outOfMemoryError ==
//                         _param8_outOfMemoryError) &&
//                 (identical(
//                       other._param9_outOfMemoryError,
//                       _param9_outOfMemoryError,
//                     ) ||
//                     other._param9_outOfMemoryError ==
//                         _param9_outOfMemoryError) &&
//                 (identical(
//                       other._param10_outOfMemoryError,
//                       _param10_outOfMemoryError,
//                     ) ||
//                     other._param10_outOfMemoryError ==
//                         _param10_outOfMemoryError));
//       case FailureTag.invalidConfigurationError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._config_invalidConfigurationError,
//                       _config_invalidConfigurationError,
//                     ) ||
//                     other._config_invalidConfigurationError ==
//                         _config_invalidConfigurationError) &&
//                 (identical(
//                       other._param2_invalidConfigurationError,
//                       _param2_invalidConfigurationError,
//                     ) ||
//                     other._param2_invalidConfigurationError ==
//                         _param2_invalidConfigurationError) &&
//                 (identical(
//                       other._param3_invalidConfigurationError,
//                       _param3_invalidConfigurationError,
//                     ) ||
//                     other._param3_invalidConfigurationError ==
//                         _param3_invalidConfigurationError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param4_invalidConfigurationError,
//                   _param4_invalidConfigurationError,
//                 ) &&
//                 (identical(
//                       other._param5_invalidConfigurationError,
//                       _param5_invalidConfigurationError,
//                     ) ||
//                     other._param5_invalidConfigurationError ==
//                         _param5_invalidConfigurationError) &&
//                 (identical(
//                       other._param6_invalidConfigurationError,
//                       _param6_invalidConfigurationError,
//                     ) ||
//                     other._param6_invalidConfigurationError ==
//                         _param6_invalidConfigurationError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param7_invalidConfigurationError,
//                   _param7_invalidConfigurationError,
//                 ) &&
//                 (identical(
//                       other._param8_invalidConfigurationError,
//                       _param8_invalidConfigurationError,
//                     ) ||
//                     other._param8_invalidConfigurationError ==
//                         _param8_invalidConfigurationError) &&
//                 (identical(
//                       other._param9_invalidConfigurationError,
//                       _param9_invalidConfigurationError,
//                     ) ||
//                     other._param9_invalidConfigurationError ==
//                         _param9_invalidConfigurationError) &&
//                 (identical(
//                       other._param10_invalidConfigurationError,
//                       _param10_invalidConfigurationError,
//                     ) ||
//                     other._param10_invalidConfigurationError ==
//                         _param10_invalidConfigurationError));
//       case FailureTag.invalidOperationError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._operation_invalidOperationError,
//                       _operation_invalidOperationError,
//                     ) ||
//                     other._operation_invalidOperationError ==
//                         _operation_invalidOperationError) &&
//                 (identical(
//                       other._param2_invalidOperationError,
//                       _param2_invalidOperationError,
//                     ) ||
//                     other._param2_invalidOperationError ==
//                         _param2_invalidOperationError) &&
//                 (identical(
//                       other._param3_invalidOperationError,
//                       _param3_invalidOperationError,
//                     ) ||
//                     other._param3_invalidOperationError ==
//                         _param3_invalidOperationError) &&
//                 (identical(
//                       other._param4_invalidOperationError,
//                       _param4_invalidOperationError,
//                     ) ||
//                     other._param4_invalidOperationError ==
//                         _param4_invalidOperationError) &&
//                 (identical(
//                       other._param5_invalidOperationError,
//                       _param5_invalidOperationError,
//                     ) ||
//                     other._param5_invalidOperationError ==
//                         _param5_invalidOperationError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param6_invalidOperationError,
//                   _param6_invalidOperationError,
//                 ) &&
//                 (identical(
//                       other._param7_invalidOperationError,
//                       _param7_invalidOperationError,
//                     ) ||
//                     other._param7_invalidOperationError ==
//                         _param7_invalidOperationError) &&
//                 (identical(
//                       other._param8_invalidOperationError,
//                       _param8_invalidOperationError,
//                     ) ||
//                     other._param8_invalidOperationError ==
//                         _param8_invalidOperationError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param9_invalidOperationError,
//                   _param9_invalidOperationError,
//                 ) &&
//                 (identical(
//                       other._param10_invalidOperationError,
//                       _param10_invalidOperationError,
//                     ) ||
//                     other._param10_invalidOperationError ==
//                         _param10_invalidOperationError));
//       case FailureTag.overflowError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._param1_overflowError,
//                       _param1_overflowError,
//                     ) ||
//                     other._param1_overflowError == _param1_overflowError) &&
//                 (identical(
//                       other._param2_overflowError,
//                       _param2_overflowError,
//                     ) ||
//                     other._param2_overflowError == _param2_overflowError) &&
//                 (identical(
//                       other._param3_overflowError,
//                       _param3_overflowError,
//                     ) ||
//                     other._param3_overflowError == _param3_overflowError) &&
//                 (identical(
//                       other._param4_overflowError,
//                       _param4_overflowError,
//                     ) ||
//                     other._param4_overflowError == _param4_overflowError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param5_overflowError,
//                   _param5_overflowError,
//                 ) &&
//                 const DeepCollectionEquality().equals(
//                   other._param6_overflowError,
//                   _param6_overflowError,
//                 ) &&
//                 (identical(
//                       other._param7_overflowError,
//                       _param7_overflowError,
//                     ) ||
//                     other._param7_overflowError == _param7_overflowError) &&
//                 (identical(
//                       other._param8_overflowError,
//                       _param8_overflowError,
//                     ) ||
//                     other._param8_overflowError == _param8_overflowError) &&
//                 (identical(
//                       other._param9_overflowError,
//                       _param9_overflowError,
//                     ) ||
//                     other._param9_overflowError == _param9_overflowError) &&
//                 (identical(
//                       other._param10_overflowError,
//                       _param10_overflowError,
//                     ) ||
//                     other._param10_overflowError == _param10_overflowError));
//       case FailureTag.divisionByZeroError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._param1_divisionByZeroError,
//                       _param1_divisionByZeroError,
//                     ) ||
//                     other._param1_divisionByZeroError ==
//                         _param1_divisionByZeroError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param2_divisionByZeroError,
//                   _param2_divisionByZeroError,
//                 ) &&
//                 (identical(
//                       other._param3_divisionByZeroError,
//                       _param3_divisionByZeroError,
//                     ) ||
//                     other._param3_divisionByZeroError ==
//                         _param3_divisionByZeroError) &&
//                 (identical(
//                       other._param4_divisionByZeroError,
//                       _param4_divisionByZeroError,
//                     ) ||
//                     other._param4_divisionByZeroError ==
//                         _param4_divisionByZeroError) &&
//                 (identical(
//                       other._param5_divisionByZeroError,
//                       _param5_divisionByZeroError,
//                     ) ||
//                     other._param5_divisionByZeroError ==
//                         _param5_divisionByZeroError) &&
//                 (identical(
//                       other._param6_divisionByZeroError,
//                       _param6_divisionByZeroError,
//                     ) ||
//                     other._param6_divisionByZeroError ==
//                         _param6_divisionByZeroError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param7_divisionByZeroError,
//                   _param7_divisionByZeroError,
//                 ) &&
//                 (identical(
//                       other._param8_divisionByZeroError,
//                       _param8_divisionByZeroError,
//                     ) ||
//                     other._param8_divisionByZeroError ==
//                         _param8_divisionByZeroError) &&
//                 (identical(
//                       other._param9_divisionByZeroError,
//                       _param9_divisionByZeroError,
//                     ) ||
//                     other._param9_divisionByZeroError ==
//                         _param9_divisionByZeroError) &&
//                 (identical(
//                       other._param10_divisionByZeroError,
//                       _param10_divisionByZeroError,
//                     ) ||
//                     other._param10_divisionByZeroError ==
//                         _param10_divisionByZeroError));
//       case FailureTag.parsingError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._input_parsingError,
//                       _input_parsingError,
//                     ) ||
//                     other._input_parsingError == _input_parsingError) &&
//                 (identical(
//                       other._param2_parsingError,
//                       _param2_parsingError,
//                     ) ||
//                     other._param2_parsingError == _param2_parsingError) &&
//                 (identical(
//                       other._param3_parsingError,
//                       _param3_parsingError,
//                     ) ||
//                     other._param3_parsingError == _param3_parsingError) &&
//                 (identical(
//                       other._param4_parsingError,
//                       _param4_parsingError,
//                     ) ||
//                     other._param4_parsingError == _param4_parsingError) &&
//                 (identical(
//                       other._param5_parsingError,
//                       _param5_parsingError,
//                     ) ||
//                     other._param5_parsingError == _param5_parsingError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param6_parsingError,
//                   _param6_parsingError,
//                 ) &&
//                 (identical(
//                       other._param7_parsingError,
//                       _param7_parsingError,
//                     ) ||
//                     other._param7_parsingError == _param7_parsingError) &&
//                 (identical(
//                       other._param8_parsingError,
//                       _param8_parsingError,
//                     ) ||
//                     other._param8_parsingError == _param8_parsingError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param9_parsingError,
//                   _param9_parsingError,
//                 ) &&
//                 (identical(
//                       other._param10_parsingError,
//                       _param10_parsingError,
//                     ) ||
//                     other._param10_parsingError == _param10_parsingError));
//       case FailureTag.notImplementedError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._param1_notImplementedError,
//                       _param1_notImplementedError,
//                     ) ||
//                     other._param1_notImplementedError ==
//                         _param1_notImplementedError) &&
//                 (identical(
//                       other._param2_notImplementedError,
//                       _param2_notImplementedError,
//                     ) ||
//                     other._param2_notImplementedError ==
//                         _param2_notImplementedError) &&
//                 (identical(
//                       other._param3_notImplementedError,
//                       _param3_notImplementedError,
//                     ) ||
//                     other._param3_notImplementedError ==
//                         _param3_notImplementedError) &&
//                 (identical(
//                       other._param4_notImplementedError,
//                       _param4_notImplementedError,
//                     ) ||
//                     other._param4_notImplementedError ==
//                         _param4_notImplementedError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param5_notImplementedError,
//                   _param5_notImplementedError,
//                 ) &&
//                 const DeepCollectionEquality().equals(
//                   other._param6_notImplementedError,
//                   _param6_notImplementedError,
//                 ) &&
//                 (identical(
//                       other._param7_notImplementedError,
//                       _param7_notImplementedError,
//                     ) ||
//                     other._param7_notImplementedError ==
//                         _param7_notImplementedError) &&
//                 (identical(
//                       other._param8_notImplementedError,
//                       _param8_notImplementedError,
//                     ) ||
//                     other._param8_notImplementedError ==
//                         _param8_notImplementedError) &&
//                 (identical(
//                       other._param9_notImplementedError,
//                       _param9_notImplementedError,
//                     ) ||
//                     other._param9_notImplementedError ==
//                         _param9_notImplementedError) &&
//                 (identical(
//                       other._param10_notImplementedError,
//                       _param10_notImplementedError,
//                     ) ||
//                     other._param10_notImplementedError ==
//                         _param10_notImplementedError));
//       case FailureTag.unknownError:
//         return identical(this, other) ||
//             (other.runtimeType == runtimeType &&
//                 other is Failure &&
//                 (identical(
//                       other._param1_unknownError,
//                       _param1_unknownError,
//                     ) ||
//                     other._param1_unknownError == _param1_unknownError) &&
//                 (identical(
//                       other._param2_unknownError,
//                       _param2_unknownError,
//                     ) ||
//                     other._param2_unknownError == _param2_unknownError) &&
//                 (identical(
//                       other._param3_unknownError,
//                       _param3_unknownError,
//                     ) ||
//                     other._param3_unknownError == _param3_unknownError) &&
//                 (identical(
//                       other._param4_unknownError,
//                       _param4_unknownError,
//                     ) ||
//                     other._param4_unknownError == _param4_unknownError) &&
//                 (identical(
//                       other._param5_unknownError,
//                       _param5_unknownError,
//                     ) ||
//                     other._param5_unknownError == _param5_unknownError) &&
//                 (identical(
//                       other._param6_unknownError,
//                       _param6_unknownError,
//                     ) ||
//                     other._param6_unknownError == _param6_unknownError) &&
//                 const DeepCollectionEquality().equals(
//                   other._param7_unknownError,
//                   _param7_unknownError,
//                 ) &&
//                 const DeepCollectionEquality().equals(
//                   other._param8_unknownError,
//                   _param8_unknownError,
//                 ) &&
//                 (identical(
//                       other._param9_unknownError,
//                       _param9_unknownError,
//                     ) ||
//                     other._param9_unknownError == _param9_unknownError) &&
//                 (identical(
//                       other._param10_unknownError,
//                       _param10_unknownError,
//                     ) ||
//                     other._param10_unknownError == _param10_unknownError));
//     }
//   }

//   @override
//   int get hashCode {
//     switch (_tag) {
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
//       case FailureTag.authenticationError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _username_authenticationError,
//             _password_authenticationError,
//           ],
//         );
//       case FailureTag.databaseError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _errorCode_databaseError,
//             _errorMessage_databaseError,
//           ],
//         );
//       case FailureTag.fileNotFoundError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _filePath_fileNotFoundError,
//           ],
//         );
//       case FailureTag.permissionDeniedError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _resourceName_permissionDeniedError,
//             const DeepCollectionEquality().hash(
//               _permissions_permissionDeniedError,
//             ),
//           ],
//         );
//       case FailureTag.invalidInputError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _input_invalidInputError,
//             _param2_invalidInputError,
//             _param3_invalidInputError,
//             _param4_invalidInputError,
//             _param5_invalidInputError,
//             const DeepCollectionEquality().hash(
//               _param6_invalidInputError,
//             ),
//             _param7_invalidInputError,
//             const DeepCollectionEquality().hash(
//               _param8_invalidInputError,
//             ),
//             _param9_invalidInputError,
//             _param10_invalidInputError,
//           ],
//         );
//       case FailureTag.outOfMemoryError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _param1_outOfMemoryError,
//             _param2_outOfMemoryError,
//             _param3_outOfMemoryError,
//             _param4_outOfMemoryError,
//             const DeepCollectionEquality().hash(
//               _param5_outOfMemoryError,
//             ),
//             const DeepCollectionEquality().hash(
//               _param6_outOfMemoryError,
//             ),
//             _param7_outOfMemoryError,
//             _param8_outOfMemoryError,
//             _param9_outOfMemoryError,
//             _param10_outOfMemoryError,
//           ],
//         );
//       case FailureTag.invalidConfigurationError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _config_invalidConfigurationError,
//             _param2_invalidConfigurationError,
//             _param3_invalidConfigurationError,
//             const DeepCollectionEquality().hash(
//               _param4_invalidConfigurationError,
//             ),
//             _param5_invalidConfigurationError,
//             _param6_invalidConfigurationError,
//             const DeepCollectionEquality().hash(
//               _param7_invalidConfigurationError,
//             ),
//             _param8_invalidConfigurationError,
//             _param9_invalidConfigurationError,
//             _param10_invalidConfigurationError,
//           ],
//         );
//       case FailureTag.invalidOperationError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _operation_invalidOperationError,
//             _param2_invalidOperationError,
//             _param3_invalidOperationError,
//             _param4_invalidOperationError,
//             _param5_invalidOperationError,
//             const DeepCollectionEquality().hash(
//               _param6_invalidOperationError,
//             ),
//             _param7_invalidOperationError,
//             _param8_invalidOperationError,
//             const DeepCollectionEquality().hash(
//               _param9_invalidOperationError,
//             ),
//             _param10_invalidOperationError,
//           ],
//         );
//       case FailureTag.overflowError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _param1_overflowError,
//             _param2_overflowError,
//             _param3_overflowError,
//             _param4_overflowError,
//             const DeepCollectionEquality().hash(
//               _param5_overflowError,
//             ),
//             const DeepCollectionEquality().hash(
//               _param6_overflowError,
//             ),
//             _param7_overflowError,
//             _param8_overflowError,
//             _param9_overflowError,
//             _param10_overflowError,
//           ],
//         );
//       case FailureTag.divisionByZeroError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _param1_divisionByZeroError,
//             const DeepCollectionEquality().hash(
//               _param2_divisionByZeroError,
//             ),
//             _param3_divisionByZeroError,
//             _param4_divisionByZeroError,
//             _param5_divisionByZeroError,
//             _param6_divisionByZeroError,
//             const DeepCollectionEquality().hash(
//               _param7_divisionByZeroError,
//             ),
//             _param8_divisionByZeroError,
//             _param9_divisionByZeroError,
//             _param10_divisionByZeroError,
//           ],
//         );
//       case FailureTag.parsingError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _input_parsingError,
//             _param2_parsingError,
//             _param3_parsingError,
//             _param4_parsingError,
//             _param5_parsingError,
//             const DeepCollectionEquality().hash(
//               _param6_parsingError,
//             ),
//             _param7_parsingError,
//             _param8_parsingError,
//             const DeepCollectionEquality().hash(
//               _param9_parsingError,
//             ),
//             _param10_parsingError,
//           ],
//         );
//       case FailureTag.notImplementedError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _param1_notImplementedError,
//             _param2_notImplementedError,
//             _param3_notImplementedError,
//             _param4_notImplementedError,
//             const DeepCollectionEquality().hash(
//               _param5_notImplementedError,
//             ),
//             const DeepCollectionEquality().hash(
//               _param6_notImplementedError,
//             ),
//             _param7_notImplementedError,
//             _param8_notImplementedError,
//             _param9_notImplementedError,
//             _param10_notImplementedError,
//           ],
//         );
//       case FailureTag.unknownError:
//         return Object.hashAll(
//           [
//             runtimeType,
//             _param1_unknownError,
//             _param2_unknownError,
//             _param3_unknownError,
//             _param4_unknownError,
//             _param5_unknownError,
//             _param6_unknownError,
//             const DeepCollectionEquality().hash(
//               _param7_unknownError,
//             ),
//             const DeepCollectionEquality().hash(
//               _param8_unknownError,
//             ),
//             _param9_unknownError,
//             _param10_unknownError,
//           ],
//         );
//     }
//   }

//   @override
//   String toString() {
//     switch (_tag) {
//       case FailureTag.empty:
//         return 'Failure.empty(a: $_a_empty, g: $_g_empty)';
//       case FailureTag.badRequest:
//         return 'Failure.badRequest(a: $_a_badRequest, g: $_g_badRequest)';
//       case FailureTag.unprocessableEntity:
//         return 'Failure.unprocessableEntity()';
//       case FailureTag.other:
//         return 'Failure.other()';
//       case FailureTag.timeout:
//         return 'Failure.timeout()';
//       case FailureTag.connectionError:
//         return 'Failure.connectionError(message: $_message_connectionError)';
//       case FailureTag.authenticationError:
//         return 'Failure.authenticationError(username: $_username_authenticationError, password: $_password_authenticationError)';
//       case FailureTag.databaseError:
//         return 'Failure.databaseError(errorCode: $_errorCode_databaseError, errorMessage: $_errorMessage_databaseError)';
//       case FailureTag.fileNotFoundError:
//         return 'Failure.fileNotFoundError(filePath: $_filePath_fileNotFoundError)';
//       case FailureTag.permissionDeniedError:
//         return 'Failure.permissionDeniedError(resourceName: $_resourceName_permissionDeniedError, permissions: $_permissions_permissionDeniedError)';
//       case FailureTag.invalidInputError:
//         return 'Failure.invalidInputError(input: $_input_invalidInputError, param2: $_param2_invalidInputError, param3: $_param3_invalidInputError, param4: $_param4_invalidInputError, param5: $_param5_invalidInputError, param6: $_param6_invalidInputError, param7: $_param7_invalidInputError, param8: $_param8_invalidInputError, param9: $_param9_invalidInputError, param10: $_param10_invalidInputError)';
//       case FailureTag.outOfMemoryError:
//         return 'Failure.outOfMemoryError(param1: $_param1_outOfMemoryError, param2: $_param2_outOfMemoryError, param3: $_param3_outOfMemoryError, param4: $_param4_outOfMemoryError, param5: $_param5_outOfMemoryError, param6: $_param6_outOfMemoryError, param7: $_param7_outOfMemoryError, param8: $_param8_outOfMemoryError, param9: $_param9_outOfMemoryError, param10: $_param10_outOfMemoryError)';
//       case FailureTag.invalidConfigurationError:
//         return 'Failure.invalidConfigurationError(config: $_config_invalidConfigurationError, param2: $_param2_invalidConfigurationError, param3: $_param3_invalidConfigurationError, param4: $_param4_invalidConfigurationError, param5: $_param5_invalidConfigurationError, param6: $_param6_invalidConfigurationError, param7: $_param7_invalidConfigurationError, param8: $_param8_invalidConfigurationError, param9: $_param9_invalidConfigurationError, param10: $_param10_invalidConfigurationError)';
//       case FailureTag.invalidOperationError:
//         return 'Failure.invalidOperationError(operation: $_operation_invalidOperationError, param2: $_param2_invalidOperationError, param3: $_param3_invalidOperationError, param4: $_param4_invalidOperationError, param5: $_param5_invalidOperationError, param6: $_param6_invalidOperationError, param7: $_param7_invalidOperationError, param8: $_param8_invalidOperationError, param9: $_param9_invalidOperationError, param10: $_param10_invalidOperationError)';
//       case FailureTag.overflowError:
//         return 'Failure.overflowError(param1: $_param1_overflowError, param2: $_param2_overflowError, param3: $_param3_overflowError, param4: $_param4_overflowError, param5: $_param5_overflowError, param6: $_param6_overflowError, param7: $_param7_overflowError, param8: $_param8_overflowError, param9: $_param9_overflowError, param10: $_param10_overflowError)';
//       case FailureTag.divisionByZeroError:
//         return 'Failure.divisionByZeroError(param1: $_param1_divisionByZeroError, param2: $_param2_divisionByZeroError, param3: $_param3_divisionByZeroError, param4: $_param4_divisionByZeroError, param5: $_param5_divisionByZeroError, param6: $_param6_divisionByZeroError, param7: $_param7_divisionByZeroError, param8: $_param8_divisionByZeroError, param9: $_param9_divisionByZeroError, param10: $_param10_divisionByZeroError)';
//       case FailureTag.parsingError:
//         return 'Failure.parsingError(input: $_input_parsingError, param2: $_param2_parsingError, param3: $_param3_parsingError, param4: $_param4_parsingError, param5: $_param5_parsingError, param6: $_param6_parsingError, param7: $_param7_parsingError, param8: $_param8_parsingError, param9: $_param9_parsingError, param10: $_param10_parsingError)';
//       case FailureTag.notImplementedError:
//         return 'Failure.notImplementedError(param1: $_param1_notImplementedError, param2: $_param2_notImplementedError, param3: $_param3_notImplementedError, param4: $_param4_notImplementedError, param5: $_param5_notImplementedError, param6: $_param6_notImplementedError, param7: $_param7_notImplementedError, param8: $_param8_notImplementedError, param9: $_param9_notImplementedError, param10: $_param10_notImplementedError)';
//       case FailureTag.unknownError:
//         return 'Failure.unknownError(param1: $_param1_unknownError, param2: $_param2_unknownError, param3: $_param3_unknownError, param4: $_param4_unknownError, param5: $_param5_unknownError, param6: $_param6_unknownError, param7: $_param7_unknownError, param8: $_param8_unknownError, param9: $_param9_unknownError, param10: $_param10_unknownError)';
//     }
//   }

//   final FailureTag _tag;
//   final List<String>? _a_empty;
//   final List<String>? _g_empty;
//   final List<String>? _a_badRequest;
//   final List<String>? _g_badRequest;
//   final String? _message_connectionError;
//   final String? _username_authenticationError;
//   final String? _password_authenticationError;
//   final int? _errorCode_databaseError;
//   final String? _errorMessage_databaseError;
//   final String? _filePath_fileNotFoundError;
//   final String? _resourceName_permissionDeniedError;
//   final List<String>? _permissions_permissionDeniedError;
//   final String? _input_invalidInputError;
//   final String? _param2_invalidInputError;
//   final int? _param3_invalidInputError;
//   final bool? _param4_invalidInputError;
//   final double? _param5_invalidInputError;
//   final List<int>? _param6_invalidInputError;
//   final String? _param7_invalidInputError;
//   final Map<String, dynamic>? _param8_invalidInputError;
//   final DateTime? _param9_invalidInputError;
//   final String? _param10_invalidInputError;
//   final int? _param1_outOfMemoryError;
//   final double? _param2_outOfMemoryError;
//   final String? _param3_outOfMemoryError;
//   final bool? _param4_outOfMemoryError;
//   final List<String>? _param5_outOfMemoryError;
//   final Map<String, dynamic>? _param6_outOfMemoryError;
//   final DateTime? _param7_outOfMemoryError;
//   final int? _param8_outOfMemoryError;
//   final double? _param9_outOfMemoryError;
//   final String? _param10_outOfMemoryError;
//   final String? _config_invalidConfigurationError;
//   final int? _param2_invalidConfigurationError;
//   final double? _param3_invalidConfigurationError;
//   final List<int>? _param4_invalidConfigurationError;
//   final bool? _param5_invalidConfigurationError;
//   final String? _param6_invalidConfigurationError;
//   final Map<String, dynamic>? _param7_invalidConfigurationError;
//   final DateTime? _param8_invalidConfigurationError;
//   final String? _param9_invalidConfigurationError;
//   final int? _param10_invalidConfigurationError;
//   final String? _operation_invalidOperationError;
//   final bool? _param2_invalidOperationError;
//   final double? _param3_invalidOperationError;
//   final String? _param4_invalidOperationError;
//   final int? _param5_invalidOperationError;
//   final List<String>? _param6_invalidOperationError;
//   final DateTime? _param7_invalidOperationError;
//   final String? _param8_invalidOperationError;
//   final Map<String, dynamic>? _param9_invalidOperationError;
//   final int? _param10_invalidOperationError;
//   final double? _param1_overflowError;
//   final int? _param2_overflowError;
//   final String? _param3_overflowError;
//   final bool? _param4_overflowError;
//   final List<int>? _param5_overflowError;
//   final Map<String, dynamic>? _param6_overflowError;
//   final DateTime? _param7_overflowError;
//   final String? _param8_overflowError;
//   final double? _param9_overflowError;
//   final int? _param10_overflowError;
//   final String? _param1_divisionByZeroError;
//   final List<String>? _param2_divisionByZeroError;
//   final int? _param3_divisionByZeroError;
//   final double? _param4_divisionByZeroError;
//   final String? _param5_divisionByZeroError;
//   final DateTime? _param6_divisionByZeroError;
//   final Map<String, dynamic>? _param7_divisionByZeroError;
//   final bool? _param8_divisionByZeroError;
//   final double? _param9_divisionByZeroError;
//   final int? _param10_divisionByZeroError;
//   final String? _input_parsingError;
//   final int? _param2_parsingError;
//   final double? _param3_parsingError;
//   final String? _param4_parsingError;
//   final bool? _param5_parsingError;
//   final List<String>? _param6_parsingError;
//   final DateTime? _param7_parsingError;
//   final String? _param8_parsingError;
//   final Map<String, dynamic>? _param9_parsingError;
//   final int? _param10_parsingError;
//   final int? _param1_notImplementedError;
//   final double? _param2_notImplementedError;
//   final String? _param3_notImplementedError;
//   final bool? _param4_notImplementedError;
//   final List<int>? _param5_notImplementedError;
//   final Map<String, dynamic>? _param6_notImplementedError;
//   final DateTime? _param7_notImplementedError;
//   final String? _param8_notImplementedError;
//   final int? _param9_notImplementedError;
//   final double? _param10_notImplementedError;
//   final String? _param1_unknownError;
//   final int? _param2_unknownError;
//   final double? _param3_unknownError;
//   final bool? _param4_unknownError;
//   final String? _param5_unknownError;
//   final DateTime? _param6_unknownError;
//   final Map<String, dynamic>? _param7_unknownError;
//   final List<String>? _param8_unknownError;
//   final int? _param9_unknownError;
//   final double? _param10_unknownError;
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
// class _FailureUnprocessableEntity extends Failure {
//   const _FailureUnprocessableEntity() : super.unprocessableEntity();
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

// @immutable
// class _FailureAuthenticationError extends Failure {
//   const _FailureAuthenticationError(
//     this.username,
//     this.password,
//   ) : super.authenticationError(
//           username: username,
//           password: password,
//         );
//   final String username;
//   final String password;

//   _FailureAuthenticationError copyWith({
//     String? username,
//     String? password,
//   }) {
//     return _FailureAuthenticationError(
//       username ?? this.username,
//       password ?? this.password,
//     );
//   }
// }

// @immutable
// class _FailureDatabaseError extends Failure {
//   const _FailureDatabaseError(
//     this.errorCode,
//     this.errorMessage,
//   ) : super.databaseError(
//           errorCode: errorCode,
//           errorMessage: errorMessage,
//         );
//   final int errorCode;
//   final String? errorMessage;

//   _FailureDatabaseError copyWith({
//     int? errorCode,
//     String? errorMessage,
//   }) {
//     return _FailureDatabaseError(
//       errorCode ?? this.errorCode,
//       errorMessage ?? this.errorMessage,
//     );
//   }
// }

// @immutable
// class _FailureFileNotFoundError extends Failure {
//   const _FailureFileNotFoundError(
//     this.filePath,
//   ) : super.fileNotFoundError(
//           filePath,
//         );
//   final String filePath;

//   _FailureFileNotFoundError copyWith({
//     String? filePath,
//   }) {
//     return _FailureFileNotFoundError(
//       filePath ?? this.filePath,
//     );
//   }
// }

// @immutable
// class _FailurePermissionDeniedError extends Failure {
//   const _FailurePermissionDeniedError(
//     this.resourceName,
//     this.permissions,
//   ) : super.permissionDeniedError(
//           resourceName: resourceName,
//           permissions: permissions,
//         );
//   final String resourceName;
//   final List<String> permissions;

//   _FailurePermissionDeniedError copyWith({
//     String? resourceName,
//     List<String>? permissions,
//   }) {
//     return _FailurePermissionDeniedError(
//       resourceName ?? this.resourceName,
//       permissions ?? this.permissions,
//     );
//   }
// }

// @immutable
// class _FailureInvalidInputError extends Failure {
//   const _FailureInvalidInputError(
//     this.input,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.invalidInputError(
//           input,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final String input;
//   final String param2;
//   final int param3;
//   final bool param4;
//   final double param5;
//   final List<int> param6;
//   final String? param7;
//   final Map<String, dynamic> param8;
//   final DateTime param9;
//   final String param10;

//   _FailureInvalidInputError copyWith({
//     String? input,
//     String? param2,
//     int? param3,
//     bool? param4,
//     double? param5,
//     List<int>? param6,
//     String? param7,
//     Map<String, dynamic>? param8,
//     DateTime? param9,
//     String? param10,
//   }) {
//     return _FailureInvalidInputError(
//       input ?? this.input,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }

// @immutable
// class _FailureOutOfMemoryError extends Failure {
//   const _FailureOutOfMemoryError(
//     this.param1,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.outOfMemoryError(
//           param1,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final int param1;
//   final double param2;
//   final String param3;
//   final bool param4;
//   final List<String> param5;
//   final Map<String, dynamic> param6;
//   final DateTime param7;
//   final int param8;
//   final double param9;
//   final String param10;

//   _FailureOutOfMemoryError copyWith({
//     int? param1,
//     double? param2,
//     String? param3,
//     bool? param4,
//     List<String>? param5,
//     Map<String, dynamic>? param6,
//     DateTime? param7,
//     int? param8,
//     double? param9,
//     String? param10,
//   }) {
//     return _FailureOutOfMemoryError(
//       param1 ?? this.param1,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }

// @immutable
// class _FailureInvalidConfigurationError extends Failure {
//   const _FailureInvalidConfigurationError(
//     this.config,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.invalidConfigurationError(
//           config,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final String config;
//   final int param2;
//   final double param3;
//   final List<int> param4;
//   final bool param5;
//   final String? param6;
//   final Map<String, dynamic> param7;
//   final DateTime param8;
//   final String param9;
//   final int param10;

//   _FailureInvalidConfigurationError copyWith({
//     String? config,
//     int? param2,
//     double? param3,
//     List<int>? param4,
//     bool? param5,
//     String? param6,
//     Map<String, dynamic>? param7,
//     DateTime? param8,
//     String? param9,
//     int? param10,
//   }) {
//     return _FailureInvalidConfigurationError(
//       config ?? this.config,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }

// @immutable
// class _FailureInvalidOperationError extends Failure {
//   const _FailureInvalidOperationError(
//     this.operation,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.invalidOperationError(
//           operation,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final String operation;
//   final bool param2;
//   final double param3;
//   final String param4;
//   final int param5;
//   final List<String> param6;
//   final DateTime param7;
//   final String param8;
//   final Map<String, dynamic> param9;
//   final int param10;

//   _FailureInvalidOperationError copyWith({
//     String? operation,
//     bool? param2,
//     double? param3,
//     String? param4,
//     int? param5,
//     List<String>? param6,
//     DateTime? param7,
//     String? param8,
//     Map<String, dynamic>? param9,
//     int? param10,
//   }) {
//     return _FailureInvalidOperationError(
//       operation ?? this.operation,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }

// @immutable
// class _FailureOverflowError extends Failure {
//   const _FailureOverflowError(
//     this.param1,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.overflowError(
//           param1,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final double param1;
//   final int param2;
//   final String param3;
//   final bool param4;
//   final List<int> param5;
//   final Map<String, dynamic> param6;
//   final DateTime param7;
//   final String param8;
//   final double param9;
//   final int param10;

//   _FailureOverflowError copyWith({
//     double? param1,
//     int? param2,
//     String? param3,
//     bool? param4,
//     List<int>? param5,
//     Map<String, dynamic>? param6,
//     DateTime? param7,
//     String? param8,
//     double? param9,
//     int? param10,
//   }) {
//     return _FailureOverflowError(
//       param1 ?? this.param1,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }

// @immutable
// class _FailureDivisionByZeroError extends Failure {
//   const _FailureDivisionByZeroError(
//     this.param1,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.divisionByZeroError(
//           param1,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final String param1;
//   final List<String> param2;
//   final int param3;
//   final double param4;
//   final String param5;
//   final DateTime param6;
//   final Map<String, dynamic> param7;
//   final bool param8;
//   final double param9;
//   final int param10;

//   _FailureDivisionByZeroError copyWith({
//     String? param1,
//     List<String>? param2,
//     int? param3,
//     double? param4,
//     String? param5,
//     DateTime? param6,
//     Map<String, dynamic>? param7,
//     bool? param8,
//     double? param9,
//     int? param10,
//   }) {
//     return _FailureDivisionByZeroError(
//       param1 ?? this.param1,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }

// @immutable
// class _FailureParsingError extends Failure {
//   const _FailureParsingError(
//     this.input,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.parsingError(
//           input,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final String input;
//   final int param2;
//   final double param3;
//   final String param4;
//   final bool param5;
//   final List<String> param6;
//   final DateTime param7;
//   final String param8;
//   final Map<String, dynamic> param9;
//   final int param10;

//   _FailureParsingError copyWith({
//     String? input,
//     int? param2,
//     double? param3,
//     String? param4,
//     bool? param5,
//     List<String>? param6,
//     DateTime? param7,
//     String? param8,
//     Map<String, dynamic>? param9,
//     int? param10,
//   }) {
//     return _FailureParsingError(
//       input ?? this.input,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }

// @immutable
// class _FailureNotImplementedError extends Failure {
//   const _FailureNotImplementedError(
//     this.param1,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.notImplementedError(
//           param1,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final int param1;
//   final double param2;
//   final String param3;
//   final bool param4;
//   final List<int> param5;
//   final Map<String, dynamic> param6;
//   final DateTime param7;
//   final String param8;
//   final int param9;
//   final double param10;

//   _FailureNotImplementedError copyWith({
//     int? param1,
//     double? param2,
//     String? param3,
//     bool? param4,
//     List<int>? param5,
//     Map<String, dynamic>? param6,
//     DateTime? param7,
//     String? param8,
//     int? param9,
//     double? param10,
//   }) {
//     return _FailureNotImplementedError(
//       param1 ?? this.param1,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }

// @immutable
// class _FailureUnknownError extends Failure {
//   const _FailureUnknownError(
//     this.param1,
//     this.param2,
//     this.param3,
//     this.param4,
//     this.param5,
//     this.param6,
//     this.param7,
//     this.param8,
//     this.param9,
//     this.param10,
//   ) : super.unknownError(
//           param1,
//           param2,
//           param3,
//           param4,
//           param5,
//           param6,
//           param7,
//           param8,
//           param9,
//           param10,
//         );
//   final String param1;
//   final int param2;
//   final double param3;
//   final bool param4;
//   final String param5;
//   final DateTime param6;
//   final Map<String, dynamic> param7;
//   final List<String> param8;
//   final int param9;
//   final double param10;

//   _FailureUnknownError copyWith({
//     String? param1,
//     int? param2,
//     double? param3,
//     bool? param4,
//     String? param5,
//     DateTime? param6,
//     Map<String, dynamic>? param7,
//     List<String>? param8,
//     int? param9,
//     double? param10,
//   }) {
//     return _FailureUnknownError(
//       param1 ?? this.param1,
//       param2 ?? this.param2,
//       param3 ?? this.param3,
//       param4 ?? this.param4,
//       param5 ?? this.param5,
//       param6 ?? this.param6,
//       param7 ?? this.param7,
//       param8 ?? this.param8,
//       param9 ?? this.param9,
//       param10 ?? this.param10,
//     );
//   }
// }
 */
