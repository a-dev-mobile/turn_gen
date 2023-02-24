//          --TURN_GEN--
//  *************************************
//           GENERATED CODE
//
//
//
// *************************************

void main(List<String> args) {
  final union2 = Union2.load(a: ['asd']);
  final union3 = Union2(null,'asd');
  final union4 = Union2.data();

  print(union2.toString());
  print(union3.toString());
  print(union4.toString());
}
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: non_constant_identifier_names
//          --TURN_GEN--
//  *************************************
//           GENERATED CODE 
//  *************************************
  
class Union2 {
  const Union2(String? message, String b):
        _tag = _Union2Tag.default_,
        _message_default_ = message,
        _b_default_ = b,
        _a_load = null;
  const Union2.data():
        _tag = _Union2Tag.data,
        _message_default_ = null,
        _b_default_ = null,
        _a_load = null;
  const Union2.load({required List<String> a}):
        _tag = _Union2Tag.load,
        _message_default_ = null,
        _b_default_ = null,
        _a_load = a;


  @override
  String toString() {
    switch (_tag) {

      case _Union2Tag.default_:
        return 'Union2(message: $_message_default_, b: $_b_default_)';
      case _Union2Tag.data:
        return 'Union2.data()';
      case _Union2Tag.load:
        return 'Union2.load(a: $_a_load)';  
  }
}




  final _Union2Tag _tag;
  final String? _message_default_;
  final String? _b_default_;
  final List<String>? _a_load;


}

enum _Union2Tag {
  default_,
  data,
  load,



}
 
