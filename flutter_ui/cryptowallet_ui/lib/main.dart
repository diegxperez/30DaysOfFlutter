import 'package:cryptowallet_ui/presentation/screens/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
        title: 'Crypto Wallet',
        debugShowCheckedModeBanner: false,
        home: const HomeView());
  }
}
