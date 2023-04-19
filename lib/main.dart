import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nuvio/view/plans/edit_plan.dart';

import 'core/common/home.dart';
import 'view/plans/plan_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dime',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(
          ThemeData.light().textTheme,
        ),
        colorScheme: const ColorScheme.light(
          primary: Color.fromRGBO(0, 230, 118, 1),
          secondary: Color.fromRGBO(255, 224, 130, 1),
          error: Colors.redAccent,
          background: Color(0xFF0b0d0f),
          surface: Color(0xFF101213),
          onSurface: Color(0xFFccd2e3),
          onBackground: Color(0xFF6a6a6a),
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const MyHomePage(title: 'Dime App'),
        '/plan_details': (context) => const PlanDetailScreen(),
        '/create_plan': (context) => const EditPlanScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Home(),
    );
  }
}
