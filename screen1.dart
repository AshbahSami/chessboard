import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chess Board"),
        backgroundColor: Colors.black,
      ),
  
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(8, (index) {
          return rowWidget(index + 1);
        }),
      ),
    );
  }

  Row rowWidget(int number) {
    
    if (number.isEven) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
          boxWidget(Colors.white),
          boxWidget(Colors.black),
        ],
      );
    }
  }


  Widget boxWidget(Color color,) {
    return Container(
      height: 50,
      width: 50,
      color: color,
    
    );
  }
}
