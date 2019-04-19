import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';

class ZxzDemoLocalizations {
  final Locale locale;

  ZxzDemoLocalizations(this.locale);

  static ZxzDemoLocalizations of(BuildContext context){
    return Localizations.of<ZxzDemoLocalizations>(
      context,
      ZxzDemoLocalizations
    );
  }

  static Map<String, Map<String, String>> _localized = {
    'en': {
      'title': 'hello',
    },
    'zh': {
      'title': '你好',
    }
  };

  String get title {
    return _localized[locale.languageCode]['title'];
  }
}

class ZxzDemoLocalizationsDelegate
    extends LocalizationsDelegate<ZxzDemoLocalizations> {
  ZxzDemoLocalizationsDelegate();

  @override
  Future<ZxzDemoLocalizations> load(Locale locale) {
    return SynchronousFuture<ZxzDemoLocalizations>(
        ZxzDemoLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) {
    return true;
  }

  @override
  bool shouldReload(LocalizationsDelegate<ZxzDemoLocalizations> old) {
    return false;
  }
}
