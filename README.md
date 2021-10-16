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

// subtraction
10.gb - 2000.mb // 9.8.gb
5.gb - 10.gb // 0.gb

// addition
10.gb + 200.mb // 10.2.gb
5.gb + 10.gb // 10.gb

// multiplication
10.gb * 2 // 4.gb
5.gb * 1 // 5.gb

// equation
10.gb == 10000.mb // true

10.gb < 9000.mb // false
10.gb >= 10000.mb // true
5.gb < 10000.mb // true
10.gb <= 5000.mb // false

```