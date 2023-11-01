// turngen

import 'dart:convert';

import 'package:meta/meta.dart';

class _Store {
  const _Store.appStore({
    String url =
        'https://apps.apple.com/us/app/надо-денег-деньги-онлайн/id1663823713',
    String name = 'AppStore',
    List<String> packageIds = const [
      'com.apple',
      'com.apple.testflight',
      'com.apple.simulator',
    ],
  });
  const _Store.googlePlay({
    String url =
        'https://play.google.com/store/apps/details?id=ru.nadodeneg.mobile',
    String name = 'GooglePlay',
    List<String> packageIds = const [
      'com.android.vending',
    ],
  });
  const _Store.getApps({
    String url =
        'https://global.app.mi.com/details?id=ru.nadodeneg.mobile&lo=RU&la=en',
    String name = 'GetApps',
    List<String> packageIds = const [
      'com.xiaomi.mipicks',
    ],
  });
  const _Store.packageInstaller({
    String name = 'PackageInstaller',
    List<String> packageIds = const [
      'com.miui.packageinstaller',
      'com.google.android.packageinstaller',
      'com.android.packageinstaller',
    ],
  });
  const _Store.ruStore({
    String name = 'RuStore',
    String url = 'https://apps.rustore.ru/app/ru.nadodeneg.mobile',
    List<String> packageIds = const [
      'ru.vk.store',
    ],
  });
  const _Store.appGallery({
    String name = 'AppGallery',
    String url = 'https://appgallery.huawei.com/app/C109195729',
    List<String> packageIds = const [
      'com.huawei.appmarket',
    ],
  });
  const _Store.other({
    String name = 'Other',
    List<String> packageIds = const [
      'com.sec.android.app.samsungapps',
      'com.aurora.store',
      'com.samsung.android.scloud',
      'com.sec.android.easyMover',
      'com.xrom.intl.appcenter',
      'com.miui.huanji',
      'com.apkpure.aegon',
      'com.aurora.store',
    ],
  });
}

// end

//          --TURN_GEN--
//             (union)
//  *************************************
//         GENERATED CODE
//  *************************************
// coverage:ignore-file
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: camel_case_types
// ignore_for_file: avoid-non-null-assertion
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: unnecessary_null_checks
// ignore_for_file: unused_element
// ignore_for_file: sort_constructors_first
// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: avoid_positional_boolean_parameters,
// ignore_for_file: always_put_required_named_parameters_first

enum StoreTag {
  appStore,
  googlePlay,
  getApps,
  packageInstaller,
  ruStore,
  appGallery,
  other,
}

@immutable
class Store {
  final StoreTag _tag;
  final String? _url_appStore;
  final String? _name_appStore;
  final String? _url_googlePlay;
  final String? _name_googlePlay;
  final String? _url_getApps;
  final String? _name_getApps;
  final String? _name_packageInstaller;
  final String? _name_ruStore;
  final String? _url_ruStore;
  final String? _name_appGallery;
  final String? _url_appGallery;
  final String? _name_other;

  const Store.appStore({
    String url =
        'https://apps.apple.com/us/app/надо-денег-деньги-онлайн/id1663823713',
    String name = 'AppStore',
    List<String> packageIds = const [
      'com.apple',
      'com.apple.testflight',
      'com.apple.simulator',
    ],
  })  : _tag = StoreTag.appStore,
        _url_appStore = url,
        _name_appStore = name,
        _url_googlePlay = null,
        _name_googlePlay = null,
        _url_getApps = null,
        _name_getApps = null,
        _name_packageInstaller = null,
        _name_ruStore = null,
        _url_ruStore = null,
        _name_appGallery = null,
        _url_appGallery = null,
        _name_other = null;

  const Store.googlePlay({
    String url =
        'https://play.google.com/store/apps/details?id=ru.nadodeneg.mobile',
    String name = 'GooglePlay',
    List<String> packageIds = const [
      'com.android.vending',
    ],
  })  : _tag = StoreTag.googlePlay,
        _url_appStore = null,
        _name_appStore = null,
        _url_googlePlay = url,
        _name_googlePlay = name,
        _url_getApps = null,
        _name_getApps = null,
        _name_packageInstaller = null,
        _name_ruStore = null,
        _url_ruStore = null,
        _name_appGallery = null,
        _url_appGallery = null,
        _name_other = null;

  const Store.getApps({
    String url =
        'https://global.app.mi.com/details?id=ru.nadodeneg.mobile&lo=RU&la=en',
    String name = 'GetApps',
    List<String> packageIds = const [
      'com.xiaomi.mipicks',
    ],
  })  : _tag = StoreTag.getApps,
        _url_appStore = null,
        _name_appStore = null,
        _url_googlePlay = null,
        _name_googlePlay = null,
        _url_getApps = url,
        _name_getApps = name,
        _name_packageInstaller = null,
        _name_ruStore = null,
        _url_ruStore = null,
        _name_appGallery = null,
        _url_appGallery = null,
        _name_other = null;

  const Store.packageInstaller({
    String name = 'PackageInstaller',
    List<String> packageIds = const [
      'com.miui.packageinstaller',
      'com.google.android.packageinstaller',
      'com.android.packageinstaller',
    ],
  })  : _tag = StoreTag.packageInstaller,
        _url_appStore = null,
        _name_appStore = null,
        _url_googlePlay = null,
        _name_googlePlay = null,
        _url_getApps = null,
        _name_getApps = null,
        _name_packageInstaller = name,
        _name_ruStore = null,
        _url_ruStore = null,
        _name_appGallery = null,
        _url_appGallery = null,
        _name_other = null;

  const Store.ruStore({
    String name = 'RuStore',
    String url = 'https://apps.rustore.ru/app/ru.nadodeneg.mobile',
    List<String> packageIds = const [
      'ru.vk.store',
    ],
  })  : _tag = StoreTag.ruStore,
        _url_appStore = null,
        _name_appStore = null,
        _url_googlePlay = null,
        _name_googlePlay = null,
        _url_getApps = null,
        _name_getApps = null,
        _name_packageInstaller = null,
        _name_ruStore = name,
        _url_ruStore = url,
        _name_appGallery = null,
        _url_appGallery = null,
        _name_other = null;

  const Store.appGallery({
    String name = 'AppGallery',
    String url = 'https://appgallery.huawei.com/app/C109195729',
    List<String> packageIds = const [
      'com.huawei.appmarket',
    ],
  })  : _tag = StoreTag.appGallery,
        _url_appStore = null,
        _name_appStore = null,
        _url_googlePlay = null,
        _name_googlePlay = null,
        _url_getApps = null,
        _name_getApps = null,
        _name_packageInstaller = null,
        _name_ruStore = null,
        _url_ruStore = null,
        _name_appGallery = name,
        _url_appGallery = url,
        _name_other = null;

  const Store.other({
    String name = 'Other',
    List<String> packageIds = const [
      'com.sec.android.app.samsungapps',
      'com.aurora.store',
      'com.samsung.android.scloud',
      'com.sec.android.easyMover',
      'com.xrom.intl.appcenter',
      'com.miui.huanji',
      'com.apkpure.aegon',
      'com.aurora.store',
    ],
  })  : _tag = StoreTag.other,
        _url_appStore = null,
        _name_appStore = null,
        _url_googlePlay = null,
        _name_googlePlay = null,
        _url_getApps = null,
        _name_getApps = null,
        _name_packageInstaller = null,
        _name_ruStore = null,
        _url_ruStore = null,
        _name_appGallery = null,
        _url_appGallery = null,
        _name_other = name;

  bool get appStore => _tag == StoreTag.appStore;
  bool get googlePlay => _tag == StoreTag.googlePlay;
  bool get getApps => _tag == StoreTag.getApps;
  bool get packageInstaller => _tag == StoreTag.packageInstaller;
  bool get ruStore => _tag == StoreTag.ruStore;
  bool get appGallery => _tag == StoreTag.appGallery;
  bool get other => _tag == StoreTag.other;

  factory Store.fromJson(
    String source, [
    StoreTag? tag,
  ]) =>
      Store.fromMap(
        json.decode(source) as Map<String, dynamic>,
        tag,
      );

  Map<String, dynamic> toMap() {
    switch (_tag) {
      case StoreTag.appStore:
        return {
          'tag': 'appStore',
          'url': _url_appStore,
          'name': _name_appStore,
        };
      case StoreTag.googlePlay:
        return {
          'tag': 'googlePlay',
          'url': _url_googlePlay,
          'name': _name_googlePlay,
        };
      case StoreTag.getApps:
        return {
          'tag': 'getApps',
          'url': _url_getApps,
          'name': _name_getApps,
        };
      case StoreTag.packageInstaller:
        return {
          'tag': 'packageInstaller',
          'name': _name_packageInstaller,
        };
      case StoreTag.ruStore:
        return {
          'tag': 'ruStore',
          'name': _name_ruStore,
          'url': _url_ruStore,
        };
      case StoreTag.appGallery:
        return {
          'tag': 'appGallery',
          'name': _name_appGallery,
          'url': _url_appGallery,
        };
      case StoreTag.other:
        return {
          'tag': 'other',
          'name': _name_other,
        };
    }
  }

  String toJson() => json.encode(toMap());

  factory Store.fromMap(
    Map<dynamic, dynamic> map, [
    StoreTag? tag,
  ]) {
    tag ??= StoreTag.values.byName(map['tag'].toString());
    switch (tag) {
      case StoreTag.appStore:
        return Store.appStore(
          url: map['url'] as String? ??
              'https://apps.apple.com/us/app/надо-денег-деньги-онлайн/id1663823713',
          name: map['name'] as String? ?? 'AppStore',
        );
      case StoreTag.googlePlay:
        return Store.googlePlay(
          url: map['url'] as String? ??
              'https://play.google.com/store/apps/details?id=ru.nadodeneg.mobile',
          name: map['name'] as String? ?? 'GooglePlay',
        );
      case StoreTag.getApps:
        return Store.getApps(
          url: map['url'] as String? ??
              'https://global.app.mi.com/details?id=ru.nadodeneg.mobile&lo=RU&la=en',
          name: map['name'] as String? ?? 'GetApps',
        );
      case StoreTag.packageInstaller:
        return Store.packageInstaller(
          name: map['name'] as String? ?? 'PackageInstaller',
        );
      case StoreTag.ruStore:
        return Store.ruStore(
          name: map['name'] as String? ?? 'RuStore',
          url: map['url'] as String? ??
              'https://apps.rustore.ru/app/ru.nadodeneg.mobile',
        );
      case StoreTag.appGallery:
        return Store.appGallery(
          name: map['name'] as String? ?? 'AppGallery',
          url: map['url'] as String? ??
              'https://appgallery.huawei.com/app/C109195729',
        );
      case StoreTag.other:
        return Store.other(
          name: map['name'] as String? ?? 'Other',
        );
    }
  }

  T map<T>({
    required T Function(_StoreAppStore v) appStore,
    required T Function(_StoreGooglePlay v) googlePlay,
    required T Function(_StoreGetApps v) getApps,
    required T Function(_StorePackageInstaller v) packageInstaller,
    required T Function(_StoreRuStore v) ruStore,
    required T Function(_StoreAppGallery v) appGallery,
    required T Function(_StoreOther v) other,
  }) {
    switch (_tag) {
      case StoreTag.appStore:
        return appStore(
          _StoreAppStore(
            _url_appStore!,
            _name_appStore!,
          ),
        );
      case StoreTag.googlePlay:
        return googlePlay(
          _StoreGooglePlay(
            _url_googlePlay!,
            _name_googlePlay!,
          ),
        );
      case StoreTag.getApps:
        return getApps(
          _StoreGetApps(
            _url_getApps!,
            _name_getApps!,
          ),
        );
      case StoreTag.packageInstaller:
        return packageInstaller(
          _StorePackageInstaller(
            _name_packageInstaller!,
          ),
        );
      case StoreTag.ruStore:
        return ruStore(
          _StoreRuStore(
            _name_ruStore!,
            _url_ruStore!,
          ),
        );
      case StoreTag.appGallery:
        return appGallery(
          _StoreAppGallery(
            _name_appGallery!,
            _url_appGallery!,
          ),
        );
      case StoreTag.other:
        return other(
          _StoreOther(
            _name_other!,
          ),
        );
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function(_StoreAppStore v)? appStore,
    T Function(_StoreGooglePlay v)? googlePlay,
    T Function(_StoreGetApps v)? getApps,
    T Function(_StorePackageInstaller v)? packageInstaller,
    T Function(_StoreRuStore v)? ruStore,
    T Function(_StoreAppGallery v)? appGallery,
    T Function(_StoreOther v)? other,
  }) {
    switch (_tag) {
      case StoreTag.appStore:
        if (appStore != null) {
          return appStore(
            _StoreAppStore(
              _url_appStore!,
              _name_appStore!,
            ),
          );
        }
        return orElse();
      case StoreTag.googlePlay:
        if (googlePlay != null) {
          return googlePlay(
            _StoreGooglePlay(
              _url_googlePlay!,
              _name_googlePlay!,
            ),
          );
        }
        return orElse();
      case StoreTag.getApps:
        if (getApps != null) {
          return getApps(
            _StoreGetApps(
              _url_getApps!,
              _name_getApps!,
            ),
          );
        }
        return orElse();
      case StoreTag.packageInstaller:
        if (packageInstaller != null) {
          return packageInstaller(
            _StorePackageInstaller(
              _name_packageInstaller!,
            ),
          );
        }
        return orElse();
      case StoreTag.ruStore:
        if (ruStore != null) {
          return ruStore(
            _StoreRuStore(
              _name_ruStore!,
              _url_ruStore!,
            ),
          );
        }
        return orElse();
      case StoreTag.appGallery:
        if (appGallery != null) {
          return appGallery(
            _StoreAppGallery(
              _name_appGallery!,
              _url_appGallery!,
            ),
          );
        }
        return orElse();
      case StoreTag.other:
        if (other != null) {
          return other(
            _StoreOther(
              _name_other!,
            ),
          );
        }
        return orElse();
    }
  }

  T? mapOrNull<T>({
    T? Function(_StoreAppStore v)? appStore,
    T? Function(_StoreGooglePlay v)? googlePlay,
    T? Function(_StoreGetApps v)? getApps,
    T? Function(_StorePackageInstaller v)? packageInstaller,
    T? Function(_StoreRuStore v)? ruStore,
    T? Function(_StoreAppGallery v)? appGallery,
    T? Function(_StoreOther v)? other,
  }) {
    switch (_tag) {
      case StoreTag.appStore:
        return appStore?.call(
          _StoreAppStore(
            _url_appStore!,
            _name_appStore!,
          ),
        );
      case StoreTag.googlePlay:
        return googlePlay?.call(
          _StoreGooglePlay(
            _url_googlePlay!,
            _name_googlePlay!,
          ),
        );
      case StoreTag.getApps:
        return getApps?.call(
          _StoreGetApps(
            _url_getApps!,
            _name_getApps!,
          ),
        );
      case StoreTag.packageInstaller:
        return packageInstaller?.call(
          _StorePackageInstaller(
            _name_packageInstaller!,
          ),
        );
      case StoreTag.ruStore:
        return ruStore?.call(
          _StoreRuStore(
            _name_ruStore!,
            _url_ruStore!,
          ),
        );
      case StoreTag.appGallery:
        return appGallery?.call(
          _StoreAppGallery(
            _name_appGallery!,
            _url_appGallery!,
          ),
        );
      case StoreTag.other:
        return other?.call(
          _StoreOther(
            _name_other!,
          ),
        );
    }
  }

  T? maybeMapOrNull<T>({
    T? Function(_StoreAppStore v)? appStore,
    T? Function(_StoreGooglePlay v)? googlePlay,
    T? Function(_StoreGetApps v)? getApps,
    T? Function(_StorePackageInstaller v)? packageInstaller,
    T? Function(_StoreRuStore v)? ruStore,
    T? Function(_StoreAppGallery v)? appGallery,
    T? Function(_StoreOther v)? other,
  }) {
    switch (_tag) {
      case StoreTag.appStore:
        if (appStore != null) {
          return appStore(
            _StoreAppStore(
              _url_appStore!,
              _name_appStore!,
            ),
          );
        }
        return null;
      case StoreTag.googlePlay:
        if (googlePlay != null) {
          return googlePlay(
            _StoreGooglePlay(
              _url_googlePlay!,
              _name_googlePlay!,
            ),
          );
        }
        return null;
      case StoreTag.getApps:
        if (getApps != null) {
          return getApps(
            _StoreGetApps(
              _url_getApps!,
              _name_getApps!,
            ),
          );
        }
        return null;
      case StoreTag.packageInstaller:
        if (packageInstaller != null) {
          return packageInstaller(
            _StorePackageInstaller(
              _name_packageInstaller!,
            ),
          );
        }
        return null;
      case StoreTag.ruStore:
        if (ruStore != null) {
          return ruStore(
            _StoreRuStore(
              _name_ruStore!,
              _url_ruStore!,
            ),
          );
        }
        return null;
      case StoreTag.appGallery:
        if (appGallery != null) {
          return appGallery(
            _StoreAppGallery(
              _name_appGallery!,
              _url_appGallery!,
            ),
          );
        }
        return null;
      case StoreTag.other:
        if (other != null) {
          return other(
            _StoreOther(
              _name_other!,
            ),
          );
        }
        return null;
    }
  }

  T when<T>({
    required T Function(
      String url,
      String name,
    ) appStore,
    required T Function(
      String url,
      String name,
    ) googlePlay,
    required T Function(
      String url,
      String name,
    ) getApps,
    required T Function(
      String name,
    ) packageInstaller,
    required T Function(
      String name,
      String url,
    ) ruStore,
    required T Function(
      String name,
      String url,
    ) appGallery,
    required T Function(
      String name,
    ) other,
  }) {
    switch (_tag) {
      case StoreTag.appStore:
        return appStore(
          _url_appStore!,
          _name_appStore!,
        );
      case StoreTag.googlePlay:
        return googlePlay(
          _url_googlePlay!,
          _name_googlePlay!,
        );
      case StoreTag.getApps:
        return getApps(
          _url_getApps!,
          _name_getApps!,
        );
      case StoreTag.packageInstaller:
        return packageInstaller(
          _name_packageInstaller!,
        );
      case StoreTag.ruStore:
        return ruStore(
          _name_ruStore!,
          _url_ruStore!,
        );
      case StoreTag.appGallery:
        return appGallery(
          _name_appGallery!,
          _url_appGallery!,
        );
      case StoreTag.other:
        return other(
          _name_other!,
        );
    }
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! Store) return false;
    if (other.runtimeType != runtimeType) return false;

    switch (_tag) {
      case StoreTag.appStore:
        return _tag == other._tag &&
            (identical(
                  other._url_appStore,
                  _url_appStore,
                ) ||
                other._url_appStore == _url_appStore) &&
            (identical(
                  other._name_appStore,
                  _name_appStore,
                ) ||
                other._name_appStore == _name_appStore);
      case StoreTag.googlePlay:
        return _tag == other._tag &&
            (identical(
                  other._url_googlePlay,
                  _url_googlePlay,
                ) ||
                other._url_googlePlay == _url_googlePlay) &&
            (identical(
                  other._name_googlePlay,
                  _name_googlePlay,
                ) ||
                other._name_googlePlay == _name_googlePlay);
      case StoreTag.getApps:
        return _tag == other._tag &&
            (identical(
                  other._url_getApps,
                  _url_getApps,
                ) ||
                other._url_getApps == _url_getApps) &&
            (identical(
                  other._name_getApps,
                  _name_getApps,
                ) ||
                other._name_getApps == _name_getApps);
      case StoreTag.packageInstaller:
        return _tag == other._tag &&
            (identical(
                  other._name_packageInstaller,
                  _name_packageInstaller,
                ) ||
                other._name_packageInstaller == _name_packageInstaller);
      case StoreTag.ruStore:
        return _tag == other._tag &&
            (identical(
                  other._name_ruStore,
                  _name_ruStore,
                ) ||
                other._name_ruStore == _name_ruStore) &&
            (identical(
                  other._url_ruStore,
                  _url_ruStore,
                ) ||
                other._url_ruStore == _url_ruStore);
      case StoreTag.appGallery:
        return _tag == other._tag &&
            (identical(
                  other._name_appGallery,
                  _name_appGallery,
                ) ||
                other._name_appGallery == _name_appGallery) &&
            (identical(
                  other._url_appGallery,
                  _url_appGallery,
                ) ||
                other._url_appGallery == _url_appGallery);
      case StoreTag.other:
        return _tag == other._tag &&
            (identical(
                  other._name_other,
                  _name_other,
                ) ||
                other._name_other == _name_other);
    }
  }

  @override
  int get hashCode {
    switch (_tag) {
      case StoreTag.appStore:
        return Object.hashAll(
          [
            runtimeType,
            _tag,
            _url_appStore,
            _name_appStore,
          ],
        );
      case StoreTag.googlePlay:
        return Object.hashAll(
          [
            runtimeType,
            _tag,
            _url_googlePlay,
            _name_googlePlay,
          ],
        );
      case StoreTag.getApps:
        return Object.hashAll(
          [
            runtimeType,
            _tag,
            _url_getApps,
            _name_getApps,
          ],
        );
      case StoreTag.packageInstaller:
        return Object.hashAll(
          [
            runtimeType,
            _tag,
            _name_packageInstaller,
          ],
        );
      case StoreTag.ruStore:
        return Object.hashAll(
          [
            runtimeType,
            _tag,
            _name_ruStore,
            _url_ruStore,
          ],
        );
      case StoreTag.appGallery:
        return Object.hashAll(
          [
            runtimeType,
            _tag,
            _name_appGallery,
            _url_appGallery,
          ],
        );
      case StoreTag.other:
        return Object.hashAll(
          [
            runtimeType,
            _tag,
            _name_other,
          ],
        );
    }
  }

  @override
  String toString() {
    switch (_tag) {
      case StoreTag.appStore:
        return 'Store.appStore(url: $_url_appStore, name: $_name_appStore)';
      case StoreTag.googlePlay:
        return 'Store.googlePlay(url: $_url_googlePlay, name: $_name_googlePlay)';
      case StoreTag.getApps:
        return 'Store.getApps(url: $_url_getApps, name: $_name_getApps)';
      case StoreTag.packageInstaller:
        return 'Store.packageInstaller(name: $_name_packageInstaller)';
      case StoreTag.ruStore:
        return 'Store.ruStore(name: $_name_ruStore, url: $_url_ruStore)';
      case StoreTag.appGallery:
        return 'Store.appGallery(name: $_name_appGallery, url: $_url_appGallery)';
      case StoreTag.other:
        return 'Store.other(name: $_name_other)';
    }
  }
}

@immutable
class _StoreAppStore extends Store {
  const _StoreAppStore(
    this.url,
    this.name,
  ) : super.appStore(
          url: url,
          name: name,
        );
  final String url;
  final String name;

  _StoreAppStore copyWith({
    String? url,
    String? name,
  }) {
    return _StoreAppStore(
      url ?? this.url,
      name ?? this.name,
    );
  }
}

@immutable
class _StoreGooglePlay extends Store {
  const _StoreGooglePlay(
    this.url,
    this.name,
  ) : super.googlePlay(
          url: url,
          name: name,
        );
  final String url;
  final String name;

  _StoreGooglePlay copyWith({
    String? url,
    String? name,
  }) {
    return _StoreGooglePlay(
      url ?? this.url,
      name ?? this.name,
    );
  }
}

@immutable
class _StoreGetApps extends Store {
  const _StoreGetApps(
    this.url,
    this.name,
  ) : super.getApps(
          url: url,
          name: name,
        );
  final String url;
  final String name;

  _StoreGetApps copyWith({
    String? url,
    String? name,
  }) {
    return _StoreGetApps(
      url ?? this.url,
      name ?? this.name,
    );
  }
}

@immutable
class _StorePackageInstaller extends Store {
  const _StorePackageInstaller(
    this.name,
  ) : super.packageInstaller(
          name: name,
        );
  final String name;

  _StorePackageInstaller copyWith({
    String? name,
  }) {
    return _StorePackageInstaller(
      name ?? this.name,
    );
  }
}

@immutable
class _StoreRuStore extends Store {
  const _StoreRuStore(
    this.name,
    this.url,
  ) : super.ruStore(
          name: name,
          url: url,
        );
  final String name;
  final String url;

  _StoreRuStore copyWith({
    String? name,
    String? url,
  }) {
    return _StoreRuStore(
      name ?? this.name,
      url ?? this.url,
    );
  }
}

@immutable
class _StoreAppGallery extends Store {
  const _StoreAppGallery(
    this.name,
    this.url,
  ) : super.appGallery(
          name: name,
          url: url,
        );
  final String name;
  final String url;

  _StoreAppGallery copyWith({
    String? name,
    String? url,
  }) {
    return _StoreAppGallery(
      name ?? this.name,
      url ?? this.url,
    );
  }
}

@immutable
class _StoreOther extends Store {
  const _StoreOther(
    this.name,
  ) : super.other(
          name: name,
        );
  final String name;

  _StoreOther copyWith({
    String? name,
  }) {
    return _StoreOther(
      name ?? this.name,
    );
  }
}
