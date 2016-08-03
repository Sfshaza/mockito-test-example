import 'dart:math' show Random;

// Let us feed your kitty!
class CatCafe {
  static final _index = new Random();
  final _menu = ['fish', 'chicken', 'beef', 'milk', 'kibble'];

  String serveMeal() {
    return _menu[_index.nextInt(_menu.length)];
  }
}
