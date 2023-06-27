// // turnGen
// import 'package:turn_gen/src/src.dart';

// enum EnumLang implements Comparable<EnumLang> {
//   ru(
//     'test',
//     Color(0x00FFFFFF),
//     Color(0x00FFFFFF),
//     UnionCommonModel(),
//   ),
//   en(
//     'test222',
//     Color(0x00FFFFFF),
//     Color(0x00FFFFFF),
//     UnionCommonModel(),
//   );

//   const EnumLang(this.value, this.c1, this.c2, this.c3);
//   final String value;
//   final Color c1;
//   final Color c2;
//   final UnionCommonModel c3;

// // end

// //          --TURN_GEN--
// //             (enum)
// //  *************************************
// //         GENERATED CODE
// //  *************************************

//   static EnumLang fromValue(
//     String? value, {
//     EnumLang? fallback,
//   }) {
//     switch (value) {
//       case 'test':
//         return ru;
//       case 'test222':
//         return en;
//       default:
//         return fallback ??
//             (throw ArgumentError.value(
//               value,
//               '',
//               'Value not found in EnumLang',
//             ));
//     }
//   }

//   T map<T>({
//     required T Function() ru,
//     required T Function() en,
//   }) {
//     switch (this) {
//       case EnumLang.ru:
//         return ru();
//       case EnumLang.en:
//         return en();
//     }
//   }

//   T mapValue<T>({
//     required T ru,
//     required T en,
//   }) {
//     switch (this) {
//       case EnumLang.ru:
//         return ru;
//       case EnumLang.en:
//         return en;
//     }
//   }

//   T maybeMap<T>({
//     required T Function() orElse,
//     T Function()? ru,
//     T Function()? en,
//   }) =>
//       map<T>(
//         ru: ru ?? orElse,
//         en: en ?? orElse,
//       );

//   T maybeMapValue<T>({
//     required T orElse,
//     T? ru,
//     T? en,
//   }) =>
//       mapValue<T>(
//         ru: ru ?? orElse,
//         en: en ?? orElse,
//       );

//   T? maybeMapOrNull<T>({
//     T Function()? ru,
//     T Function()? en,
//   }) =>
//       maybeMap<T?>(
//         orElse: () => null,
//         ru: ru,
//         en: en,
//       );

//   T? maybeMapOrNullValue<T>({
//     T? ru,
//     T? en,
//   }) =>
//       maybeMapValue<T?>(
//         orElse: null,
//         ru: ru,
//         en: en,
//       );

//   static List<String> getValues() =>
//       EnumLang.values.map((e) => e.value).toList();

//   @override
//   int compareTo(EnumLang other) => index.compareTo(other.index);
// }

// extension $EnumLang on EnumLang {
//   bool get ru => this == EnumLang.ru;
//   bool get en => this == EnumLang.en;
// }
