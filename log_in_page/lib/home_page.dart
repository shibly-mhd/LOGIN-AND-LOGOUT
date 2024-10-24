import 'package:flutter/material.dart';
import 'package:log_in_page/log_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(153, 143, 107, 107),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogIn(),
                    ));
              },
              child: Text("Log out "))),
      appBar: AppBar(
        title: const Text("student log in "),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: const Duration(seconds: 3),
//       vsync: this,
//     )..repeat(reverse: true);

//     _animation = Tween<double>(begin: 5.0, end: 3).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );

//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(153, 143, 107, 107),
//       body: Stack(
//         children: [
//           AnimatedBuilder(
//             animation: _animation,
//             builder: (context, child) {
//               return Transform.scale(
//                 scale: _animation.value,
//                 child: child,
//               );
//             },
//             // child: Image.asset(
//             //   'assets/images/jouhar.jpg',
//             //   height: double.infinity,
//             //   width: double.infinity,
//             // ),
//           ),
//           Center(
//             child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => LogIn(),
//                       ));
//                 },
//                 child: Text("Log out")),
//           ),
//         ],
//       ),
//       appBar: AppBar(
//         title: const Text("student log in"),
//         centerTitle: true,
//         backgroundColor: Colors.grey,
//       ),
//     );
//   }
// }

// class LogIn extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login Page"),
//       ),
//       body: Center(
//         child: Text("Log In Page"),
//       ),
//     );
//   }
// }
