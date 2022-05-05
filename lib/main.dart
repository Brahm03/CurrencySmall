import 'package:baseview/core/components/appTheme.dart';
import 'package:baseview/model/Currency_model.dart';
import 'package:baseview/service/Currency_service.dart';
import 'package:baseview/view/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CurrencyModelAdapter());
  await CurrencyService.openBox();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Apptheme.dark,
      home: const HomePage(),
    );
  }
}
