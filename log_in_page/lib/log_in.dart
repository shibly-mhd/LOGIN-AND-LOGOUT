import 'package:flutter/material.dart';
import 'package:log_in_page/home_page.dart';

class LogIn extends StatelessWidget {
  LogIn({super.key});

  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 222, 224),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _usernamecontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'username',
                ),
              ),
              const SizedBox(height: 10),
              // sized box only have size and width
              TextFormField(
                controller: _passwordcontroller,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password ',
                ),
              ),

              Text(_usernamecontroller.text),
              Text(_passwordcontroller.text),

              ElevatedButton.icon(
                onPressed: () {
                  print(_usernamecontroller);
                  print(_passwordcontroller);
                  checklogin(context);
                },
                icon: const Icon(Icons.check_box),
                label: const Text("log in"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void checklogin(BuildContext ctx) {
    final _username = _usernamecontroller.text;
    final _password = _passwordcontroller.text;

    if (_username == "Shibly" && _password == "12") {
      // go to home ;
      Navigator.of(ctx).pushReplacement(
        MaterialPageRoute(builder: (ctx) => HomePage()),
      );
      final _in = "log in successful";
      ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.fromARGB(255, 43, 31, 148),
        margin: EdgeInsets.all(10),
        content: Text(_in),
        duration: Duration(seconds: 2),
      ));
    } else {
      final _error = "username or password is error or something else  ";

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10),
          content: Text(_error),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}
