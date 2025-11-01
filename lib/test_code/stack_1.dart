import 'package:flutter/material.dart';
class Stack1 extends StatelessWidget {
  const Stack1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack-1'),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                  ),
                    height: 200,
                    width: 200,


                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(height: 100, width: 100, color: Colors.blue),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Text('Top Layer',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                ),
                // Positioned image
                Positioned(
                  top: 60,
                  left: 60,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network('https://www.daily.co/blog/content/images/size/w2000/2023/07/Flutter-feature.png',
                      height: 80,
                      width: 80,

                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
