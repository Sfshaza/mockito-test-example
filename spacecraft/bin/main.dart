// Potential example for a page on unit testing + mockito for dartlang.
// I'd like to create a separate example/page for webdev that will
// link to the basic info in this page.

import 'package:spacecraft/spacecraft.dart';
import 'package:spacecraft/radio.dart';
import 'package:spacecraft/gyro.dart';

main() {
  var spacecraft = new Spacecraft(new Radio(), new Gyro());
}
