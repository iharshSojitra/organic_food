import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen_3 extends StatefulWidget {
  const screen_3({Key? key}) : super(key: key);

  @override
  State<screen_3> createState() => _screen_3State();
}

class _screen_3State extends State<screen_3> {
  List color1 = [
    Colors.pink.shade200,
    Colors.green.shade200,
    Colors.orangeAccent.shade200,
    Colors.red.shade200,
  ];
  List name1 = [
    "Peach",
    "Basil",
    "Pumpkin",
    "Tomato",
  ];
  List name2 = [
    "Spain",
    "Italy",
    "Ukraine",
    "Holland",
  ];
  List name3 = [
    "\$3.15",
    "\$1.50",
    "\$3.50",
    "\$5.75",
  ];
  List name4 = [
    "(kg)",
    "(pc)",
    "(kg)",
    "(kg)",
  ];
  List images2 = [
    'assets/images/peach.png',
    'assets/images/basil.png',
    'assets/images/pumpkin.png',
    'assets/images/tomato.png',
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                        color: Colors.black54,
                      )),
                  Text(
                    "My Cart",
                    style: TextStyle(color: Colors.black45, fontSize: 20),
                  ),
                  Spacer(),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/images/logo_user.png'),
                        height: 33,
                        width: 33,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: 133,
                            width: 135,
                            margin: EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                                color: color1[index],
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(images2[index]),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name1[index],
                                  style: TextStyle(
                                    color: color1[index],
                                    fontSize: 25,
                                  ),
                                ),
                                Text(
                                  name2[index],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 17,
                                  ),
                                ),
                                Text(
                                  name3[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                add(),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(25)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            "\$13.90",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 45,
                            width: 160,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13)),
                            child: Center(
                                child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: Colors.lightGreen.shade800,
                                  fontSize: 18),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              selected++;
            });
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(7)),
            child: InkResponse(
              child: Icon(Icons.add),
            ),
          ),
        ),
        Text(
          '$selected',
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              if (selected > 1) {
                selected--;
              }
            });
          },
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(7)),
            child: InkResponse(
              child: Icon(Icons.remove),
            ),
          ),
        ),
      ],
    );
  }
}
