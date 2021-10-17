import 'package:units_helper/src/digital_units/byte.dart';
import 'package:units_helper/src/digital_units/unit_of_data.dart';
import 'package:units_helper/src/digital_units/megabyte.dart';

/// One kilobyte (KB) is a collection of about 1000 bytes [Byte].
class KiloByte extends UnitOfData {
  final num value;

  KiloByte(this.value) : super(Byte.fromKB(value).value);

  /// Converts the [KiloByte] to [MegaByte]
  MegaByte get toMb => MegaByte(value * 1000);

  KiloByte operator -(UnitOfData other) {
    int _value = size - other.size;
    return KiloByte(!_value.isNegative ? _value : 0);
  }

  KiloByte operator +(UnitOfData other) {
    int _value = size + other.size;
    return KiloByte(!_value.isNegative ? _value : 0);
  }

  KiloByte operator *(int other) {
    num _value = value * other;
    return KiloByte(!_value.isNegative ? _value : 0);
  }
}
