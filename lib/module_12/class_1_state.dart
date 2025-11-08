import 'package:flutter/material.dart';
class StateClass extends StatefulWidget {
   StateClass({super.key});

  @override
  State<StateClass> createState() => _StateClassState();
}

class _StateClassState extends State<StateClass> {
  int num=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Counting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(num.toString(), style: TextStyle(fontSize: 80, color: Colors.red),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
             //   Spacer(),
                IconButton(onPressed: (){
                  setState(() {
                    num++;
                    print(num);
                  });

                }, icon: Icon(Icons.add)),
             //   Spacer(),
                IconButton(onPressed: (){

                  setState(() {
                    num--;
                    print(num);
                  });
                }, icon: Icon(Icons.minimize)),
              //  Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
