import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/ui_providers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UiProvider())
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes:{
          'home': (BuildContext context) => HomePage(),
      'map': (BuildContext context) => MapPage()
        },
      
        theme: ThemeData(
          primaryColor: Colors.cyan,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.lightGreen
          ),
          navigationBarTheme: NavigationBarThemeData(
          )
      
        ),
      
      ),
    );
  }
}
