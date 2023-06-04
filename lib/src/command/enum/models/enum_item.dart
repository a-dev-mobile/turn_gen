// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions

// turngen
/* no: hash tojson fromjson*/
class EnumItemModel {
  /* init: '' */
  final String nameEnum;
  /* init: '' */
  final String valueEnum;
  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const EnumItemModel({
    this.nameEnum = '',
    this.valueEnum = '',
  });

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
    return 'EnumItemModel(nameEnum: $nameEnum, valueEnum: $valueEnum, )';
  }
}
