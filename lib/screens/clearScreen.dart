import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ClearScreen extends StatefulWidget {
  const ClearScreen({super.key});

  @override
  State<ClearScreen> createState() => _ClearScreenState();
}

class _ClearScreenState extends State<ClearScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Dọn dẹp ứng dụng",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Lottie.asset('animation/scan.json',
              height: screenSize.height * 0.8),
        ],
      ),
    );
  }
}
