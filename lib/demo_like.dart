import 'package:flutter/material.dart';

class demo_like extends StatefulWidget {
  const demo_like({Key? key}) : super(key: key);

  @override
  State<demo_like> createState() => _demo_likeState();
}

class _demo_likeState extends State<demo_like> {
  bool isobscured = true;
  bool isfavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            obscureText: isobscured,
            decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isobscured = !isobscured;
                    });
                  },
                  icon: Icon(isobscured == true
                      ? Icons.visibility
                      : Icons.visibility_off),
                )),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  isfavourite = !isfavourite;
                });
              },
              icon: isfavourite == true
                  ? Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )
                  : Icon(Icons.favorite_outline)),
        ],
      ),
    );
  }
}
