// turnGen
enum EumPaymentStatus implements Comparable<EumPaymentStatus> {
  active('active'),
  done('done'),
  overdue('overdue'),
  payed('payed');

  const EumPaymentStatus(this.value);
  final String value;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EumPaymentStatus fromValue(
    String? value, {
    EumPaymentStatus? fallback,
  }) {
    switch (value) {
      case 'active':
        return active;
      case 'done':
        return done;
      case 'overdue':
        return overdue;
      case 'payed':
        return payed;
      default:
        return fallback ??
            (throw ArgumentError.value(
              value,
              '',
              'Value not found in EumPaymentStatus',
            ));
    }
  }

  T map<T>({
    required T Function() active,
    required T Function() done,
    required T Function() overdue,
    required T Function() payed,
  }) {
    switch (this) {
      case EumPaymentStatus.active:
        return active();
      case EumPaymentStatus.done:
        return done();
      case EumPaymentStatus.overdue:
        return overdue();
      case EumPaymentStatus.payed:
        return payed();
    }
  }

  T mapValue<T>({
    required T active,
    required T done,
    required T overdue,
    required T payed,
  }) {
    switch (this) {
      case EumPaymentStatus.active:
        return active;
      case EumPaymentStatus.done:
        return done;
      case EumPaymentStatus.overdue:
        return overdue;
      case EumPaymentStatus.payed:
        return payed;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? active,
    T Function()? done,
    T Function()? overdue,
    T Function()? payed,
  }) =>
      map<T>(
        active: active ?? orElse,
        done: done ?? orElse,
        overdue: overdue ?? orElse,
        payed: payed ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? active,
    T? done,
    T? overdue,
    T? payed,
  }) =>
      mapValue<T>(
        active: active ?? orElse,
        done: done ?? orElse,
        overdue: overdue ?? orElse,
        payed: payed ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? active,
    T Function()? done,
    T Function()? overdue,
    T Function()? payed,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        active: active,
        done: done,
        overdue: overdue,
        payed: payed,
      );

  T? maybeMapOrNullValue<T>({
    T? active,
    T? done,
    T? overdue,
    T? payed,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        active: active,
        done: done,
        overdue: overdue,
        payed: payed,
      );

  static List<String> getValues() =>
      EumPaymentStatus.values.map((e) => e.value).toList();

  @override
  int compareTo(EumPaymentStatus other) => index.compareTo(other.index);
}

extension EumPaymentStatusX on EumPaymentStatus {
  bool get active => this == EumPaymentStatus.active;
  bool get done => this == EumPaymentStatus.done;
  bool get overdue => this == EumPaymentStatus.overdue;
  bool get payed => this == EumPaymentStatus.payed;
}
