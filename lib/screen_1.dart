import 'package:flutter/material.dart';

class screen_1 extends StatefulWidget {
  const screen_1({Key? key}) : super(key: key);

  @override
  State<screen_1> createState() => _screen_1State();
}

class _screen_1State extends State<screen_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Get",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Organic Food",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Find the freshest food and get\nfree delivery in your town",
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 40,
              ),
              Image(
                image: AssetImage('assets/images/girl_png.png'),
                height: 400,
                width: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
