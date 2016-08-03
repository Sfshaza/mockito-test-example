import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:cat_test/cat_cafe.dart';
import 'package:cat_test/cat.dart';

@proxy
class MockCatCafe extends Mock implements CatCafe {}

class MockCat extends Mock implements Cat {}

main() {
  test('Verify that CatCafe.serveMeal() is called twice', () {
    var cafe = new MockCatCafe();
    var cat = new Cat(cafe);

    cat.getFood();
    cat.getFood();
    verify(cafe.serveMeal()).called(2);
  });
}
