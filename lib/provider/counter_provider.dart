import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _clickCounter = 0;

  int get clickCounter => _clickCounter;

  void incrementCounter() {
    _clickCounter++;
    notifyListeners(); // Notifica a los widgets que están escuchando
  }

  void decrementCounter() {
    if (_clickCounter > 0) {
      _clickCounter--;
      notifyListeners();
    }
  }

  void resetCounter() {
    _clickCounter = 0;
    notifyListeners();
  }
}
