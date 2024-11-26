import 'package:flutter/material.dart';
import 'package:project_app3/main.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF39DAA), Color(0xFF234294)]
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("WELCOME",
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text("Chat App",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text("Stay connected, anytime, anywhere.",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 400,
              ),
              ElevatedButton(
                  style: MyApp.btnStyPink,
                  onPressed: () {
                    Navigator.pushNamed(context, "/loginP");
                  },
                  child: const Text("Log In",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25),)),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: MyApp.btnStyPink,
                  onPressed: () {
                    Navigator.pushNamed(context, "/SignupP");
                    // Navigator.pop(context);
                  },
                  child: const Text("Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 25),)),
            ],
          ),
        ),
      ),
    );
  }
}
