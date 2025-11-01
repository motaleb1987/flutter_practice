import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController=TextEditingController();
    TextEditingController passwordController=TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('WEBS',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Image.network('https://clinmedjournals.org/articles/blogs/img/facebook-login.jpg'),
              Image.asset('assets/img_1.png',
              height: 200,
                width: 200,
              ),

              TextField(
                controller: phoneController,
                keyboardType: TextInputType.phone,
                maxLength: 5,
                cursorColor: Colors.orange,
                decoration: InputDecoration(
                    hintText: 'Enter Your ID',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  helperText: 'Ex: 149303',
                  helperStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 16
                  ),
                  labelText: 'Your ID',
                  labelStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold
                  ),
                  prefixIcon: Icon(Icons.person),
                  suffixIcon: Icon(Icons.check),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.orange)
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(20),
                )
              ),
              SizedBox(height: 20,),
              TextField(
                controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
          
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.orange)
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(20),
                  )
              ),
              SizedBox(height: 20,),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: (){
                        print(phoneController.text);
                        print(passwordController.text);
                        phoneController.clear();
                        passwordController.clear();
                      }, child: Text('Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  )))
            ],
          ),
        ),
      ),
    );
  }
}
