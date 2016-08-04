import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'package:spacecraft/spacecraft.dart';
import 'package:spacecraft/radio.dart';
import 'package:spacecraft/gyro.dart';

@proxy
class MockRadio extends Mock implements Radio {}

main() {
  test('Spacecraft acknowledges a radio signal', () {
    var radio = new MockRadio();
    var gyro = new Gyro();
    var spacecraft = new Spacecraft(radio, gyro);
    spacecraft.messageReceived('something');

    // Verify that the craft tries to increase signal
    // strength when its broadcast goes unacknowledged.
    verify(radio.increaseSignalStrength()).called(1);
  });
}
