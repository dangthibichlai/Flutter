import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Stack(
    //   children: [
    //     Container(
    //       decoration: const BoxDecoration(
    //         image: DecorationImage(
    //           image: AssetImage('assets/images/login.png'),
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //     Container(),
    //   ],
    // );
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/login.png'), fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  SizedBox(width: 20),
                  Text(
                    " WELCOME TO",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      height: 17,
                      decoration: TextDecoration.none,
                    ),
                  ),

                ],
              )
            ],
            // children: const [Text("WELCOME")],
          ),
        ),
      ],
    );
    // return Container(
    //   decoration: const BoxDecoration(
    //     image: DecorationImage(
    //         image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
    //   ),
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
    //     body: Stack(children: [
    //       // Stack
    //       Container(
    //         padding: const EdgeInsets.only(left: 35, top: 80),
    //         child: const Text(
    //           "Welcome\nBack",
    //           style: TextStyle(color: Colors.white, fontSize: 33),
    //         ),
    //       ),
    //       SingleChildScrollView(
    //         child: Container(
    //           padding: EdgeInsets.only(
    //               right: 35,
    //               left: 35,
    //               top: MediaQuery.of(context).size.height * 0.5),
    //           child: Column(children: [
    //             TextField(
    //               decoration: InputDecoration(
    //                 fillColor: Colors.grey.shade100,
    //                 filled: true,
    //                 hintText: 'Email',
    //                 border: OutlineInputBorder(
    //                   borderRadius: BorderRadius.circular(10),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 30,
    //             ),
    //             TextField(
    //               obscureText: true,
    //               decoration: InputDecoration(
    //                 fillColor: Colors.grey.shade100,
    //                 filled: true,
    //                 hintText: 'Password',
    //                 border: OutlineInputBorder(
    //                   borderRadius: BorderRadius.circular(10),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 40,
    //             ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 const Text(
    //                   'Sign In',
    //                   style: TextStyle(
    //                     color: Color(0xff4c505b),
    //                     fontSize: 27,
    //                     fontWeight: FontWeight.w700,
    //                   ),
    //                 ),
    //                 CircleAvatar(
    //                   radius: 30,
    //                   backgroundColor: const Color(0xff4c505b),
    //                   child: IconButton(
    //                     color: Colors.white,
    //                     onPressed: () {},
    //                     icon: const Icon(Icons.arrow_forward),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(
    //               height: 40,
    //             ),
    //             Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   TextButton(
    //                     onPressed: () {
    //                       Navigator.pushNamed(context, 'register');
    //                     },
    //                     child: const Text(
    //                       'Sign Up',
    //                       style: TextStyle(
    //                         decoration: TextDecoration.underline,
    //                         fontSize: 18,
    //                         color: Color(0xff4c505b),
    //                       ),
    //                     ),
    //                   ),
    //                   TextButton(
    //                     onPressed: () {},
    //                     child: const Text(
    //                       'Forgot Password',
    //                       style: TextStyle(
    //                         decoration: TextDecoration.underline,
    //                         fontSize: 18,
    //                         color: Color(0xff4c505b),
    //                       ),
    //                     ),
    //                   ),
    //                 ]),
    //           ]),
    //         ),
    //       ),
    //     ]),
    //   ),
    // );
  }
}
