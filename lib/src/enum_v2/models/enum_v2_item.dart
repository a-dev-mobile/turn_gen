// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions


/* no: hash tojson fromjson*/
class EnumV2ItemModel {   
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
  
  const EnumV2ItemModel({
    this.nameEnum = '',
    this.valueEnum = '',
  });
  /*
   factory EnumV2ItemModel.init() => EnumV2ItemModel(
      ); 
  */


  EnumV2ItemModel copyWith({
    String? nameEnum,
    String? valueEnum,
  }) {
    return EnumV2ItemModel(
      nameEnum: nameEnum ?? this.nameEnum, 
      valueEnum: valueEnum ?? this.valueEnum, 
    );
  }

  
  

      @override
  String toString() {
    return 'EnumV2ItemModel(nameEnum: $nameEnum, valueEnum: $valueEnum, )';
    }

}
