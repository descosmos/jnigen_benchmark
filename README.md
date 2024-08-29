# jnigen benchmark
Benchmark of jnigen.

# Enviroment

- phone: Readmi Note 12 Turbo
- os: Android 13

# result

Result of execute every funtion 1000 times.
```sh
I/flutter (17873): ===============================================================
I/flutter (17873): getBatteryLevel MethodChannel elapsed: 6050.727 µs
I/flutter (17873): getBatteryLevel Dart_Interop elapsed: 5374.463 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getBatteryCharging MethodChannel elapsed: 359.623 µs
I/flutter (17873): getBatteryCharging Dart_Interop elapsed: 0.297 µs
I/flutter (17873): ===============================================================
I/flutter (17873): geString50 MethodChannel elapsed: 122.04 µs
I/flutter (17873): geString50 Dart_Interop elapsed: 1.265 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getString100 MethodChannel elapsed: 137.407 µs
I/flutter (17873): getString100 Dart_Interop elapsed: 1.098 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getStructCoordinate MethodChannel elapsed: 372.735 µs
I/flutter (17873): getStructCoordinate Dart_Interop elapsed: 1.275 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getInteger MethodChannel elapsed: 459.561 µs
I/flutter (17873): getInteger Dart_Interop elapsed: 0.188 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getIntegerStatic MethodChannel elapsed: 253.519 µs
I/flutter (17873): getIntegerStatic Dart_Interop elapsed: 0.053 µs
I/flutter (17873): ===============================================================
I/flutter (17873): StringCatParameter MethodChannel elapsed: 134.801 µs
I/flutter (17873): StringCatParameter Dart_Interop elapsed: 3.954 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getCoordinateList MethodChannel elapsed: 313.372 µs
I/flutter (17873): getCoordinateList Dart_Interop elapsed: 19.167 µs

I/flutter (17873): ===============================================================
I/flutter (17873): getBatteryLevel MethodChannel elapsed: 6093.239 µs
I/flutter (17873): getBatteryLevel Dart_Interop elapsed: 5411.805 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getBatteryCharging MethodChannel elapsed: 389.575 µs
I/flutter (17873): getBatteryCharging Dart_Interop elapsed: 0.319 µs
I/flutter (17873): ===============================================================
I/flutter (17873): geString50 MethodChannel elapsed: 146.306 µs
I/flutter (17873): geString50 Dart_Interop elapsed: 1.055 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getString100 MethodChannel elapsed: 140.765 µs
I/flutter (17873): getString100 Dart_Interop elapsed: 1.053 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getStructCoordinate MethodChannel elapsed: 381.91 µs
I/flutter (17873): getStructCoordinate Dart_Interop elapsed: 1.214 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getInteger MethodChannel elapsed: 176.032 µs
I/flutter (17873): getInteger Dart_Interop elapsed: 0.01 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getIntegerStatic MethodChannel elapsed: 125.926 µs
I/flutter (17873): getIntegerStatic Dart_Interop elapsed: 0.014 µs
I/flutter (17873): ===============================================================
I/flutter (17873): StringCatParameter MethodChannel elapsed: 131.864 µs
I/flutter (17873): StringCatParameter Dart_Interop elapsed: 3.01 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getCoordinateList MethodChannel elapsed: 513.148 µs
I/flutter (17873): getCoordinateList Dart_Interop elapsed: 18.375 µs

I/flutter (17873): ===============================================================
I/flutter (17873): getBatteryLevel MethodChannel elapsed: 5996.953 µs
I/flutter (17873): getBatteryLevel Dart_Interop elapsed: 5383.276 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getBatteryCharging MethodChannel elapsed: 162.88 µs
I/flutter (17873): getBatteryCharging Dart_Interop elapsed: 0.867 µs
I/flutter (17873): ===============================================================
I/flutter (17873): geString50 MethodChannel elapsed: 135.353 µs
I/flutter (17873): geString50 Dart_Interop elapsed: 1.604 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getString100 MethodChannel elapsed: 138.856 µs
I/flutter (17873): getString100 Dart_Interop elapsed: 1.052 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getStructCoordinate MethodChannel elapsed: 153.691 µs
I/flutter (17873): getStructCoordinate Dart_Interop elapsed: 1.272 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getInteger MethodChannel elapsed: 136.232 µs
I/flutter (17873): getInteger Dart_Interop elapsed: 0.01 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getIntegerStatic MethodChannel elapsed: 135.232 µs
I/flutter (17873): getIntegerStatic Dart_Interop elapsed: 0.016 µs
I/flutter (17873): ===============================================================
I/flutter (17873): StringCatParameter MethodChannel elapsed: 149.364 µs
I/flutter (17873): StringCatParameter Dart_Interop elapsed: 2.047 µs
I/flutter (17873): ===============================================================
I/flutter (17873): getCoordinateList MethodChannel elapsed: 369.056 µs
I/flutter (17873): getCoordinateList Dart_Interop elapsed: 17.223 µs
```

**Conclusion**
1. MethodChannel isn't slow as we assumed.
2. Dart interop is faster than MethodChannel call, but do you really mind the cost of 1000 function calls lower than 1ms ?
3. Sometimes, the real Bottleneck of your code isn't MethodChannel but your the code logic.