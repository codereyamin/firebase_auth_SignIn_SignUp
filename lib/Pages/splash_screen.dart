import 'package:flutter/material.dart';

class SpleshScreen extends StatelessWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      color: Colors.white,
      child: Container(
        width: 100,
        height: 100,
        child: Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
