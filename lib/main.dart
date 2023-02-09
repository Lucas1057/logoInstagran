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
          Center(
            child: Container(
              height: 500,
              width: 400,
              color: Colors.black,
            ),
          ), //container 1
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

          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 5)),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white, width: 5),
            ),
          ),
          Positioned(
              right: 225,
              top: 277,
              child: Container(
                height: 10,
                width: 10,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              ))
        ],
      ),
    );
  }
}
/**/