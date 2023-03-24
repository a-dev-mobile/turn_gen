// ignore_for_file: avoid_bool_literals_in_conditional_expressions
// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/src.dart';

/* only: copywith */
class AssetItem {  
  /* 
  type: enum
  init: TypeNameFile.init
   */
  final TypeNameFile type;
/*  init: '' */
  final String fileFullPath;
  /*  init: '' */
  final String fileFromAssetsPath;
  /*  init: const [] */
  final List<String> foldersName;
  /*  init: '' */
  final String fileOnlyName;
  /*  init: '' */
  final String fileOnlyNameFormat;
  /*  init: '' */
  final String fileOnlyExtension;
  /*  init: '' */
  final String fileNameWithExtension;
  /*  init: '' */
  final String size;
  /*  init: '' */
  final String dateAccessed;
  /*  init: '' */
  final String dateModified;
  /*  init: '' */
  final String dateChanged;
  // end
   
//          --TURN_GEN--
//           v0.6.7 (data)
//  *************************************
//         GENERATED CODE 
//  *************************************
  
  const AssetItem({
    this.type = TypeNameFile.init,
    this.fileFullPath = '',
    this.fileFromAssetsPath = '',
    this.foldersName = const [],
    this.fileOnlyName = '',
    this.fileOnlyNameFormat = '',
    this.fileOnlyExtension = '',
    this.fileNameWithExtension = '',
    this.size = '',
    this.dateAccessed = '',
    this.dateModified = '',
    this.dateChanged = '',
  });




  AssetItem copyWith({
    TypeNameFile? type,
    String? fileFullPath,
    String? fileFromAssetsPath,
    List<String>? foldersName,
    String? fileOnlyName,
    String? fileOnlyNameFormat,
    String? fileOnlyExtension,
    String? fileNameWithExtension,
    String? size,
    String? dateAccessed,
    String? dateModified,
    String? dateChanged,
  }) {
    return AssetItem(
      type: type ?? this.type, 
      fileFullPath: fileFullPath ?? this.fileFullPath, 
      fileFromAssetsPath: fileFromAssetsPath ?? this.fileFromAssetsPath, 
      foldersName: foldersName ?? this.foldersName, 
      fileOnlyName: fileOnlyName ?? this.fileOnlyName, 
      fileOnlyNameFormat: fileOnlyNameFormat ?? this.fileOnlyNameFormat, 
      fileOnlyExtension: fileOnlyExtension ?? this.fileOnlyExtension, 
      fileNameWithExtension: fileNameWithExtension ?? this.fileNameWithExtension, 
      size: size ?? this.size, 
      dateAccessed: dateAccessed ?? this.dateAccessed, 
      dateModified: dateModified ?? this.dateModified, 
      dateChanged: dateChanged ?? this.dateChanged, 
    );
  }
  
  



}
