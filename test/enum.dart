// // turnGen
// // ignore_for_file: constant_identifier_names, non_constant_identifier_names

// import 'dart:ui';

// enum EnumScheduleStatus implements Comparable<EnumScheduleStatus> {
//   active('status.schedule.active', 'к оплате', Color(0xFFCACACA)),
//   done('status.schedule.done', 'к оплате', Color(0xFFCACACA)),
//   overdue('status.schedule.overdue', 'просрочен', Color(0xFFBF1212)),
//   payed('status.schedule.payed', 'оплачен', Color(0xFF12BF6C)),
//   error('error', 'ошибка', Color(0xFFBF1212));

//   const EnumScheduleStatus(
//     this.value,
//     this.valueRu,
//     this.color,
//   );

//   final String value;
//   final String valueRu;
//   final Color color;

// // end

// //          --TURN_GEN--
// //             (enum)
// //  *************************************
// //         GENERATED CODE
// //  *************************************

//   static EnumScheduleStatus fromValue(
//     String? value, {
//     EnumScheduleStatus? fallback,
//   }) {
//     switch (value) {
//       case 'status.schedule.active':
//         return active;
//       case 'status.schedule.done':
//         return done;
//       case 'status.schedule.overdue':
//         return overdue;
//       case 'status.schedule.payed':
//         return payed;
//       case 'error':
//         return error;
//       default:
//         return fallback ??
//             (throw ArgumentError.value(
//               value,
//               '',
//               'Value not found in EnumScheduleStatus',
//             ));
//     }
//   }

//   T map<T>({
//     required T Function() active,
//     required T Function() done,
//     required T Function() overdue,
//     required T Function() payed,
//     required T Function() error,
//   }) {
//     switch (this) {
//       case EnumScheduleStatus.active:
//         return active();
//       case EnumScheduleStatus.done:
//         return done();
//       case EnumScheduleStatus.overdue:
//         return overdue();
//       case EnumScheduleStatus.payed:
//         return payed();
//       case EnumScheduleStatus.error:
//         return error();
//     }
//   }

//   T mapValue<T>({
//     required T active,
//     required T done,
//     required T overdue,
//     required T payed,
//     required T error,
//   }) {
//     switch (this) {
//       case EnumScheduleStatus.active:
//         return active;
//       case EnumScheduleStatus.done:
//         return done;
//       case EnumScheduleStatus.overdue:
//         return overdue;
//       case EnumScheduleStatus.payed:
//         return payed;
//       case EnumScheduleStatus.error:
//         return error;
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function()? active,
//     T Function()? done,
//     T Function()? overdue,
//     T Function()? payed,
//     T Function()? error,
//   }) =>
//       map<T>(
//         active: active ?? orElse,
//         done: done ?? orElse,
//         overdue: overdue ?? orElse,
//         payed: payed ?? orElse,
//         error: error ?? orElse,
//       );

//   T maybeMapValue<T>({
//     required T orElse,
//     T? active,
//     T? done,
//     T? overdue,
//     T? payed,
//     T? error,
//   }) =>
//       mapValue<T>(
//         active: active ?? orElse,
//         done: done ?? orElse,
//         overdue: overdue ?? orElse,
//         payed: payed ?? orElse,
//         error: error ?? orElse,
//       );

//   T? maybeMapOrNull<T>({
//     T Function()? active,
//     T Function()? done,
//     T Function()? overdue,
//     T Function()? payed,
//     T Function()? error,
//   }) =>
//       maybeMap<T?>(
//         orElse: () => null,
//         active: active,
//         done: done,
//         overdue: overdue,
//         payed: payed,
//         error: error,
//       );

//   T? maybeMapOrNullValue<T>({
//     T? active,
//     T? done,
//     T? overdue,
//     T? payed,
//     T? error,
//   }) =>
//       maybeMapValue<T?>(
//         orElse: null,
//         active: active,
//         done: done,
//         overdue: overdue,
//         payed: payed,
//         error: error,
//       );

//   static List<String> getValues() =>
//       EnumScheduleStatus.values.map((e) => e.value).toList();

//   @override
//   int compareTo(EnumScheduleStatus other) => index.compareTo(other.index);
// }

// extension $EnumScheduleStatus on EnumScheduleStatus {
//   bool get active => this == EnumScheduleStatus.active;
//   bool get done => this == EnumScheduleStatus.done;
//   bool get overdue => this == EnumScheduleStatus.overdue;
//   bool get payed => this == EnumScheduleStatus.payed;
//   bool get error => this == EnumScheduleStatus.error;
// }
