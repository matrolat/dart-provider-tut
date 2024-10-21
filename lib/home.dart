import 'package:counter_with_provider/Providers/CounterProvider.dart';
import 'package:counter_with_provider/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  // Don't forget to import provider package

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  // Function to increment the counter
  void onButtonPress() {
    context.read<CounterProvider>().increment();  
  }

  @override
  Widget build(BuildContext context) {
    

    int counterValue = context.watch<CounterProvider>().value;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Number: $counterValue"),
          ElevatedButton(
            onPressed: onButtonPress, 
            child: Text("+")
          ),
        ],
      ),
    );
  }
}