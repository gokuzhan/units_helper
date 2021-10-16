A library provides unit helpers and extensions to simplifying the code.

## Installation

```shell
 flutter pub add units_helper
```

## Supported Units

- [Digital Units](#digital-units)

### Digital Units
```dart
Byte bytes = Byte(2000);          // 2000 bytes [Instance of Byte]
2000.bytes;                       // 2000 bytes [Instance of Byte]

KiloByte kiloBytes = KiloByte(8); // 8000 bytes [Instance of KiloByte]
8.kb;                             // 8000 bytes [Instance of KiloByte]

MegaByte megaByte = MegaByte(1.2); // 1200000 bytes [Instance of MegaByte]
1.2.mb;                            // 1200000 bytes [Instance of MegaByte]

GigaByte gigaByte = GigaByte(0.8); // 800000000 bytes [Instance of MegaByte]
0.8.gb;                            // 800000000 bytes [Instance of MegaByte]
```