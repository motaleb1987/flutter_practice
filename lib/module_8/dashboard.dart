import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final args=ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Column(
        children: [
            Text("User Name: ${args['phone'].toString()}",
            style: TextStyle(
              fontSize: 30,
              color: Colors.orange
            ),
            ),
          Text("Password : ${args['password'].toString()}",
            style: TextStyle(
                fontSize: 30,
                color: Colors.orange
            ),
          ),
        ],
      ),
    );
  }
}
