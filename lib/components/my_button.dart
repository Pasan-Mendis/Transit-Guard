import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color customColor;
  final String text;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.customColor,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: customColor,
        ),
        child: Center(
          child: Text(text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: "Ubuntu",
              )),
        ),
      ),
    );
  }
}
