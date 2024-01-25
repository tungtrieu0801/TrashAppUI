import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  final Color color;
  final double width;
  final double height;
  final String text;
  final TextStyle textStyle;
  final ImageProvider imageProvider;

  const Button({
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // Align children in the center
          children: [
            Image(
              image: imageProvider,
              width: width * 0.4,
              height: height * 0.6,
            ),
            SizedBox(width: 8),
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
