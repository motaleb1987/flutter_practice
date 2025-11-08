import 'package:flutter/material.dart';
class PassVisable extends StatefulWidget {
  const PassVisable({super.key});

  @override
  State<PassVisable> createState() => _PassVisableState();
}

class _PassVisableState extends State<PassVisable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Password showing'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                hintText: 'Password',
              ),
              
            )
          ],
        ),
      ),
    );
  }
}
