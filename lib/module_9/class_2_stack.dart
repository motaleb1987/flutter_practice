import 'package:flutter/material.dart';

class Class2Stack extends StatelessWidget {
  const Class2Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/9/92/Tea_garden_in_Sylhet_%2840349163252%29.jpg',
                      ),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black45],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 50,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Bangladesh',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                      ),
                      Text('5.0',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                      ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Container(color: Colors.red, height: 200, width: 200),
                Positioned(
                  bottom: 50,
                  left: 10,
                  right: 10,
                  top: 10,
                  child: Container(
                    color: Colors.green,
                    height: 150,
                    width: 180,
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  bottom: 20,

                  child: Container(
                    color: Colors.purple,
                    height: 100,
                    width: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/512/3135/3135715.png',
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1),
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
