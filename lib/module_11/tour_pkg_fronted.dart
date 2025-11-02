
import 'package:flutter/material.dart';
class TourPkg extends StatelessWidget {
  const TourPkg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                 height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: NetworkImage('https://www.sunsiyam.com/media/qnfnzgmq/ssiv_general_04.jpg?width=782&height=521&mode=max')),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      width: 350,
                      child: Text('Explore the World',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Container(
                      height: 60,
                      width: 350,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search destination',
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            )
        
          ],
        ),
      ),
    );
  }
}
