// turnGen
// ignore_for_file: constant_identifier_names, non_constant_identifier_names

enum EnumWeightStatus implements Comparable<EnumWeightStatus> {
  severe_thinness(0),
  moderate_thinness(16),
  mild_thinness(17),
  normal(18.5),
  overweight(25),
  obesity_1(30),
  obesity_2(35),
  obesity_3(40),
  obesity_4(45),
  none(-1);

  const EnumWeightStatus(this.maxValue);
  final double maxValue;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumWeightStatus fromValue(
    double? value, {
    EnumWeightStatus? fallback,
  }) {
    switch (value?.toString()) {
      case '0':
        return severe_thinness;
      case '16':
        return moderate_thinness;
      case '17':
        return mild_thinness;
      case '18.5':
        return normal;
      case '25':
        return overweight;
      case '30':
        return obesity_1;
      case '35':
        return obesity_2;
      case '40':
        return obesity_3;
      case '45':
        return obesity_4;
      case '-1':
        return none;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EnumWeightStatus',
            ));
    }
  }

  T map<T>({
    required T Function() severe_thinness,
    required T Function() moderate_thinness,
    required T Function() mild_thinness,
    required T Function() normal,
    required T Function() overweight,
    required T Function() obesity_1,
    required T Function() obesity_2,
    required T Function() obesity_3,
    required T Function() obesity_4,
    required T Function() none,
  }) {
    switch (this) {
      case EnumWeightStatus.severe_thinness:
        return severe_thinness();
      case EnumWeightStatus.moderate_thinness:
        return moderate_thinness();
      case EnumWeightStatus.mild_thinness:
        return mild_thinness();
      case EnumWeightStatus.normal:
        return normal();
      case EnumWeightStatus.overweight:
        return overweight();
      case EnumWeightStatus.obesity_1:
        return obesity_1();
      case EnumWeightStatus.obesity_2:
        return obesity_2();
      case EnumWeightStatus.obesity_3:
        return obesity_3();
      case EnumWeightStatus.obesity_4:
        return obesity_4();
      case EnumWeightStatus.none:
        return none();
    }
  }

  T mapValue<T>({
    required T severe_thinness,
    required T moderate_thinness,
    required T mild_thinness,
    required T normal,
    required T overweight,
    required T obesity_1,
    required T obesity_2,
    required T obesity_3,
    required T obesity_4,
    required T none,
  }) {
    switch (this) {
      case EnumWeightStatus.severe_thinness:
        return severe_thinness;
      case EnumWeightStatus.moderate_thinness:
        return moderate_thinness;
      case EnumWeightStatus.mild_thinness:
        return mild_thinness;
      case EnumWeightStatus.normal:
        return normal;
      case EnumWeightStatus.overweight:
        return overweight;
      case EnumWeightStatus.obesity_1:
        return obesity_1;
      case EnumWeightStatus.obesity_2:
        return obesity_2;
      case EnumWeightStatus.obesity_3:
        return obesity_3;
      case EnumWeightStatus.obesity_4:
        return obesity_4;
      case EnumWeightStatus.none:
        return none;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? severe_thinness,
    T Function()? moderate_thinness,
    T Function()? mild_thinness,
    T Function()? normal,
    T Function()? overweight,
    T Function()? obesity_1,
    T Function()? obesity_2,
    T Function()? obesity_3,
    T Function()? obesity_4,
    T Function()? none,
  }) =>
      map<T>(
        severe_thinness: severe_thinness ?? orElse,
        moderate_thinness: moderate_thinness ?? orElse,
        mild_thinness: mild_thinness ?? orElse,
        normal: normal ?? orElse,
        overweight: overweight ?? orElse,
        obesity_1: obesity_1 ?? orElse,
        obesity_2: obesity_2 ?? orElse,
        obesity_3: obesity_3 ?? orElse,
        obesity_4: obesity_4 ?? orElse,
        none: none ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? severe_thinness,
    T? moderate_thinness,
    T? mild_thinness,
    T? normal,
    T? overweight,
    T? obesity_1,
    T? obesity_2,
    T? obesity_3,
    T? obesity_4,
    T? none,
  }) =>
      mapValue<T>(
        severe_thinness: severe_thinness ?? orElse,
        moderate_thinness: moderate_thinness ?? orElse,
        mild_thinness: mild_thinness ?? orElse,
        normal: normal ?? orElse,
        overweight: overweight ?? orElse,
        obesity_1: obesity_1 ?? orElse,
        obesity_2: obesity_2 ?? orElse,
        obesity_3: obesity_3 ?? orElse,
        obesity_4: obesity_4 ?? orElse,
        none: none ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? severe_thinness,
    T Function()? moderate_thinness,
    T Function()? mild_thinness,
    T Function()? normal,
    T Function()? overweight,
    T Function()? obesity_1,
    T Function()? obesity_2,
    T Function()? obesity_3,
    T Function()? obesity_4,
    T Function()? none,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        severe_thinness: severe_thinness,
        moderate_thinness: moderate_thinness,
        mild_thinness: mild_thinness,
        normal: normal,
        overweight: overweight,
        obesity_1: obesity_1,
        obesity_2: obesity_2,
        obesity_3: obesity_3,
        obesity_4: obesity_4,
        none: none,
      );

  T? maybeMapOrNullValue<T>({
    T? severe_thinness,
    T? moderate_thinness,
    T? mild_thinness,
    T? normal,
    T? overweight,
    T? obesity_1,
    T? obesity_2,
    T? obesity_3,
    T? obesity_4,
    T? none,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        severe_thinness: severe_thinness,
        moderate_thinness: moderate_thinness,
        mild_thinness: mild_thinness,
        normal: normal,
        overweight: overweight,
        obesity_1: obesity_1,
        obesity_2: obesity_2,
        obesity_3: obesity_3,
        obesity_4: obesity_4,
        none: none,
      );

  static List<double> getValues() =>
      EnumWeightStatus.values.map((e) => e.maxValue).toList();

  @override
  int compareTo(EnumWeightStatus other) => index.compareTo(other.index);

  @override
  String toString() => 'EnumWeightStatus.$name($maxValue)';
}
