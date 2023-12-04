import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  final LinearGradient? colors;
  final Color? color;
  final TextStyle? style;
  final double width;

  const MyButton({
    super.key,
    required this.text,
    required this.onPress,
    this.colors,
    this.color,
    this.style,
    this.width = 315,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          gradient: colors,
          color: color,
          // gradient: const LinearGradient(
          //   colors: [
          //     AppColors.lightBlue,
          //     AppColors.blue,
          //   ],
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          // ),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
  }
}
