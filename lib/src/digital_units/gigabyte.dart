
import 'package:units_helper/src/digital_units/byte.dart';
import 'package:units_helper/src/digital_units/unit_of_data.dart';
import 'package:units_helper/src/digital_units/megabyte.dart';

/// One gigabyte (GB) is a collection of about 1000 megabytes [MegaByte].
class GigaByte extends UnitOfData {
  final num value;

  GigaByte(this.value) : super(Byte.fromGB(value).value);

  /// Converts the [GigaByte] to [MegaByte]
  MegaByte get toMb => MegaByte(value / 1000);

  GigaByte operator -(UnitOfData other) {
    int _value = size - other.size;
    return GigaByte(!_value.isNegative ? _value : 0);
  }

  GigaByte operator +(UnitOfData other) {
    int _value = size + other.size;
    return GigaByte(!_value.isNegative ? _value : 0);
  }

  GigaByte operator *(int other) {
    num _value = value * other;
    return GigaByte(!_value.isNegative ? _value : 0);
  }
}
