import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.colorButton,
    required this.name,
    required this.onPressed,
    required this.colorText,
  });
  final Color colorButton;
  final Color colorText;
  final String name;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 60),
        backgroundColor: colorButton,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Color(0xff115573)),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
      child: Text(
        name,
        style: TextStyle(color: colorText),
      ),
    );
  }
}
