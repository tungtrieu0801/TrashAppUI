import 'package:flutter/material.dart';
import 'package:trashxapp/screens/HomeScreens.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "Hỗ trợ",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text input
            ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 400, // Set the minimum height
              ),
              child: TextField(
                controller: _textEditingController,
                maxLines: 16, // Set the maximum number of lines
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mô tả vấn đề (ít nhất 30 kí tự)',
                  alignLabelWithHint: true,
                ),
                style: TextStyle(fontSize: 18), // Set the font size
              ),
            ),
            SizedBox(height: 20), // Add some spacing between text input and button
            // Send button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              },
              child: Text('Gửi'),
            ),
          ],
        ),
      ),
    );
  }
}
