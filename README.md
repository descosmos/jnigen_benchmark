# jnigen benchmark
Benchmark of jnigen.

# Enviroment

- phone: Readmi Note 12 Turbo
- os: Android 13

# result

Result of execute every funtion 1000 times.
```sh
I/flutter (  869): ===============================================================
I/flutter (  869): getBatteryLevel MethodChannel elapsed: 5782.582 µs
I/flutter (  869): getBatteryLevel Dart_Interop elapsed: 5273.563 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getBatteryCharging MethodChannel elapsed: 274.658 µs
I/flutter (  869): getBatteryCharging Dart_Interop elapsed: 0.827 µs
I/flutter (  869): ===============================================================
I/flutter (  869): geString50 MethodChannel elapsed: 274.257 µs
I/flutter (  869): geString50 Dart_Interop elapsed: 1.082 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getString100 MethodChannel elapsed: 276.813 µs
I/flutter (  869): getString100 Dart_Interop elapsed: 0.77 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getStructCoordinate MethodChannel elapsed: 316.358 µs
I/flutter (  869): getStructCoordinate Dart_Interop elapsed: 1.175 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getInteger MethodChannel elapsed: 265.629 µs
I/flutter (  869): getInteger Dart_Interop elapsed: 0.078 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getIntegerStatic MethodChannel elapsed: 271.729 µs
I/flutter (  869): getIntegerStatic Dart_Interop elapsed: 0.07 µs
I/flutter (  869): ===============================================================
I/flutter (  869): StringCatParameter MethodChannel elapsed: 268.431 µs
I/flutter (  869): StringCatParameter Dart_Interop elapsed: 3.682 µs

I/flutter (  869): ===============================================================
I/flutter (  869): getBatteryLevel MethodChannel elapsed: 5728.603 µs
I/flutter (  869): getBatteryLevel Dart_Interop elapsed: 5266.559 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getBatteryCharging MethodChannel elapsed: 263.084 µs
I/flutter (  869): getBatteryCharging Dart_Interop elapsed: 0.639 µs
I/flutter (  869): ===============================================================
I/flutter (  869): geString50 MethodChannel elapsed: 267.435 µs
I/flutter (  869): geString50 Dart_Interop elapsed: 0.481 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getString100 MethodChannel elapsed: 275.767 µs
I/flutter (  869): getString100 Dart_Interop elapsed: 0.669 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getStructCoordinate MethodChannel elapsed: 311.471 µs
I/flutter (  869): getStructCoordinate Dart_Interop elapsed: 1.093 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getInteger MethodChannel elapsed: 264.037 µs
I/flutter (  869): getInteger Dart_Interop elapsed: 0.02 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getIntegerStatic MethodChannel elapsed: 192.322 µs
I/flutter (  869): getIntegerStatic Dart_Interop elapsed: 0.007 µs
I/flutter (  869): ===============================================================
I/flutter (  869): StringCatParameter MethodChannel elapsed: 103.34 µs
I/flutter (  869): StringCatParameter Dart_Interop elapsed: 2.661 µs

I/flutter (  869): ===============================================================
I/flutter (  869): getBatteryLevel MethodChannel elapsed: 5773.459 µs
I/flutter (  869): getBatteryLevel Dart_Interop elapsed: 5236.614 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getBatteryCharging MethodChannel elapsed: 203.028 µs
I/flutter (  869): getBatteryCharging Dart_Interop elapsed: 0.211 µs
I/flutter (  869): ===============================================================
I/flutter (  869): geString50 MethodChannel elapsed: 112.01 µs
I/flutter (  869): geString50 Dart_Interop elapsed: 0.97 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getString100 MethodChannel elapsed: 109.3 µs
I/flutter (  869): getString100 Dart_Interop elapsed: 0.707 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getStructCoordinate MethodChannel elapsed: 127.928 µs
I/flutter (  869): getStructCoordinate Dart_Interop elapsed: 1.066 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getInteger MethodChannel elapsed: 105.518 µs
I/flutter (  869): getInteger Dart_Interop elapsed: 0.011 µs
I/flutter (  869): ===============================================================
I/flutter (  869): getIntegerStatic MethodChannel elapsed: 105.671 µs
I/flutter (  869): getIntegerStatic Dart_Interop elapsed: 0.052 µs
I/flutter (  869): ===============================================================
I/flutter (  869): StringCatParameter MethodChannel elapsed: 109.393 µs
I/flutter (  869): StringCatParameter Dart_Interop elapsed: 3.233 µs


```

**Conclusion**
1. MethodChannel isn't slow as we assumed.
2. Dart interop is faster than MethodChannel call, but do you really mind the cost of 1000 function calls lower than 1ms ?
3. Sometimes, the real Bottleneck of your code isn't MethodChannel but your the code logic.