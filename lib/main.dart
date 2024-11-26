import 'package:flutter/material.dart';
import 'package:project_app3/Chat/ChatPage.dart';
import 'package:project_app3/Home.dart';
import 'package:project_app3/Login.dart';
import 'package:project_app3/SignUP.dart';
import 'package:project_app3/Welcome.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  static ButtonStyle btnSty = TextButton.styleFrom(
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    backgroundColor: const Color(0xFF234294),
    // backgroundColor: Colors.transparent,
    // side: const BorderSide(
    //   color: Color(0xFFF39DAA), // สีเส้นขอบ
    //   width: 2, // ความกว้างของเส้นขอบ
    // ),
    fixedSize: const Size(195, 60),
    // textStyle: const TextStyle(fontSize: 30),
    textStyle: const TextStyle(
        fontFamily: "Roboto", fontSize: 20, fontWeight: FontWeight.w500),
  );

  // static ButtonStyle btnSty = ButtonStyle(
  //   foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
  //     if (states.contains(MaterialState.pressed)) {
  //       return Colors.white; // เปลี่ยนสีตัวอักษรเมื่อชี้เมาส์
  //     }
  //     return const Color(0xFFF39DAA); // สีตัวอักษรก่อนชี้เมาส์
  //   }),
  //   backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
  //     if (states.contains(MaterialState.hovered)) {
  //       return const Color(0xFFF39DAA); // สีพื้นหลังเมื่อชี้เมาส์
  //     }
  //     return Colors.transparent; // พื้นหลังใสก่อนชี้เมาส์
  //   }),
  //   side: MaterialStateProperty.resolveWith<BorderSide>((states) {
  //     return BorderSide(
  //       color: const Color(0xFFF39DAA), // สีเส้นขอบ
  //       width: 2, // ความกว้างของเส้นขอบ
  //     );
  //   }),
  //   padding: MaterialStateProperty.all<EdgeInsets>(
  //     const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
  //   ),
  //   textStyle: MaterialStateProperty.all<TextStyle>(
  //     const TextStyle(
  //       fontFamily: "Roboto",
  //       fontSize: 20,
  //       fontWeight: FontWeight.w500,
  //     ),
  //   ),
  // );

  static ButtonStyle btnStyPink = TextButton.styleFrom(
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    backgroundColor: const Color(0xFFF39DAA),
    fixedSize: const Size(195, 65),
    // textStyle: const TextStyle(fontSize: 30),
    textStyle: const TextStyle(
        fontFamily: "Roboto", fontSize: 20, fontWeight: FontWeight.w500),
  );

  static ButtonStyle btnStyNullLinePink_ = TextButton.styleFrom(
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    backgroundColor: Colors.transparent,
    side: const BorderSide(
      color: Color(0xFFF39DAA), // สีเส้นขอบ
      width: 2, // ความกว้างของเส้นขอบ
    ),
    fixedSize: const Size(195, 65),
    // textStyle: const TextStyle(fontSize: 30),
    textStyle: const TextStyle(
        fontFamily: "Roboto", fontSize: 20, fontWeight: FontWeight.w500),
  );

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Welcome(),
      ),
      routes: {
        "/SignupP": (context) => Signup(),
        "/loginP": (context) => Login(),
        "/homeP": (context) => const Home(),
        "/chatP": (context) => const Chatpage(), // ต้องแน่ใจว่าได้ระบุแล้ว
      },
      
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 248, 225, 252),
          brightness: Brightness.light
          ),
      )

    
    );
  }
}
