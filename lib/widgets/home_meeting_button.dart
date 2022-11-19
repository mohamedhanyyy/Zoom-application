import 'package:flutter/material.dart';

class HomeMeetingButton extends StatelessWidget {
  const HomeMeetingButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black54,
                  offset: Offset(0, 4),
                )
              ],
            ),
            width: 60,
            height: 60,
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
