import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  final Function() onTap;

  const Buttons({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(36),
        ),
        margin: const EdgeInsets.only(bottom: 36),
        height: 47,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
