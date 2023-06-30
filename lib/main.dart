import 'package:flutter/material.dart';
// import 'package:pixa_bay/ui/main/main_screen.dart';
// import 'package:pixa_bay/ui/main/main_view_model.dart';
import 'package:pixa_bay_example/ui/main/main_screen.dart';
import 'package:pixa_bay_example/ui/main/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MainViewModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}
