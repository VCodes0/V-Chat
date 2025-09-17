import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vchat/view/screens/home_screen.dart';


late Size mq;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const VChat());
}

class VChat extends StatelessWidget {
  const VChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: CupertinoColors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: CupertinoColors.white,
          foregroundColor: CupertinoColors.black,
          shadowColor: CupertinoColors.black,
          surfaceTintColor: CupertinoColors.white,
          elevation: 4,
          centerTitle: true,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: HomeScreen(),
    );
  }
}
