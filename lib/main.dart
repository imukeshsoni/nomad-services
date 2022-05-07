import 'package:flutter/material.dart';
import 'package:nomad_services/pages/profile_page.dart';
import 'package:nomad_services/pages/services_page.dart';
import 'package:nomad_services/utils/colors.dart';

void main() {
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
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const ServicesPage(),
    );
  }
}
