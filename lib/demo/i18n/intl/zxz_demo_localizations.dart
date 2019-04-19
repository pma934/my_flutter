import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'zxz_demo_messages_all.dart';

class ZxzDemoLocalizations {
  static ZxzDemoLocalizations of(BuildContext context){
    return Localizations.of<ZxzDemoLocalizations>(
      context,
      ZxzDemoLocalizations
    );
  }

  static Future<ZxzDemoLocalizations> load(Locale locale){
    final String name = 
      locale.countryCode.isEmpty?locale.languageCode:locale.toString();

    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _){
      Intl.defaultLocale = localeName;
      return ZxzDemoLocalizations();
    });
  }

  String get title =>
      Intl.message('hello', name: 'title', desc: 'demo localizations.');

  String greet(String name) => Intl.message(
        'hello $name',
        name: 'greet',
        desc: 'greet someone',
        args: [name],
      );
}

class ZxzDemoLocalizationsDelegate
    extends LocalizationsDelegate<ZxzDemoLocalizations> {
  ZxzDemoLocalizationsDelegate();

  @override
  Future<ZxzDemoLocalizations> load(Locale locale) {
    return ZxzDemoLocalizations.load(locale);
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

// flutter pub pub run intl_translation:extract_to_arb --output-dir=lib/deb/demo/i18n/intl/ lib/demo/i18n/intl/zxz_demo_localizations.dart
