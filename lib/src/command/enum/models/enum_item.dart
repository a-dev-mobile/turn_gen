// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions

/* no: hash tojson fromjson*/
class EnumItemModel {
  /* init: '' */
  final String nameEnum;
  /* init: '' */
  final String valueEnum;
  // end

//          --TURN_GEN--
//             v0.3.2
//  *************************************
//           GENERATED CODE
//  *************************************

  const EnumItemModel({
    this.nameEnum = '',
    this.valueEnum = '',
  });
  /*
   factory EnumV2ItemModel.init() => EnumV2ItemModel(
      ); 
  */

  EnumItemModel copyWith({
    String? nameEnum,
    String? valueEnum,
  }) {
    return EnumItemModel(
      nameEnum: nameEnum ?? this.nameEnum,
      valueEnum: valueEnum ?? this.valueEnum,
    );
  }

  @override
  String toString() {
    return 'EnumV2ItemModel(nameEnum: $nameEnum, valueEnum: $valueEnum, )';
  }
}
