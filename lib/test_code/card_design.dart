import 'package:flutter/material.dart';
class BongoAcademy extends StatelessWidget {
  const BongoAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 450,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue[50]
              ),
            ),
            Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage('https://www.daily.co/blog/content/images/size/w2000/2023/07/Flutter-feature.png')
                      ),
                    ),

                  ),
                )
            ),

          ],
        ),
      ),
    );
  }
}
