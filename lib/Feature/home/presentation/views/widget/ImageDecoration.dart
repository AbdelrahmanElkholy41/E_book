import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class imageDecoration extends StatelessWidget {
  const imageDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(

            image: AssetImage('assets/images/test_image.png',),
            fit: BoxFit.fill,

          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
