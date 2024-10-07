// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List dice = [
    "assets/dice app images/d1.png",
    "assets/dice app images/d2.png",
    "assets/dice app images/d3.png",
    "assets/dice app images/d4.png",
    "assets/dice app images/d5.png",
    "assets/dice app images/d6.png"
  ];
  int? randomNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            randomNumber = Random().nextInt(6);
            print(randomNumber);
            setState(() {});
          },
          child: Image.asset(
              randomNumber == null
                  ? "assets/dice app images/button.png"
                  : dice[randomNumber!],
              height: 200,
              width: 200),
        ),
      ),
    );
  }
}

/*Another Way

// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? randomNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            randomNumber = Random().nextInt(6) + 1;
            print(randomNumber);
            setState(() {});
          },
          child: Image.asset(
              randomNumber == null
                  ? "assets/dice app images/button.png"
                  : "assets/dice app images/d$randomNumber.png",
              height: 200,
              width: 200),
        ),
      ),
    );
  }
}
*/






































// // ignore_for_file: avoid_print

// import 'dart:math';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   List dice = [
//     " assets/dice app images/button.png",
//     " assets/dice app images/d1.png",
//     " assets/dice app images/d2.png",
//     " assets/dice app images/d3.png",
//     " assets/dice app images/d4.png",
//     " assets/dice app images/d5.png",
//     " assets/dice app images/d6.png"
//   ];
//   int? randomNumber;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: InkWell(
//               onTap: () {
//                 randomNumber = Random().nextInt(6) + 1;
//                 print(randomNumber);
//                 setState(() {
               
//                 });
//               },
//               child: Image.asset(
//                   height: 200,
//                   width: 200,
//                   "assets/dice app images/button.png"))),
//     );
//   }
// }
