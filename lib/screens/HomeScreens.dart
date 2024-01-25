import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:trashxapp/component/myButton.dart';
import 'package:trashxapp/screens/toolScreen.dart';

import 'clearScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(screenSize.height * 0.05),
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: screenSize.height * 0.17,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ClearScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset('animation/main.json',
                            height: screenSize.height * 0.3),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.2,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                              height: screenSize.height * 0.1,
                              width: screenSize.width * 0.32,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: MyButton(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ToolScreen()));
                                    },
                                    imageProvider:
                                        AssetImage('images/tools.png'),
                                    color: Colors.white,
                                    text: "Công cụ",
                                    width: screenSize.width * 0.2,
                                    height: screenSize.height * 0.09,
                                    textStyle: TextStyle(color: Colors.black)),
                              )),
                        ],
                      ),
                      SizedBox(
                        width: screenSize.width * 0.1,
                      ),
                      Column(
                        children: [
                          Container(
                              height: screenSize.height * 0.1,
                              width: screenSize.width * 0.32,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: MyButton(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ClearScreen()));
                                    },
                                    imageProvider:
                                        AssetImage('images/trash.png'),
                                    color: Colors.white,
                                    text: "Dọn dẹp",
                                    width: 150,
                                    height: 70,
                                    textStyle: TextStyle(color: Colors.black)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
