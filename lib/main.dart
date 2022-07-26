import 'package:core/core.dart';
import 'package:example/get_list/get_list_config.dart';
import 'package:example/get_list/presentation/pages/get_list_page.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetListConfig.init(BuildMode.demo);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GetListPage(),
    );
  }
}
