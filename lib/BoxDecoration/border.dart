import 'package:flutter/material.dart';

class BoxDecorationBorderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BoxDecoration border')
      ),
      body:  Center(
        child: Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.green,
            border: Border.all(
              color: Colors.black,
              width: 10
            )
          ),
        ),
      )
    );
  }
}
