import 'package:flutter/material.dart';
class ButtonGrp extends StatelessWidget {
  const ButtonGrp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons',
        style: TextStyle(
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.blue,
      ),
      
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
                onPressed: (){
                  print('This is ElevatedButton');
                }, child: Text('ElevatedButton',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
            )),



          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                onPressed: (){
                  print('This is ElevatedButton-2');
                }, child: Text('Button-2',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
            )),
          ),
          SizedBox(height: 20,),
          OutlinedButton(onPressed: (){}, child: Text('Outline Button',
            style: TextStyle(
              fontSize: 20,
              color: Colors.pink
            ),

          )),
          SizedBox(height: 20,),
          TextButton(onPressed: (){
            print('Read More');
          }, child: Text('Read More..',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300
            ),
          )),
          SizedBox(height: 20,),
          
          Icon(Icons.phone,size: 50, color: Colors.red,),
          Icon(Icons.phone_android, size: 50, color: Colors.pink),
          IconButton(onPressed: (){}, icon: Icon(Icons.delete, color: Colors.red, size: 50)),
          GestureDetector(
            onTap: (){
              print('Single Time pressed');
            },
            onDoubleTap: (){
              print('Double Times pressed');
            },
            onLongPress: (){
              print('Long Time pressed on Text');
            },
            child: Text('GestureDetector Text',
            style: TextStyle(
              fontSize: 30,
              color: Colors.blueAccent
            ),
            ),
          ),
          InkWell(
            onTap: (){
              print('Single Time pressed');
            },
            onDoubleTap: (){
              print('Double Times pressed');
            },
            onLongPress: (){
              print('Long Time pressed on Text');
            },
            child: Text('InkWell Text click',
            style: TextStyle(
              fontSize: 40
            ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[400],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: (){
          print('This Clicked on Floating action Button ');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
