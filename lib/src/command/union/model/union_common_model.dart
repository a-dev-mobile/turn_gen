// ignore_for_file: sort_constructors_first, avoid_bool_literals_in_conditional_expressions

/* no: hash tojson fromjson*/
import 'package:collection/collection.dart';
import 'package:turn_gen/src/src.dart';

/* no: frommap tomap */
class UnionCommonModel {
  /* init: '' */
  final String nameClass;
  /* init: '' */
  final String classHeader;
  /* init: '' */
  final String comments;
  /* init: '' */
  final String contentToEnd;
  /* init: const [] */
  final List<String> listParams;
  /* init: false */
  final bool isHaveOnlyList;
  /* init: const []*/
  final List<UnionItemModel> listUnion;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const UnionCommonModel({
    this.nameClass = '',
    this.classHeader = '',
    this.comments = '',
    this.contentToEnd = '',
    this.listParams = const [],
    this.isHaveOnlyList = false,
    this.listUnion = const [],
  });

  UnionCommonModel copyWith({
    String? nameClass,            
    String? classHeader,
    String? comments,
    String? contentToEnd,
    List<String>? listParams,
    bool? isHaveOnlyList,
    List<UnionItemModel>? listUnion,
  }) {
    return UnionCommonModel(
      nameClass: nameClass ?? this.nameClass,
      classHeader: classHeader ?? this.classHeader,
      comments: comments ?? this.comments,
      contentToEnd: contentToEnd ?? this.contentToEnd,
      listParams: listParams ?? this.listParams,
      isHaveOnlyList: isHaveOnlyList ?? this.isHaveOnlyList,
      listUnion: listUnion ?? this.listUnion,
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnionCommonModel &&
            (identical(
                  other.nameClass,
                  nameClass,
                ) ||
                other.nameClass == nameClass) &&
            (identical(
                  other.classHeader,
                  classHeader,
                ) ||
                other.classHeader == classHeader) &&
            (identical(
                  other.comments,
                  comments,
                ) ||
                other.comments == comments) &&
            (identical(
                  other.contentToEnd,
                  contentToEnd,
                ) ||
                other.contentToEnd == contentToEnd) &&
            const DeepCollectionEquality().equals(
              other.listParams,
              listParams,
            ) &&
            (identical(
                  other.isHaveOnlyList,
                  isHaveOnlyList,
                ) ||
                other.isHaveOnlyList == isHaveOnlyList) &&
            const DeepCollectionEquality().equals(
              other.listUnion,
              listUnion,
            ));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        nameClass,
        classHeader,
        comments,
        contentToEnd,
        const DeepCollectionEquality().hash(
          listParams,
        ),
        isHaveOnlyList,
        const DeepCollectionEquality().hash(
          listUnion,
        ),
      ]);

  @override
  String toString() {
    return 'UnionCommonModel(nameClass: $nameClass, classHeader: $classHeader, comments: $comments, contentToEnd: $contentToEnd, listParams: $listParams, isHaveOnlyList: $isHaveOnlyList, listUnion: $listUnion, )';
  }
}
