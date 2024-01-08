import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lapor_book/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Lapor Book',
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashPage(),
      '/login': (context) => LoginPage(),
      '/register': (context) => const RegisterPage(),
      '/dashboard': (context) => const DashboardPage(),
      '/add': (context) => const AddFormPage(),
      '/detail': (context) => const DetailPage(),
    },
  ));
}
