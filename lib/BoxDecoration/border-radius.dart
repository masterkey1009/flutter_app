import 'package:flutter/material.dart';

class BoxDecorationBorderRadiusPage extends StatelessWidget {
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
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(50)
                )
            ),
          ),
        )
    );
  }
}
