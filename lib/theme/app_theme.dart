import 'package:flutter/material.dart';
class AppTheme{
   static final ThemeData lightTheme=ThemeData(
       brightness: Brightness.light,
       primaryColor: Colors.deepPurple,
       primarySwatch: Colors.deepPurple,
       //scaffoldBackgroundColor: Colors.grey.shade300,
       elevatedButtonTheme: ElevatedButtonThemeData(
           style: ElevatedButton.styleFrom(
               backgroundColor: Colors.orange,
               foregroundColor: Colors.blue,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10)
               )
           )
       ),
       inputDecorationTheme: InputDecorationTheme(
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
         hintStyle: TextStyle(
             color: Colors.grey
         ),
         labelStyle: TextStyle(
             color: Colors.blue,
             fontWeight: FontWeight.bold
         ),
       ),
       textTheme: TextTheme(
         headlineLarge: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold
         ),

         titleLarge: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
             color: Colors.white
         ),

       )
   );
   static final ThemeData darkTheme=ThemeData(
       brightness: Brightness.light,
       primaryColor: Colors.orange,
       primarySwatch: Colors.orange,
       //scaffoldBackgroundColor: Colors.grey.shade300,
       elevatedButtonTheme: ElevatedButtonThemeData(
           style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blue,
               foregroundColor: Colors.white,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10)
               )
           )
       ),
       inputDecorationTheme: InputDecorationTheme(
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
         hintStyle: TextStyle(
             color: Colors.grey
         ),
         labelStyle: TextStyle(
             color: Colors.blue,
             fontWeight: FontWeight.bold
         ),
       ),
       textTheme: TextTheme(
         headlineLarge: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold
         ),

         titleLarge: TextStyle(
             fontSize: 25,
             fontWeight: FontWeight.bold,
             color: Colors.white
         ),

       )
   );
}