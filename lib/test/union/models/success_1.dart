// ignore_for_file: avoid_bool_literals_in_conditional_expressions, non_constant_identifier_names
// ignore_for_file: sort_constructors_first
// turngen
import 'dart:convert';

class Success1 {
  /* init: '' */
  final String payment;

  /* init: '' */
  final String body;
  /* init: '' */
  final String commission;
  /* init: '' */
  final String start_date;
  /* init: '' */
  final String end_date;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const Success1({
    this.payment = '',
    this.body = '',
    this.commission = '',
    this.start_date = '',
    this.end_date = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'payment': payment,
      'body': body,
      'commission': commission,
      'start_date': start_date,
      'end_date': end_date,
    };
  }

  factory Success1.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const Success1();

    return Success1(
      payment: map['payment'] as String? ?? '',
      body: map['body'] as String? ?? '',
      commission: map['commission'] as String? ?? '',
      start_date: map['start_date'] as String? ?? '',
      end_date: map['end_date'] as String? ?? '',
    );
  }

  Success1 copyWith({
    String? payment,
    String? body,
    String? commission,
    String? start_date,
    String? end_date,
  }) {
    return Success1(
      payment: payment ?? this.payment,
      body: body ?? this.body,
      commission: commission ?? this.commission,
      start_date: start_date ?? this.start_date,
      end_date: end_date ?? this.end_date,
    );
  }

  String toJson() => json.encode(toMap());
  factory Success1.fromJson(String source) => Success1.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success1 &&
            (identical(
                  other.payment,
                  payment,
                ) ||
                other.payment == payment) &&
            (identical(
                  other.body,
                  body,
                ) ||
                other.body == body) &&
            (identical(
                  other.commission,
                  commission,
                ) ||
                other.commission == commission) &&
            (identical(
                  other.start_date,
                  start_date,
                ) ||
                other.start_date == start_date) &&
            (identical(
                  other.end_date,
                  end_date,
                ) ||
                other.end_date == end_date));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        payment,
        body,
        commission,
        start_date,
        end_date,
      ]);

  @override
  String toString() {
    return 'Success1(payment: $payment, body: $body, commission: $commission, start_date: $start_date, end_date: $end_date, )';
  }
}
