import 'package:flutter/cupertino.dart';

class ModelHud extends ChangeNotifier {
  bool isLoading = false;

  changIsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }
}
