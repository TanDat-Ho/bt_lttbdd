import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
          child: Column(
            mainAxisSize: MainAxisSize.min, //khoangả chiều dài trục chính vừa đủ nhìn
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/avatar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Text(
                'Ho Tan Dat',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 5),
              Text(
                'Viet Nam',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF000000),
                ),
              ),

              SizedBox(height: 20), // khoảng cách với vòng tròn
              
            ],
          ),
        ),

          Positioned(
            top: 20, left: 20,
            child: FloatingActionButton(
              mini: true,
              onPressed: () {},
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
          ),

          Positioned(
            top: 20, right: 20,
            child: FloatingActionButton(
              mini: true,
              onPressed: () {},
              child: Icon(Icons.book, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}