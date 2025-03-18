import 'package:coffee_shop/screens/caffely_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white, // Set background color for all screens
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            backgroundColor: Colors.white, // White AppBar
            surfaceTintColor: Colors.transparent, // Prevents color changes on scroll
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            brightness: Brightness.light,
            primary: Colors.black,
            // Default text and icon color for contrast
            onPrimary: Colors.white,
            secondary: Colors.grey,
            // Adjust as needed for specific UI elements
            surface: Colors.white,
            // Set surface color to white
            onSurface: Colors.black, // Text color on white surfaces
          ),
        ),
        home: const CaffelySplashScreen());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('this is home page'),
    );
  }
}
