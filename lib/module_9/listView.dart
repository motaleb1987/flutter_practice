import 'package:flutter/material.dart';
class Lview extends StatelessWidget {
  const Lview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView',),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              title: Text('Motaleb'),
              subtitle: Text('01911542763'),
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete, color: Colors.red,),
            ),
          );
        },
      ),
    );
  }
}
