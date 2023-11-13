// turnGen

// ignore_for_file: no_duplicate_case_values

enum EnumStore implements Comparable<EnumStore> {
  appStore(
    packageId: [
      'com.apple',
      'com.apple.testflight',
      'com.apple.simulator',
    ],
    url: 'https://apps.apple.com/us/app/надо-денег-деньги-онлайн/id1663823713',
    name: 'AppStore',
    vendor: '(apple)',
  ),
  googlePlay(
    packageId: [
      'com.android.vending',
    ],
    url: 'https://play.google.com/store/apps/details?id=ru.nadodeneg.mobile',
    name: 'GooglePlay',
    vendor: '(google)',
  ),
  getApps(
    packageId: [
      'com.xiaomi.mipicks',
    ],
    url: 'https://global.app.mi.com/details?id=ru.nadodeneg.mobile&lo=RU&la=en',
    name: 'GetApps',
    vendor: '(xiaomi)',
  ),
  packageInstaller(
    packageId: [
      'com.miui.packageinstaller',
      'com.google.android.packageinstaller',
      'com.android.packageinstaller',
    ],
    url: '',
    name: 'PackageInstaller',
    vendor: '(apk)',
  ),
  ruStore(
    packageId: [
      'ru.vk.store',
    ],
    url: 'https://apps.rustore.ru/app/ru.nadodeneg.mobile',
    name: 'RuStore',
    vendor: '(vk)',
  ),
  appGallery(
    packageId: [
      'com.huawei.appmarket',
    ],
    url: 'https://appgallery.huawei.com/app/C109195729',
    name: 'AppGallery',
    vendor: '(huawei)',
  ),
  other(
    packageId: [
      'com.sec.android.app.samsungapps',
      'com.aurora.store',
      'com.samsung.android.scloud',
      'com.sec.android.easyMover',
      'com.xrom.intl.appcenter',
      'com.miui.huanji',
      'com.apkpure.aegon',
      'com.aurora.store',
    ],
    url: '',
    name: 'Other',
    vendor: '',
  ),
  unknown(
    packageId: [
      '',
    ],
    url: '',
    name: 'Unknown',
    vendor: '',
  );

  const EnumStore({
    required this.packageId,
    required this.url,
    required this.name,
    required this.vendor,
  });
  final List<String> packageId;
  final String url;
  final String name;
  final String vendor;

// end

//          --TURN_GEN--
//             (enum)
//  *************************************
//         GENERATED CODE
//  *************************************

  static EnumStore fromPackageId(
    String? packageId, {
    EnumStore? fallback,
  }) {
    for (final enumValue in EnumStore.values) {
      if (enumValue.packageId.contains(packageId)) {
        return enumValue;
      }
    }

    return fallback ??
        (throw ArgumentError.value(
          packageId,
          '',
          'Value not found in EnumStore',
        ));
  }

  static EnumStore fromUrl(
    String? url, {
    EnumStore? fallback,
  }) {
    switch (url) {
      case 'https://apps.apple.com/us/app/надо-денег-деньги-онлайн/id1663823713':
        return appStore;
      case 'https://play.google.com/store/apps/details?id=ru.nadodeneg.mobile':
        return googlePlay;
      case 'https://global.app.mi.com/details?id=ru.nadodeneg.mobile&lo=RU&la=en':
        return getApps;
      case '':
        return packageInstaller;
      case 'https://apps.rustore.ru/app/ru.nadodeneg.mobile':
        return ruStore;
      case 'https://appgallery.huawei.com/app/C109195729':
        return appGallery;
      case '':
        return other;
      case '':
        return unknown;
      default:
        return fallback ??
            (throw ArgumentError.value(
              url,
              '',
              'Value not found in EnumStore',
            ));
    }
  }

  static EnumStore fromName(
    String? name, {
    EnumStore? fallback,
  }) {
    switch (name) {
      case 'AppStore':
        return appStore;
      case 'GooglePlay':
        return googlePlay;
      case 'GetApps':
        return getApps;
      case 'PackageInstaller':
        return packageInstaller;
      case 'RuStore':
        return ruStore;
      case 'AppGallery':
        return appGallery;
      case 'Other':
        return other;
      case 'Unknown':
        return unknown;
      default:
        return fallback ??
            (throw ArgumentError.value(
              name,
              '',
              'Value not found in EnumStore',
            ));
    }
  }

  static EnumStore fromVendor(
    String? vendor, {
    EnumStore? fallback,
  }) {
    switch (vendor) {
      case '(apple)':
        return appStore;
      case '(google)':
        return googlePlay;
      case '(xiaomi)':
        return getApps;
      case '(apk)':
        return packageInstaller;
      case '(vk)':
        return ruStore;
      case '(huawei)':
        return appGallery;
      case '':
        return other;
      case '':
        return unknown;
      default:
        return fallback ??
            (throw ArgumentError.value(
              vendor,
              '',
              'Value not found in EnumStore',
            ));
    }
  }

  T map<T>({
    required T Function() appStore,
    required T Function() googlePlay,
    required T Function() getApps,
    required T Function() packageInstaller,
    required T Function() ruStore,
    required T Function() appGallery,
    required T Function() other,
    required T Function() unknown,
  }) {
    switch (this) {
      case EnumStore.appStore:
        return appStore();
      case EnumStore.googlePlay:
        return googlePlay();
      case EnumStore.getApps:
        return getApps();
      case EnumStore.packageInstaller:
        return packageInstaller();
      case EnumStore.ruStore:
        return ruStore();
      case EnumStore.appGallery:
        return appGallery();
      case EnumStore.other:
        return other();
      case EnumStore.unknown:
        return unknown();
    }
  }

  T mapValue<T>({
    required T appStore,
    required T googlePlay,
    required T getApps,
    required T packageInstaller,
    required T ruStore,
    required T appGallery,
    required T other,
    required T unknown,
  }) {
    switch (this) {
      case EnumStore.appStore:
        return appStore;
      case EnumStore.googlePlay:
        return googlePlay;
      case EnumStore.getApps:
        return getApps;
      case EnumStore.packageInstaller:
        return packageInstaller;
      case EnumStore.ruStore:
        return ruStore;
      case EnumStore.appGallery:
        return appGallery;
      case EnumStore.other:
        return other;
      case EnumStore.unknown:
        return unknown;
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? appStore,
    T Function()? googlePlay,
    T Function()? getApps,
    T Function()? packageInstaller,
    T Function()? ruStore,
    T Function()? appGallery,
    T Function()? other,
    T Function()? unknown,
  }) =>
      map<T>(
        appStore: appStore ?? orElse,
        googlePlay: googlePlay ?? orElse,
        getApps: getApps ?? orElse,
        packageInstaller: packageInstaller ?? orElse,
        ruStore: ruStore ?? orElse,
        appGallery: appGallery ?? orElse,
        other: other ?? orElse,
        unknown: unknown ?? orElse,
      );

  T maybeMapValue<T>({
    required T orElse,
    T? appStore,
    T? googlePlay,
    T? getApps,
    T? packageInstaller,
    T? ruStore,
    T? appGallery,
    T? other,
    T? unknown,
  }) =>
      mapValue<T>(
        appStore: appStore ?? orElse,
        googlePlay: googlePlay ?? orElse,
        getApps: getApps ?? orElse,
        packageInstaller: packageInstaller ?? orElse,
        ruStore: ruStore ?? orElse,
        appGallery: appGallery ?? orElse,
        other: other ?? orElse,
        unknown: unknown ?? orElse,
      );

  T? maybeMapOrNull<T>({
    T Function()? appStore,
    T Function()? googlePlay,
    T Function()? getApps,
    T Function()? packageInstaller,
    T Function()? ruStore,
    T Function()? appGallery,
    T Function()? other,
    T Function()? unknown,
  }) =>
      maybeMap<T?>(
        orElse: () => null,
        appStore: appStore,
        googlePlay: googlePlay,
        getApps: getApps,
        packageInstaller: packageInstaller,
        ruStore: ruStore,
        appGallery: appGallery,
        other: other,
        unknown: unknown,
      );

  T? maybeMapOrNullValue<T>({
    T? appStore,
    T? googlePlay,
    T? getApps,
    T? packageInstaller,
    T? ruStore,
    T? appGallery,
    T? other,
    T? unknown,
  }) =>
      maybeMapValue<T?>(
        orElse: null,
        appStore: appStore,
        googlePlay: googlePlay,
        getApps: getApps,
        packageInstaller: packageInstaller,
        ruStore: ruStore,
        appGallery: appGallery,
        other: other,
        unknown: unknown,
      );

  static List<List<String>> getListPackageId() =>
      EnumStore.values.map((e) => e.packageId).toList();

  static List<String> getListUrl() =>
      EnumStore.values.map((e) => e.url).toList();

  static List<String> getListName() =>
      EnumStore.values.map((e) => e.name).toList();

  static List<String> getListVendor() =>
      EnumStore.values.map((e) => e.vendor).toList();

  @override
  int compareTo(EnumStore other) => index.compareTo(other.index);
}

extension $EnumStore on EnumStore {
  bool get isAppStore => this == EnumStore.appStore;
  bool get isGooglePlay => this == EnumStore.googlePlay;
  bool get isGetApps => this == EnumStore.getApps;
  bool get isPackageInstaller => this == EnumStore.packageInstaller;
  bool get isRuStore => this == EnumStore.ruStore;
  bool get isAppGallery => this == EnumStore.appGallery;
  bool get isOther => this == EnumStore.other;
  bool get isUnknown => this == EnumStore.unknown;
}
