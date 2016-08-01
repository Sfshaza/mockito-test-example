// Potential example for a page on unit testing + mockito for dartlang.
// I'd like to create a separate example/page for webdev that will
// link to the basic info in this page.

import 'package:cat_test/cat.dart';
import 'package:cat_test/cat_cafe.dart';

main() {
  var cat = new Cat(new CatCafe());

  for (var i = 0; i < 10; i++) {
    print(cat.getFood());
  }
}
