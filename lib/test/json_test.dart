// import 'package:turn_gen/test/union.dart';

// void main() {
//   const a = ApiResponse.success('content', 'exception');
//   const a4 = ApiResponse.failed();
//   const a2 = ApiResponse.success(
//     'content',
//     'exception',
//   );

//   final a3 = ApiResponse.load(text: 'content');
//   print(a2 == a);
//   final aJson = a.toMap();
//   final a2Json = a2.toMap();
//   final a3Json = a3.toMap();
//   final a4Json = a4.toMap();

//   final b = ApiResponse.fromMap(aJson);
//   final b2 = ApiResponse.fromMap(a2Json);
//   final b3 = ApiResponse.fromMap(a3Json);
//   final b4 = ApiResponse.fromMap(a4Json);

//   // final b5 = b4.copyWith(content: '11111');

//   b.maybeMap(
//     orElse: () {},
//     success: (v) => print(v.copyWith(exception: '555', name: '2222')),
//   );
//   a4.maybeMapOrNull(
//     failed: (v) => print(v),
//   );

//   final c = b3.mapOrNull(
//     load: (v) => v,
//   );
//     final d = b3.mapOrNull(
//     load: (v) => v,
//   );

//   print(c == d);
//   print(a == b);
//   print(a2 == b2);
//   print(a3 ==
//       b3.mapOrNull(
//         load: (v) => v,
//       ));
//   print(a4 == b4);
// }
