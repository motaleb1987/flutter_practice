import 'package:flutter/material.dart';
class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Design'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              Container(
                height: screenSize.height*0.2,
                width: screenSize.width*0.5,
                color: Colors.green,
              ),
              SizedBox(height: 20,),
              Text('Welcome to Headquarter',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red
              ),
              ),
              Text('Welcome to Corporate',
                style: TextStyle(
                    fontSize: .023*screenSize.width,
                    color: Colors.green
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
