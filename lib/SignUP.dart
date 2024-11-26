import 'package:flutter/material.dart';
import 'package:project_app3/main.dart';

class Signup extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  // ตัวแปรสำหรับเก็บค่าจาก TextField
  String username = '';
  String password = '';
  String email = '';

  Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF234294),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF234294), Color(0xFFF39DAA)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(1000),
              ),
            ),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "CHAT APP\n",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 50),

          // ช่องกรอก Email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 10),
            child: TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Color(0xFF234294), fontSize: 18),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF234294)),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          // ช่องกรอก Username
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 30),
            child: TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Color(0xFF234294), fontSize: 18),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF234294)),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          // ช่องกรอก Password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 10),
            child: TextField(
              controller: _passwordController,
              obscureText: true, // ซ่อนข้อความที่กรอก
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Color(0xFF234294), fontSize: 18),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF234294)),
                ),
              ),
            ),
          ),

          

          const SizedBox(height: 90),

          // ปุ่ม Log in
          ElevatedButton(
            onPressed: () {
              // ดึงค่าจาก TextField เมื่อกดปุ่ม
              setState(() {
                username = _usernameController.text;
                password = _passwordController.text;
                email = _emailController.text;
              });

              debugPrint('Username: $username');
              debugPrint('Password: $password');
              email = _emailController.text;


              Navigator.pushNamed(context, "/loginP");
            },
            style: MyApp.btnStyPink,
            child: const Text(
              'Log in',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}

void setState(Null Function() param0) {}
