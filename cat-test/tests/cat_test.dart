import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:cat_test/cat_cafe.dart';
import 'package:cat_test/cat.dart';

@proxy
class MockCatCafe extends Mock implements CatCafe {}

class MockCat extends Mock implements Cat {}

main() {
  test('cat cafe', () {
    var cafe = new MockCatCafe();
    var cat = new Cat(cafe);

    when(cafe.serveMeal()).thenReturn('kibble');
    expect(cat.getFood(), 'kibble');
    cat.getFood();
    verify(cafe.serveMeal()).called(2);
  });

  test('cat diet', () {
    var cat = new MockCat();

    //expect(cat.getFood(), isTrue);
  });
}
