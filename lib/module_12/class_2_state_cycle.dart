import 'package:flutter/material.dart';
import 'package:flutter_practice/module_12/password_visable.dart';
class StateLifeCycle extends StatefulWidget {
   StateLifeCycle({super.key}){
     print('1. Constructor');
   }

  @override
  State<StateLifeCycle> createState(){
     print('2. CreateState');
     return _StateLifeCycleState();
  }
}
/// State name
/// 1. createState
/// 2. initState
/// 3. didChangeDependencies
/// 4. build


class _StateLifeCycleState extends State<StateLifeCycle> {
  String name = 'Demo';
  Color bgColor=Colors.red;
  @override
  void initState() {
    // TODO: implement initState
    print('3. init State Called');
    bgColor=Colors.green;
    name='Motaleb';
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('4. didChangeDependencies');
    bgColor=Colors.purple;
    name='Muhin';
    super.didChangeDependencies();
  }

  // ak page theke onno page gele deactivate abong dispose use kora hoy.
  @override
  void deactivate() {
    // TODO: implement deactivate
    print('5 eactive');

    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print('6. dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                // setState(() {
                //   print('clicked');
                // });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PassVisable()));
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: bgColor,
                ),
                child: Text('Hello, this is $name', style: TextStyle(fontSize: 30),),
                
              ),
            ),
          ],
        ),
      ),
    );
  }

}
