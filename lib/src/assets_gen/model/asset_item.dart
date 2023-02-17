// ignore_for_file: sort_constructors_first

import 'package:turn_gen/src/src.dart';

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

  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

  const AssetItem({
    this.type = TypeNameFile.init,
    this.fileFullPath = '',
    this.fileFromAssetsPath = '',
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
      fileOnlyName: fileOnlyName ?? this.fileOnlyName,
      fileOnlyNameFormat: fileOnlyNameFormat ?? this.fileOnlyNameFormat,
      fileOnlyExtension: fileOnlyExtension ?? this.fileOnlyExtension,
      fileNameWithExtension:
          fileNameWithExtension ?? this.fileNameWithExtension,
      size: size ?? this.size,
      dateAccessed: dateAccessed ?? this.dateAccessed,
      dateModified: dateModified ?? this.dateModified,
      dateChanged: dateChanged ?? this.dateChanged,
    );
  }
}
