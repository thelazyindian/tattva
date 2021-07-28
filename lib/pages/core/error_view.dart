import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/error.png',
          height: 80.0,
          width: 80.0,
        ),
        const SizedBox(height: 24.0),
        Text(
          'SOME ERROR OCCURED!',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          'PULL TO REFRESH',
          style: TextStyle(
            fontSize: 13.0,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
