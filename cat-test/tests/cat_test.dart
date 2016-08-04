import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:cat_test/cat_cafe.dart';
import 'package:cat_test/cat.dart';

@proxy
class MockCatCafe extends Mock implements CatCafe {}

main() {
  test('Cat.getFood() returns food from the cat cafe', () {
    var cafe = new MockCatCafe();
    var cat = new Cat(cafe);

    when(cafe.serveMeal()).thenReturn('kibble');
    expect(cat.getFood(), 'kibble');
  });
}
