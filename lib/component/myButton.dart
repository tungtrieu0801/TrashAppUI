import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Color color;
  final double width;
  final double height;
  final String text;
  final TextStyle textStyle;
  final ImageProvider imageProvider;

  const MyButton({
    Key? key,
    required this.onTap,
    required this.color,
    required this.text,
    required this.width,
    required this.height,
    required this.textStyle,
    required this.imageProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: imageProvider,
              width: width * 0.3, // Điều chỉnh kích thước của ảnh theo nhu cầu
              height: height * 0.3,
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
