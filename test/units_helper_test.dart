import 'package:flutter_test/flutter_test.dart';
import 'package:units_helper/extensions/digital_units_extensions.dart';
import 'package:units_helper/units/digital_units.dart';

void main() {
  test('Test All types', () {
    expect(12.bytes, isA<Byte>());
    expect(12.kb, isA<KiloByte>());
    expect(12.mb, isA<MegaByte>());
    expect(12.gb, isA<GigaByte>());
  });

  test('Test All Calculations', () {
    expect(12.bytes - 5.bytes, equals(7.bytes));
    expect(5.bytes - 5.bytes, equals(0.bytes));
    expect(5.bytes - 12.bytes, equals(0.bytes));
    expect(12.bytes - 5.bytes, greaterThan(5.bytes));

    expect(12.bytes + 5.bytes, equals(17.bytes));
    expect(5.bytes + 5.bytes, equals(10.bytes));
    expect(12.bytes + 5.bytes, greaterThan(15.bytes));

    expect(5.bytes * 2, equals(10.bytes));
    expect(5.bytes * -2, equals(0.bytes));
    expect(0.bytes * 2, equals(0.bytes));
  });
}
