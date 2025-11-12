import 'package:flutter/material.dart';
class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          Container(
            height: 120,
            width: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(image: NetworkImage('https://www.sunsiyam.com/media/fwrnjqg5/vilu_reef_aqua_villa_0124.jpg?width=779&height=519&mode=max'))
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            child: Row(
              children: [
                Text('Maldives',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
