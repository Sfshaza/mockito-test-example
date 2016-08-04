import 'dart:async';

import 'radio.dart';
import 'gyro.dart';

class Spacecraft {
  Radio _radio;
  Gyro _gyro;

  Spacecraft(this._radio, this._gyro);

  // Acknowledge that a message is received.
  messageReceived(String message) {
    acknowledge();
    _radio.increaseSignalStrength();
    readMessage();
  }

  // The fake method that would wait, for a limited time, for a response.
  readMessage() {}

  // The fake method that would send an auto-response.
  acknowledge() {}
}
