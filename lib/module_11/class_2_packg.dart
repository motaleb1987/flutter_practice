import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ResponsivePkg extends StatelessWidget {
  const ResponsivePkg({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Pkg Apply'),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: orientation == Orientation.landscape ? Axis.horizontal : Axis.vertical,
          child: orientation == Orientation.landscape ?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 0.25.sw,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 100.h,
                    width: 0.25.sw,
                    color: Colors.deepPurple,
                  ),
                  Container(
                    height: 100.h,
                    width: 0.25.sw,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100.h,
                    width: 0.25.sw,
                    color: Colors.lightBlue,
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 0.5.sw,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100.h,
                    width: 0.5.sw,
                    color: Colors.deepPurple,
                  ),
                ],
              ),
              Container(
                  width: 200.r,
                  height: 100.r,
                  color: Colors.blue
              ),
              Row(
                children: [
                  Container(
                    width: 0.3.sw,
                    height: 200.h,
                    color: Colors.teal,
                    child: Text('Container width is ${ 0.5.sw}'
                        'and Height ${200.h}'),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 250,
                      maxWidth: 200,
                    ).hw,
                    color: Colors.orange,
                    child: Text('Hello'),
                  ),
                ],
              ),


              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.green,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Text('Hello  Walton',
                style: TextStyle(
                    fontSize: 25
                ),
              ),
              Text('Hello  Walton Res',
                style: TextStyle(
                    fontSize: 25.sp
                ),
              )
            ],
          ) :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 0.25.sw,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 100.h,
                    width: 0.25.sw,
                    color: Colors.deepPurple,
                  ),
                  Container(
                    height: 100.h,
                    width: 0.25.sw,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100.h,
                    width: 0.25.sw,
                    color: Colors.lightBlue,
                  ),
                ],
              ),

              SizedBox(height: 20,),

              Row(
                children: [
                  Container(
                    height: 100.h,
                    width: 0.5.sw,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100.h,
                    width: 0.5.sw,
                    color: Colors.deepPurple,
                  ),
                ],
              ),
              Container(
                  width: 200.r,
                  height: 100.r,
                  color: Colors.blue
              ),
              Row(
                children: [
                  Container(
                    width: 0.3.sw,
                    height: 200.h,
                    color: Colors.teal,
                    child: Text('Container width is ${ 0.5.sw}'
                        'and Height ${200.h}'),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 250,
                      maxWidth: 200,
                    ).hw,
                    color: Colors.orange,
                    child: Text('Hello'),
                  ),
                ],
              ),


              Container(
                height: 200.h,
                width: 200.w,
                color: Colors.green,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              Text('Hello  Walton',
              style: TextStyle(
                fontSize: 25
              ),
              ),
              Text('Hello  Walton Res',
                style: TextStyle(
                    fontSize: 25.sp
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
