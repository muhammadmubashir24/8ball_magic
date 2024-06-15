import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: ballPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class ballPage extends StatelessWidget {
  const ballPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      appBar: AppBar(
        title: Text('Ask Me Anything!'),
        centerTitle: true,
      ),
      body: ballBody(),
    );
  }
}

class ballBody extends StatefulWidget {
  const ballBody({super.key});

  @override
  State<ballBody> createState() => _ballBodyState();
}

class _ballBodyState extends State<ballBody> {
  int ballNumber = 1;
  void ballFunction() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                ballFunction();
                print(ballNumber);
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
