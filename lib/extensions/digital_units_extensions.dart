
import 'package:units_helper/src/digital_units/byte.dart';
import 'package:units_helper/src/digital_units/gigabyte.dart';
import 'package:units_helper/src/digital_units/kilobyte.dart';
import 'package:units_helper/src/digital_units/megabyte.dart';

extension IntegerExtension on int {
  Byte get bytes => Byte(this);
}

extension NumberExtension on num {
  Byte get bytes => Byte(toInt());

  KiloByte get kb => KiloByte(this);

  MegaByte get mb => MegaByte(this);

  GigaByte get gb => GigaByte(this);
}
