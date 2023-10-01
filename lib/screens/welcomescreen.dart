import 'package:flutter/material.dart';
import 'package:projectyatratest/screens/signup_login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffe5e5e5),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 50),
          child: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 340,
                  child: Column(
                    children: [
                      const Text(
                        "Project यात्रा",
                        style: TextStyle(fontSize: 60),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Empowering your project journey",
                        style: TextStyle(
                            fontSize: 18,
                            color: const Color(0xff808080).withOpacity(0.7)),
                      )
                    ],
                  )),
              Positioned(
                left: 70,
                right: 70,
                bottom: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.9),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignupLogin())));
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(22),
                    child: Text("Get Started",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xfff5f5f5),
                        )),
                  ),
                ),
              ),
            ],
          )),
    ));
  }
}
