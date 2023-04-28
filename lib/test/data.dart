// ignore_for_file: sort_constructors_first
// ignore_for_file: avoid_bool_literals_in_conditional_expressions, avoid_equals_and_hash_code_on_mutable_classes

import 'dart:convert';

class DebugState {
  /* init: 'https://api.nadodeneg.ru/' */
  final String baseUrl;
  /* init: false */
  final bool isDebugMenuEnabled;
  /* init: true */
  final bool isAnalyticEnabled;
  /* init: false */
  final bool isShowDevicePreview;
  /* init: false */
  final bool isShowBtnHttpLog;
  //tesst
  /* init: false */
  final bool isShowRepaintRainbow;
  /* init: false */
  final bool isShowPaintSizeEnabled;

  // end

//          --TURN_GEN--
//             (data)
//  *************************************
//         GENERATED CODE
//  *************************************
  const DebugState({
    this.baseUrl = 'https://api.nadodeneg.ru/',
    this.isDebugMenuEnabled = false,
    this.isAnalyticEnabled = true,
    this.isShowDevicePreview = false,
    this.isShowBtnHttpLog = false,
    this.isShowRepaintRainbow = false,
    this.isShowPaintSizeEnabled = false,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'isDebugMenuEnabled': isDebugMenuEnabled,
      'isAnalyticEnabled': isAnalyticEnabled,
      'isShowDevicePreview': isShowDevicePreview,
      'isShowBtnHttpLog': isShowBtnHttpLog,
      'isShowRepaintRainbow': isShowRepaintRainbow,
      'isShowPaintSizeEnabled': isShowPaintSizeEnabled,
    };
  }

  factory DebugState.fromMap(Map<dynamic, dynamic>? map) {
    if (map == null) return const DebugState();

    return DebugState(
      baseUrl: map['baseUrl'] as String? ?? 'https://api.nadodeneg.ru/',
      isDebugMenuEnabled: map['isDebugMenuEnabled'] as bool? ?? false,
      isAnalyticEnabled: map['isAnalyticEnabled'] as bool? ?? true,
      isShowDevicePreview: map['isShowDevicePreview'] as bool? ?? false,
      isShowBtnHttpLog: map['isShowBtnHttpLog'] as bool? ?? false,
      isShowRepaintRainbow: map['isShowRepaintRainbow'] as bool? ?? false,
      isShowPaintSizeEnabled: map['isShowPaintSizeEnabled'] as bool? ?? false,
    );
  }

  DebugState copyWith({
    String? baseUrl,
    bool? isDebugMenuEnabled,
    bool? isAnalyticEnabled,
    bool? isShowDevicePreview,
    bool? isShowBtnHttpLog,
    bool? isShowRepaintRainbow,
    bool? isShowPaintSizeEnabled,
  }) {
    return DebugState(
      baseUrl: baseUrl ?? this.baseUrl,
      isDebugMenuEnabled: isDebugMenuEnabled ?? this.isDebugMenuEnabled,
      isAnalyticEnabled: isAnalyticEnabled ?? this.isAnalyticEnabled,
      isShowDevicePreview: isShowDevicePreview ?? this.isShowDevicePreview,
      isShowBtnHttpLog: isShowBtnHttpLog ?? this.isShowBtnHttpLog,
      isShowRepaintRainbow: isShowRepaintRainbow ?? this.isShowRepaintRainbow,
      isShowPaintSizeEnabled:
          isShowPaintSizeEnabled ?? this.isShowPaintSizeEnabled,
    );
  }

  String toJson() => json.encode(toMap());
  factory DebugState.fromJson(String source) => DebugState.fromMap(
        json.decode(source) as Map<String, dynamic>,
      );

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DebugState &&
            (identical(
                  other.baseUrl,
                  baseUrl,
                ) ||
                other.baseUrl == baseUrl) &&
            (identical(
                  other.isDebugMenuEnabled,
                  isDebugMenuEnabled,
                ) ||
                other.isDebugMenuEnabled == isDebugMenuEnabled) &&
            (identical(
                  other.isAnalyticEnabled,
                  isAnalyticEnabled,
                ) ||
                other.isAnalyticEnabled == isAnalyticEnabled) &&
            (identical(
                  other.isShowDevicePreview,
                  isShowDevicePreview,
                ) ||
                other.isShowDevicePreview == isShowDevicePreview) &&
            (identical(
                  other.isShowBtnHttpLog,
                  isShowBtnHttpLog,
                ) ||
                other.isShowBtnHttpLog == isShowBtnHttpLog) &&
            (identical(
                  other.isShowRepaintRainbow,
                  isShowRepaintRainbow,
                ) ||
                other.isShowRepaintRainbow == isShowRepaintRainbow) &&
            (identical(
                  other.isShowPaintSizeEnabled,
                  isShowPaintSizeEnabled,
                ) ||
                other.isShowPaintSizeEnabled == isShowPaintSizeEnabled));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        baseUrl,
        isDebugMenuEnabled,
        isAnalyticEnabled,
        isShowDevicePreview,
        isShowBtnHttpLog,
        isShowRepaintRainbow,
        isShowPaintSizeEnabled,
      ]);

  @override
  String toString() {
    return 'DebugState(baseUrl: $baseUrl, isDebugMenuEnabled: $isDebugMenuEnabled, isAnalyticEnabled: $isAnalyticEnabled, isShowDevicePreview: $isShowDevicePreview, isShowBtnHttpLog: $isShowBtnHttpLog, isShowRepaintRainbow: $isShowRepaintRainbow, isShowPaintSizeEnabled: $isShowPaintSizeEnabled, )';
  }
}
