import 'package:flutter/material.dart';
class ExpeDisplay extends StatelessWidget {
  const ExpeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expand display'),
      ),
      body: Column(
        children: [
          Text('Test-1',
          style: TextStyle(
            fontSize: 30,
          ),
          ),
          Text('Test-1',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text('Test-1',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text('Test-1',
            style: TextStyle(
              fontSize: 30,
            ),
          ),

          Expanded(
            child: ListView.builder(
               itemCount: 20,
              itemBuilder: (context, index){
                 return ListTile(
                   title: Text(index.toString()),
                 );
              }
            ),
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.red,
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}
