import 'package:units_helper/src/digital_units/byte.dart';
import 'package:units_helper/src/digital_units/unit_of_data.dart';
import 'package:units_helper/src/digital_units/gigabyte.dart';

/// One megabyte (MB) is a collection of about 1000 kilobytes [KiloByte].
class MegaByte extends UnitOfData {
  final num value;

  MegaByte(this.value) : super(Byte.fromMB(value).value);

  /// Converts the [MegaByte] to [GigaByte]
  GigaByte get toGb => GigaByte(value * 1000);

  MegaByte operator -(UnitOfData other) {
    int _value = size - other.size;
    return MegaByte(!_value.isNegative ? _value : 0);
  }

  MegaByte operator +(UnitOfData other) {
    int _value = size + other.size;
    return MegaByte(!_value.isNegative ? _value : 0);
  }

  MegaByte operator *(int other) {
    num _value = value * other;
    return MegaByte(!_value.isNegative ? _value : 0);
  }
}
