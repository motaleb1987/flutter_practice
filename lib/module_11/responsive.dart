import 'package:flutter/material.dart';
class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    bool isTablet= screenSize.width > 600;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Design'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('I am ${isTablet ? 'Tablet': 'Mobile'}',
              style: TextStyle(
                fontSize: 30,
                color: Colors.green
              ),
              ),

            isTablet ?  Row(
          children: [
          Icon(Icons.phone, size: 50,),
          SizedBox(width: 10,),
          Icon(Icons.person, size: 50,),
          SizedBox(width: 10,),
          Icon(Icons.home, size: 50,),
          SizedBox(width: 10,),
            Icon(Icons.phone, size: 50,),
          SizedBox(width: 10,),
          Icon(Icons.account_balance, size: 50,),


          ],
        ) : Column(
                children: [
                  Icon(Icons.phone, size: 50,),
                  SizedBox(height: 10,),
                  Icon(Icons.person, size: 50,),
                  SizedBox(height: 10,),
                  Icon(Icons.home, size: 50,),
                  SizedBox(height: 10,),Icon(Icons.phone, size: 50,),
                  SizedBox(height: 10,),
                  Icon(Icons.account_balance, size: 50,),
                  SizedBox(height: 10,),

                ],
              ),
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
              Text(screenSize.width.toString(),
              style: TextStyle(
                fontSize: .023*screenSize.width,
              ),
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
