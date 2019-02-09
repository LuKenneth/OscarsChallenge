// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'category_page.dart';
import 'login.dart';
import 'colors.dart';

final ThemeData _kTheme = _buildTheme();

class OscarChallengeApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oscar Challenge',
      home: CategoryPage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
      // Add a theme (103)
      theme: _kTheme,
    );
  }

  Route<dynamic> _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => LoginPage(),
      fullscreenDialog: true,
    );
  }
}

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kOscarLightTan,
    primaryColor: kOscarDarkTan,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: kOscarDarkTan,
      textTheme: ButtonTextTheme.normal,
    ),
    scaffoldBackgroundColor: kOscarSurfaceWhite,
    cardColor: kOscarSurfaceWhite,
    textSelectionColor: kOscarDarkTan,
    errorColor: kErrorRed,
    textTheme: _buildTextTheme(base.textTheme),
    primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildTextTheme(base.accentTextTheme),
    primaryIconTheme: base.iconTheme.copyWith(
      color: kOscarLightTan,
    )
  
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    headline: base.headline.copyWith(
      fontWeight: FontWeight.w500,
    ),
    title: base.title.copyWith(
      fontSize: 18.0,
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14.0,
    )
  ).apply(
    fontFamily: 'Futura',
    displayColor: kOscarDarkTan,
    bodyColor: kOscarDarkTan,
  );
}
