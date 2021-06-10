import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff223453),
        body: Center(
          child: Container(
            child: Text(
              "TEST",
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
      ),
    );
  }
}
