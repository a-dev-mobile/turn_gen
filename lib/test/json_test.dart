import 'package:turn_gen/test/union.dart';

void main() {
  const a = ApiResponse.success('content', 'exception');
  const a4 = ApiResponse.failed();
  const a2 = ApiResponse.success(
    'content',
    'exception',
  );
  const a3 = ApiResponse.load(text: 'content');
  print(a2 == a);
  final aJson = a.toMap();
  final a2Json = a2.toMap();
  final a3Json = a3.toMap();
  final a4Json = a4.toMap();

  final b = ApiResponse.fromMap(a4Json);
  final b2 = ApiResponse.fromMap(a2Json);
  final b3 = ApiResponse.fromMap(a3Json);
  final b4 = ApiResponse.fromMap(a4Json);

  // final b5 = b4.copyWith(content: '11111');

  b.maybeMap(
    orElse: () {},
    failed: (v) => print(v),
  );

  print(a == b);
  print(a2 == b2);
  print(a3 == b3);
  print(a4 == b4);
}
