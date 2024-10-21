import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier {
  int value = 0;

  CounterProvider({
    this.value = 0
  });

  void increment() {
    value++;
    notifyListeners();
  }
}
