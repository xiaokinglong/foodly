import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('user'),
      ),
      body: ListView(
        children: [
          UserCard(),
        ],
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221,
      margin: const EdgeInsets.only(
        left: 18,
        right: 18,
      ),
      decoration: const BoxDecoration(
        color: Color.fromRGBO(205, 255, 255, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 31,
          bottom: 31,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                right: 38,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 50,
                    height: 36,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                    ),
                  ),
                  Container(
                    width: 50,
                    // decoration: const BoxDecoration(
                    //   color: Colors.yellow,
                    // ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(235, 0, 27, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // left: 10,
                          left: 20,
                          child: Opacity(
                            opacity: 0.8,
                            child: Container(
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(0, 161, 223, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 17,
              margin: const EdgeInsets.only(
                top: 18,
              ),
              child: const Text(
                "Card Number",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Container(
              width: 268,
              height: 25,
              margin: const EdgeInsets.only(
                top: 8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "1111",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      height: 1,
                    ),
                  ),
                  Text(
                    "2222",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      height: 1,
                    ),
                  ),
                  Text(
                    "4444",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      height: 1,
                    ),
                  ),
                  Text(
                    "4444",
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.black,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 298,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 4,
                          ),
                          child: const Text(
                            "Card Holder",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const Text(
                          "Jonathan",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 16,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 4,
                          ),
                          child: const Text(
                            "Expires",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const Text(
                          "29/May",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
