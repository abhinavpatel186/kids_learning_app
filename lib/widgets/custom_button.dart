import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomButton({Key? key, required this.label, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF6200EA), // 60% color
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        shadowColor: Colors.black.withOpacity(0.2),
        elevation: 5,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
          color: Colors.white, // 30% color
          fontSize: 18,
        ),
      ),
    );
  }
}