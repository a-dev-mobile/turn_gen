// // ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions
// import 'dart:convert';

// import 'package:meta/meta.dart';

// @immutable
// class DocumentUser {
//   /* init: -1 */
//   final num size;
//   /* init: '' */
//   final String type;
//   /* init: '' */
//   final String comment;
//   /* init: '' */
//   final String createdAt;
//   /* init: '' */
//   final String url;
//   /* init: '' */
//   final String name;
//   /* init: false */
//   final bool isValid;
//   // end

// //          --TURN_GEN--
// //             (data)
// //  *************************************
// //         GENERATED CODE
// //  *************************************
//   const DocumentUser({
//     this.size = -1,
//     this.type = '',
//     this.comment = '',
//     this.createdAt = '',
//     this.url = '',
//     this.name = '',
//     this.isValid = false,
//   });

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'size': size.toMap(),
//       'type': type,
//       'comment': comment,
//       'createdAt': createdAt,
//       'url': url,
//       'name': name,
//       'isValid': isValid,
//     };
//   }

//   factory DocumentUser.fromMap(Map<dynamic, dynamic>? map) {
//     if (map == null) return const DocumentUser();

//     return DocumentUser(
//       size: map['size'] != null
//           ? num.fromMap(
//               Map<String, dynamic>.from(
//                 map['size'] as Map,
//               ),
//             )
//           : -1,
//       type: map['type'] as String? ?? '',
//       comment: map['comment'] as String? ?? '',
//       createdAt: map['createdAt'] as String? ?? '',
//       url: map['url'] as String? ?? '',
//       name: map['name'] as String? ?? '',
//       isValid: map['isValid'] as bool? ?? false,
//     );
//   }

//   DocumentUser copyWith({
//     num? size,
//     String? type,
//     String? comment,
//     String? createdAt,
//     String? url,
//     String? name,
//     bool? isValid,
//   }) {
//     return DocumentUser(
//       size: size ?? this.size,
//       type: type ?? this.type,
//       comment: comment ?? this.comment,
//       createdAt: createdAt ?? this.createdAt,
//       url: url ?? this.url,
//       name: name ?? this.name,
//       isValid: isValid ?? this.isValid,
//     );
//   }

//   String toJson() => json.encode(toMap());
//   factory DocumentUser.fromJson(String source) => DocumentUser.fromMap(
//         json.decode(source) as Map<String, dynamic>,
//       );

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is DocumentUser &&
//             (identical(
//                   other.size,
//                   size,
//                 ) ||
//                 other.size == size) &&
//             (identical(
//                   other.type,
//                   type,
//                 ) ||
//                 other.type == type) &&
//             (identical(
//                   other.comment,
//                   comment,
//                 ) ||
//                 other.comment == comment) &&
//             (identical(
//                   other.createdAt,
//                   createdAt,
//                 ) ||
//                 other.createdAt == createdAt) &&
//             (identical(
//                   other.url,
//                   url,
//                 ) ||
//                 other.url == url) &&
//             (identical(
//                   other.name,
//                   name,
//                 ) ||
//                 other.name == name) &&
//             (identical(
//                   other.isValid,
//                   isValid,
//                 ) ||
//                 other.isValid == isValid));
//   }

//   @override
//   int get hashCode => Object.hashAll([
//         runtimeType,
//         size,
//         type,
//         comment,
//         createdAt,
//         url,
//         name,
//         isValid,
//       ]);

//   @override
//   String toString() {
//     return 'DocumentUser(size: $size, type: $type, comment: $comment, createdAt: $createdAt, url: $url, name: $name, isValid: $isValid, )';
//   }
// }
