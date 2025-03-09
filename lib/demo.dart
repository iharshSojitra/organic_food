import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  bool isObscured = true;

  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              obscureText: isObscured,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(Icons.lock_outlined),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isObscured = !isObscured;
                      },
                    );
                  },
                  icon: Icon(isObscured == true
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(
                () {
                  isFavourite = !isFavourite;
                },
              );
            },
            icon: isFavourite == true
                ? Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                : Icon(Icons.favorite_border),
          ),
        ],
      ),
    );
  }
}
