  // ignore_for_file: constant_identifier_names, non_constant_identifier_names, lines_longer_than_80_chars
  /*
  
  enum EnumUsedFeatures {
  eqitable('eqitable'),
  fromMap('frommap'),
  toMap('tomap'),
  toString_('tostring'),
  fromJson('fromjson'),
  toJson('tojson'),
  copyWith('copywith'),
  type('type'),
  init('init'),
  hashCode_('hashcode'),
  hash_('hash'),
  equals_('equals'),
  none('none');
}
 
  */
  
  //  ******************************
  // GENERATED CODE BELOW - DO NOT MODIFY
  //  ******************************

enum EnumUsedFeatures with Comparable<EnumUsedFeatures> { 
  eqitable('eqitable'),
  fromMap('frommap'),
  toMap('tomap'),
  toString_('tostring'),
  fromJson('fromjson'),
  toJson('tojson'),
  copyWith('copywith'),
  type('type'),
  init('init'),
  hashCode_('hashcode'),
  hash_('hash'),
  equals_('equals'),
  none('none');

  const EnumUsedFeatures(this.value);

  final String value;

  static EnumUsedFeatures fromValue(
    String? value, {
    EnumUsedFeatures? fallback,
  }) {
    switch (value) {
      case 'eqitable':
        return eqitable;
      case 'frommap':
        return fromMap;
      case 'tomap':
        return toMap;
      case 'tostring':
        return toString_;
      case 'fromjson':
        return fromJson;
      case 'tojson':
        return toJson;
      case 'copywith':
        return copyWith;
      case 'type':
        return type;
      case 'init':
        return init;
      case 'hashcode':
        return hashCode_;
      case 'hash':
        return hash_;
      case 'equals':
        return equals_;
      case 'none':
        return none;

      default:
        return fallback ?? (throw ArgumentError.value(value));
    }
  }

  /// Pattern matching
  T map<T>({
    required T Function() eqitable,
    required T Function() fromMap,
    required T Function() toMap,
    required T Function() toString_,
    required T Function() fromJson,
    required T Function() toJson,
    required T Function() copyWith,
    required T Function() type,
    required T Function() init,
    required T Function() hashCode_,
    required T Function() hash_,
    required T Function() equals_,
    required T Function() none,

  }) {
    switch (this) {
      case EnumUsedFeatures.eqitable:
        return eqitable();     
      case EnumUsedFeatures.fromMap:
        return fromMap();     
      case EnumUsedFeatures.toMap:
        return toMap();     
      case EnumUsedFeatures.toString_:
        return toString_();     
      case EnumUsedFeatures.fromJson:
        return fromJson();     
      case EnumUsedFeatures.toJson:
        return toJson();     
      case EnumUsedFeatures.copyWith:
        return copyWith();     
      case EnumUsedFeatures.type:
        return type();     
      case EnumUsedFeatures.init:
        return init();     
      case EnumUsedFeatures.hashCode_:
        return hashCode_();     
      case EnumUsedFeatures.hash_:
        return hash_();     
      case EnumUsedFeatures.equals_:
        return equals_();     
      case EnumUsedFeatures.none:
        return none();     

    }
  }
  
  /// Pattern matching
  T maybeMap<T>({
    required T Function() orElse,
    T Function()? eqitable,
    T Function()? fromMap,
    T Function()? toMap,
    T Function()? toString_,
    T Function()? fromJson,
    T Function()? toJson,
    T Function()? copyWith,
    T Function()? type,
    T Function()? init,
    T Function()? hashCode_,
    T Function()? hash_,
    T Function()? equals_,
    T Function()? none,

  }) =>
      map<T>(
      eqitable: eqitable ?? orElse,     
      fromMap: fromMap ?? orElse,     
      toMap: toMap ?? orElse,     
      toString_: toString_ ?? orElse,     
      fromJson: fromJson ?? orElse,     
      toJson: toJson ?? orElse,     
      copyWith: copyWith ?? orElse,     
      type: type ?? orElse,     
      init: init ?? orElse,     
      hashCode_: hashCode_ ?? orElse,     
      hash_: hash_ ?? orElse,     
      equals_: equals_ ?? orElse,     
      none: none ?? orElse,     

      );

  /// Pattern matching
  T? maybeMapOrNull<T>({
    T Function()? eqitable,
    T Function()? fromMap,
    T Function()? toMap,
    T Function()? toString_,
    T Function()? fromJson,
    T Function()? toJson,
    T Function()? copyWith,
    T Function()? type,
    T Function()? init,
    T Function()? hashCode_,
    T Function()? hash_,
    T Function()? equals_,
    T Function()? none,

  }) =>
      maybeMap<T?>(
        orElse: () => null,
        eqitable: eqitable,  
        fromMap: fromMap,  
        toMap: toMap,  
        toString_: toString_,  
        fromJson: fromJson,  
        toJson: toJson,  
        copyWith: copyWith,  
        type: type,  
        init: init,  
        hashCode_: hashCode_,  
        hash_: hash_,  
        equals_: equals_,  
        none: none,  
        
      );

  @override
  int compareTo(EnumUsedFeatures other) => index.compareTo(other.index);

  @override
  String toString() => value;
   }
