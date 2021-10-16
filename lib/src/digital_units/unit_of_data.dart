import 'dart:ui';

/// this class represents the basic structure of unit of data
abstract class UnitOfData {
  final int size;

  UnitOfData(this.size);

  bool operator >(UnitOfData other) {
    return size > other.size;
  }

  bool operator <(UnitOfData other) {
    return size < other.size;
  }

  bool operator <=(UnitOfData other) {
    return this < other || this == other;
  }

  bool operator >=(UnitOfData other) {
    return this > other || this == other;
  }

  @override
  bool operator ==(Object other) {
    return other is UnitOfData && other.size == size;
  }

  @override
  int get hashCode => hashValues('bytes', size);

  @override
  String toString() => "$size bytes";
}
