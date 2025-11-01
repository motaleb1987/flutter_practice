import 'package:flutter/material.dart';
class ThemeTest extends StatelessWidget {
  const ThemeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Test',
        style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                Text('Login Form',
                style: Theme.of(context).textTheme.headlineLarge,
                ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: 'User Name',
                labelText: 'Your ID'
              ),

            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password'
              ),

            ),
            ElevatedButton(
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.blue,
              //   foregroundColor: Colors.white,
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10)
              //   )
              // ),
                onPressed: (){}, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
