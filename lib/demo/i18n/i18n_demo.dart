import 'package:flutter/material.dart';
// import 'package:flutter_app/demo/i18n/map/zxz_demo_localizations.dart';
import 'package:flutter_app/demo/i18n/intl/zxz_demo_localizations.dart';

class I18nDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('I18nDemo'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(locale.toString()),
            Text(
              // Localizations.of(context, ZxzDemoLocalizations).title,
              // ZxzDemoLocalizations.of(context).title,
              ZxzDemoLocalizations.of(context).greet('Zxz'),
              style: Theme.of(context).textTheme.title,
            )
          ],
        ),
      ),
    );
  }
}
