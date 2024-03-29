import 'package:flutter/material.dart';
import 'package:layout_basic/main_screen.dart';
import 'package:layout_basic/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Layout Provider',
        theme: ThemeData(),
        home: const MainScreen(),
      ),
    );
  }
}
