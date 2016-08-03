import 'cat_cafe.dart';

class Cat {
  final CatCafe service;
  Cat(this.service);

  String getFood() {
    return service.serveMeal();
  }
}
