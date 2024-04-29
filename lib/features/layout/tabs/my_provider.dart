import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier {
  int index = 0;
  void changeIndex(int currentIndex) {
    index = currentIndex;
    notifyListeners();
  }
}
