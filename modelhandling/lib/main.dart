import 'package:flutter/material.dart';
import 'package:modelhandling/screen/dashboard_screen.dart';
import 'package:modelhandling/screen/homepage.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: "https://jwtipnolmgrreiolpbjm.supabase.co", 
      anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imp3dGlwbm9sbWdycmVpb2xwYmptIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODcyNjksImV4cCI6MjA4NjQ2MzI2OX0.paYc9pCjjvE0sPh85unMhGBmsMH0AcpswsTofKGNy9Y"
      );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
