import 'dart:math' show Random;

// Let us feed your kitty!
class CatCafe {
  static final Random _index = new Random();
  //List<String> _menu = ['fish', 'chicken', 'beef', 'milk', 'kibble'];
  var _menu = ['fish', 'chicken', 'beef', 'milk', 'kibble'];

  String serveMeal() {
    return _menu[_index.nextInt(_menu.length)];
  }
}
