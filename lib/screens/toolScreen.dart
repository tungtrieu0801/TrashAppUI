import 'package:flutter/material.dart';

import 'package:trashxapp/screens/SupportScreen.dart';
import 'package:trashxapp/screens/clearScreen.dart';
import 'package:trashxapp/screens/SecurityScreen.dart';

import '../component/Button.dart';

class ToolScreen extends StatelessWidget {
  const ToolScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text("Công cụ",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(27.0),
        children: [
          Button(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ClearScreen(),
                ),
              );
            },
            color: Colors.blue,
            text: "Dọn dẹp sạch sẽ",
            width: screenSize.width * 0.35,
            height: screenSize.height * 0.08,
            textStyle: TextStyle(color: Colors.white, fontSize: 19),
            imageProvider: AssetImage('images/trash.png'),
          ),
          SizedBox(height: screenSize.height * 0.04),
          Button(
            onTap: () {
              _showRatingDialog(context);
            },
            color: Colors.blue,
            text: "Đánh giá ứng dụng",
            width: screenSize.width * 0.35,
            height: screenSize.height * 0.08,
            textStyle: TextStyle(color: Colors.white, fontSize: 19),
            imageProvider: AssetImage('images/star.png'),
          ),
          SizedBox(height: screenSize.height * 0.04),
          Button(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SupportScreen(),
                ),
              );
            },
            color: Colors.blue,
            text: "Hỗ trợ khách hàng",
            width: screenSize.width * 0.35,
            height: screenSize.height * 0.08,
            textStyle: TextStyle(color: Colors.white, fontSize: 19),
            imageProvider: AssetImage('images/online-support.png'),
          ),
          SizedBox(height: screenSize.height * 0.04),
          Button(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecurityScreen(),
                ),
              );
            },
            color: Colors.blue,
            text: "Chính sách bảo mật",
            width: screenSize.width * 0.35,
            height: screenSize.height * 0.08,
            textStyle: TextStyle(color: Colors.white, fontSize: 19),
            imageProvider: AssetImage('images/encrypted.png'),
          ),
          SizedBox(height: screenSize.height * 0.04),
        ],
      ),
    );
  }

  void _showRatingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Text('Bạn có thích ứng dụng ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 7,),
              Text("của chúng tôi không?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              SizedBox(height: 15,),
              Text("Hãy cho chúng tôi biết",style: TextStyle(fontSize: 15),),
              SizedBox(height: 6,),
              Text("bằng cách xếp hạng 5 sao",style: TextStyle(fontSize: 15),),
              SizedBox(height: 15,)
            ],
          ),
          content: Container(
            height: 100,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Icons.thumb_up),
                      color: Colors.green,
                      onPressed: () {
                        // Xử lý khi người dùng chọn "Thích"
                        Navigator.of(context).pop(); // Đóng popup
                        // Gọi hàm hoặc chuyển đến màn hình thích nếu cần
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.thumb_down),
                      color: Colors.red,
                      onPressed: () {
                        // Xử lý khi người dùng chọn "Không thích"
                        Navigator.of(context).pop(); // Đóng popup
                        // Gọi hàm hoặc chuyển đến màn hình không thích nếu cần
                      },
                    ),
                  ],
                ),
                SizedBox(height: 34,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Xin cảm ơn!", style: TextStyle(fontSize: 12),)
                  ],
                )
              ],
            ),
          )

        );
      },
    );
  }
}
