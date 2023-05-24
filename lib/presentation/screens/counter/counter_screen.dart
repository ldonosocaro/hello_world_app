import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('CounterScreen')),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  //centra tipo flexbox
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)), 
              Text(clickCounter < 2 ? "Click" : "Clicks", style: const TextStyle(fontSize: 25)), 
              ],
      ),
    ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //codigo que se ejecutará al hacer click al boton
            clickCounter++;
            setState(() {}); //renderiza nuevamente el widget
          },
          child: const Icon(Icons.plus_one),
        ),
    );
  }
}
