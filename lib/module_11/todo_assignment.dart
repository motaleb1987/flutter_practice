import 'package:flutter/material.dart';

class MyTodolist extends StatefulWidget {
  const MyTodolist({super.key});

  @override
  State<MyTodolist> createState() => _MyTodolistState();
}

class _MyTodolistState extends State<MyTodolist> {
  @override
  Widget build(BuildContext context) {
    TextEditingController tasksController=TextEditingController();

    // List<String> tasks=[];
    //
    // addTask(){
    //   tasks.add(tasksController.text);
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todo List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: tasksController,
                    decoration: InputDecoration(labelText: 'Enter Task'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add', style: TextStyle()),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (context, index){
                    return Card(
                      child: ListTile(
                        title: Text('Welcome to Walton'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                            IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                          ],
                        ),
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),

    );
  }
}
