// // ignore_for_file: avoid_bool_literals_in_conditional_expressions
// // ignore_for_file: sort_constructors_first
// import 'dart:convert';

// class UnionTestYes {
// /* init: false */
//   final bool isLoad2;

//   // end

// //          --TURN_GEN--
// //             (data)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
//   const UnionTestYes({
//     this.isLoad2 = false,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'isLoad2': isLoad2,
//     };
//   }

//   factory UnionTestYes.fromMap(Map<dynamic, dynamic>? map) {
//     if (map == null) return const UnionTestYes();

//     return UnionTestYes(
//       isLoad2: map['isLoad2'] as bool? ?? false,
//     );
//   }

//   UnionTestYes copyWith({
//     bool? isLoad2,
//   }) {
//     return UnionTestYes(
//       isLoad2: isLoad2 ?? this.isLoad2,
//     );
//   }

//   String toJson() => json.encode(toMap());
//   factory UnionTestYes.fromJson(String source) => UnionTestYes.fromMap(
//         json.decode(source) as Map<String, dynamic>,
//       );

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is UnionTestYes &&
//             (identical(
//                   other.isLoad2,
//                   isLoad2,
//                 ) ||
//                 other.isLoad2 == isLoad2));
//   }

//   @override
//   int get hashCode => Object.hashAll([
//         runtimeType,
//         isLoad2,
//       ]);

//   @override
//   String toString() {
//     return 'UnionTestYes(isLoad2: $isLoad2, )';
//   }
// }
