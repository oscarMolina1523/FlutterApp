import 'package:flutter/material.dart';
import 'package:invoicesapp/presentation/screens/counter_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //este sirve para quitar la etiqueta que dice que esta en desarrollo
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: CounterScreen()
    );
  }
}