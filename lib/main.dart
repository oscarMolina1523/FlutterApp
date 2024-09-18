import 'package:flutter/material.dart';
import 'package:invoicesapp/presentation/providers/chat_provider.dart';
import 'package:invoicesapp/presentation/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';
// import 'package:invoicesapp/presentation/screens/yes_no_screen.dart';
// import 'package:invoicesapp/presentation/screens/counter_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(create: (_)=>ChatProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false, //este sirve para quitar la etiqueta que dice que esta en desarrollo
        // home: CounterScreen()
        home:ChatScreen(),
      ),
    );
  }
}