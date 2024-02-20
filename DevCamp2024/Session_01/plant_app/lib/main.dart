import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 20),
          color: Colors.green[400],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: const Icon(Icons.arrow_back_ios_new),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: const Icon(Icons.more_horiz_outlined),
              )
            ],
          ),
        ),
        ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            color: Colors.green[400],
            height: 250,
          ),
        ),
      ])),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    // (0,0) // 1.Point
    path.lineTo(0, h - 100); // 2.Point
    path.quadraticBezierTo(
      w * 0.5, // 3. Point
      h + 100, // 3. Point
      w, // 4. Point
      h - 100, // 4. Point
    );
    path.lineTo(w, 0); // 5.Point
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
