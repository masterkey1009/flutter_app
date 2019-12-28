import 'package:flutter/material.dart';

import 'Index/index.dart';
import 'BoxDecoration/border.dart';
import 'BoxDecoration/border-radius.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      initialRoute: '/',
      routes: <String, WidgetBuilder> {
        '/': (context) => IndexPage(),
        '/box-decoration/border': (context) => BoxDecorationBorderPage(),
        '/box-decoration/border-radius': (context) => BoxDecorationBorderRadiusPage()
      }
    );
  }
}
