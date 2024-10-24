import 'package:flutter/material.dart';
import 'package:log_in_page/log_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    tologin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(58, 51, 196, 164),
      appBar: AppBar(
          title: const Text(
        "STUDENT INFO ",
        style: TextStyle(color: Color.fromARGB(255, 109, 93, 4)),
      )),
      body: Center(
        child: Image.asset('assets/images/student.jpeg', height: 400),
      ),
    );
  }

  Future<void> tologin() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => LogIn()),
    );
  }
}
