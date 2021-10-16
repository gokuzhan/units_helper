

import 'package:units_helper/src/digital_units/unit_of_data.dart';
import 'package:units_helper/src/digital_units/kilobyte.dart';

/// One byte is a collection of about 8 bits.
class Byte extends UnitOfData {
  /// quantity of unit of data
  final int value;

  Byte(this.value) : super(value);

  /// Converts the [Byte] to [KiloByte]
  KiloByte get toKb => KiloByte(value * 1000);

  /// Returns its `Byte` output from a given kilobyte
  factory Byte.fromKB(num amount) {
    return Byte((amount * 1000).toInt());
  }

  /// Returns its `Byte` output from a given megabyte
  factory Byte.fromMB(num amount) {
    return Byte.fromKB(amount * 1000);
  }

  /// Returns its `Byte` output from a given gigabyte
  factory Byte.fromGB(num amount) {
    return Byte.fromMB(amount * 1000);
  }

  Byte operator -(UnitOfData other) {
    int _value = size - other.size;
    return Byte(!_value.isNegative ? _value : 0);
  }

  Byte operator +(UnitOfData other) {
    int _value = size + other.size;
    return Byte(!_value.isNegative ? _value : 0);
  }

  Byte operator *(int other) {
    int _value = value * other;
    return Byte(!_value.isNegative ? _value : 0);
  }
}
