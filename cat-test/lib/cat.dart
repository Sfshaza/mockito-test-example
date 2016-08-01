import 'cat_cafe.dart';

class Cat {
  final service;
  Cat(CatCafe this.service);

  String getFood() {
    return service.serveMeal();
  }
}
