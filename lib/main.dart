import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //leva const porque será un widget que no tendrá modificaciones de estado ni valores
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home:  const Scaffold(
        body: CounterScreen()
      )
    );
  }

}