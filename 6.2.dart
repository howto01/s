////////////////////////////////////////////////////////////////////////main.dart


import 'package:flutter/material.dart';


import 'home_page.dart';


void main() {runApp( MyApp());}


class MyApp extends StatelessWidget {


  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: HomePage(),

    );

  }

}

////////////////////////////////////////////////////////////////////////////////////////////////////home_page.dart


import 'package:charts_flutter/flutter.dart' as charts;

import 'package:flutter/material.dart';


import 'bar_chart_model.dart';


class HomePage extends StatelessWidget {

  final List<BarChartModel> data = [

    BarChartModel(

      year: "1997",

      financial: 250,

      color: charts.ColorUtil.fromDartColor(Colors.white70),

    ),

    BarChartModel(

      year: "1998",

      financial: 300,

      color: charts.ColorUtil.fromDartColor(Colors.yellow),

    ),

    BarChartModel(

      year: "1999",

      financial: 100,

      color: charts.ColorUtil.fromDartColor(Colors.green),

    ),

    BarChartModel(

      year: "2000",

      financial: 450,

      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),

    ),

    BarChartModel(

      year: "2001",

      financial: 630,

      color: charts.ColorUtil.fromDartColor(Colors.blue),

    ),

    BarChartModel(

      year: "2002",

      financial: 950,

      color: charts.ColorUtil.fromDartColor(Colors.purpleAccent),

    ),

    BarChartModel(

      year: "2002",

      financial: 400,

      color: charts.ColorUtil.fromDartColor(Colors.deepPurpleAccent),

    ),

  ];


  @override

  Widget build(BuildContext context) {

    List<charts.Series<BarChartModel, String>> series = [

      charts.Series(

        id: "financial",

        data: data,

        domainFn: (BarChartModel series, _) => series.year,

        measureFn: (BarChartModel series, _) => series.financial,

        colorFn: (BarChartModel series, _) => series.color,

      ),

    ];


    return Scaffold(

      appBar: AppBar(

        title: const Text("Bar Chart"),

        centerTitle: true,

        backgroundColor: Colors.green[700],

      ),

      body: Container(

        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),

        child: charts.BarChart(

          series,

          animate: true,

        ),

      ),

    );

  }

}

pubspec



name: bar_chart_flutter

description: A new Flutter project.


# The following line prevents the package from being accidentally published to

# pub.dev using `flutter pub publish`. This is preferred for private packages.

publish_to: 'none' # Remove this line if you wish to publish to pub.dev


# The following defines the version and build number for your application.

# A version number is three numbers separated by dots, like 1.2.43

# followed by an optional build number separated by a +.

# Both the version and the builder number may be overridden in flutter

# build by specifying --build-name and --build-number, respectively.

# In Android, build-name is used as versionName while build-number used as versionCode.

# Read more about Android versioning at https://developer.android.com/studio/publish/versioning

# In iOS, build-name is used as CFBundleShortVersionString while build-number used as CFBundleVersion.

# Read more about iOS versioning at

# https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CoreFoundationKeys.html

version: 1.0.0+1


environment:

  sdk: ">=2.15.1 <3.0.0"


# Dependencies specify other packages that your package needs in order to work.

# To automatically upgrade your package dependencies to the latest versions

# consider running `flutter pub upgrade --major-versions`. Alternatively,

# dependencies can be manually updated by changing the version numbers below to

# the latest version available on pub.dev. To see which dependencies have newer

# versions available, run `flutter pub outdated`.

dependencies:

  flutter:

    sdk: flutter


  # The following adds the Cupertino Icons font to your application.

  # Use with the CupertinoIcons class for iOS style icons.

  cupertino_icons: ^1.0.2

  charts_flutter: ^0.12.0


dev_dependencies:

  flutter_test:

    sdk: flutter


  # The "flutter_lints" package below contains a set of recommended lints to

  # encourage good coding practices. The lint set provided by the package is

  # activated in the `analysis_options.yaml` file located at the root of your

  # package. See that file for information about deactivating specific lint

  # rules and activating additional ones.

  flutter_lints: ^1.0.0


# For information on the generic Dart part of this file, see the

# following page: https://dart.dev/tools/pub/pubspec


# The following section is specific to Flutter.

flutter:


  # The following line ensures that the Material Icons font is

  # included with your application, so that you can use the icons in

  # the material Icons class.

  uses-material-design: true


  # To add assets to your application, add an assets section, like this:

  # assets:

  #   - images/a_dot_burr.jpeg

  #   - images/a_dot_ham.jpeg


  # An image asset can refer to one or more resolution-specific "variants", see

  # https://flutter.dev/assets-and-images/#resolution-aware.


  # For details regarding adding assets from package dependencies, see

  # https://flutter.dev/assets-and-images/#from-packages


  # To add custom fonts to your application, add a fonts section here,

  # in this "flutter" section. Each entry in this list should have a

  # "family" key with the font family name, and a "fonts" key with a

  # list giving the asset and other descriptors for the font. For

  # example:

  # fonts:

  #   - family: Schyler

  #     fonts:

  #       - asset: fonts/Schyler-Regular.ttf

  #       - asset: fonts/Schyler-Italic.ttf

  #         style: italic

  #   - family: Trajan Pro

  #     fonts:

  #       - asset: fonts/TrajanPro.ttf

  #       - asset: fonts/TrajanPro_Bold.ttf

  #         weight: 700

  #

  # For details regarding fonts from package dependencies,

  # see https://flutter.dev/custom-fonts/#from-packages

//////////////////////////////////////////////////////////////////////////////////////////////bar_chart_model.dart



import 'package:charts_flutter/flutter.dart' as charts;


class BarChartModel {

  String year;

  int financial;

  final charts.Color color;


  BarChartModel({

    required this.year,

    required this.financial,

    required this.color,

  });

}

