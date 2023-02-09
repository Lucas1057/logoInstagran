import 'package:flutter/material.dart';

void main() {
  runApp(const meuapp());
}

// ignore: camel_case_types
class meuapp extends StatelessWidget {
  const meuapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        //container 1--------------------------------------------
        Container(
          height: 120,
          width: 120,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(146, 181, 18, 0.988),
                Color.fromARGB(255, 206, 30, 30),
                Color.fromARGB(255, 231, 25, 56),
                Color.fromARGB(255, 155, 23, 113),
                Color.fromARGB(255, 93, 12, 180)
              ], // array de color
              begin: FractionalOffset.topLeft,
              // end: Alignment.bottomRight,
              //stops: [0, 0, 1.0],
              tileMode: TileMode.clamp,
            ),
            //borda========================
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
        ),
//container 2--------------------------------------------
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white, width: 5)),
        ),
        //container 3-------------------------------------
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white, width: 5),
          ),
        ),
        //container 4--------------------------------------
        Positioned(
            right: 31,
            top: 35,
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
            ))
      ],
    ));
  }
}
/**/