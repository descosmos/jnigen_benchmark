# jnigen benchmark
Benchmark of jnigen.

# Enviroment

- phone: Readmi Note 12 Turbo
- os: Android 13

# result

Result of execute every funtion 1000 times.
```sh
I/flutter (21134): ===============================================================
I/flutter (21134): getBatteryLevel MethodChannel elapsed: 5424.676 µs
I/flutter (21134): getBatteryLevel Dart_Interop elapsed: 4893.137 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getBatteryCharging MethodChannel elapsed: 136.741 µs
I/flutter (21134): getBatteryCharging Dart_Interop elapsed: 0.669 µs
I/flutter (21134): ===============================================================
I/flutter (21134): geString50 MethodChannel elapsed: 112.695 µs
I/flutter (21134): geString50 Dart_Interop elapsed: 0.632 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getString100 MethodChannel elapsed: 113.406 µs
I/flutter (21134): getString100 Dart_Interop elapsed: 0.563 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getStructCoordinate Dart_Interop elapsed: 1.142 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getInteger MethodChannel elapsed: 110.976 µs
I/flutter (21134): getInteger Dart_Interop elapsed: 0.057 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getIntegerStatic MethodChannel elapsed: 109.46 µs
I/flutter (21134): getIntegerStatic Dart_Interop elapsed: 0.062 µs

I/flutter (21134): ===============================================================
I/flutter (21134): getBatteryLevel MethodChannel elapsed: 5449.763 µs
I/flutter (21134): getBatteryLevel Dart_Interop elapsed: 4856.91 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getBatteryCharging MethodChannel elapsed: 155.151 µs
I/flutter (21134): getBatteryCharging Dart_Interop elapsed: 0.613 µs
I/flutter (21134): ===============================================================
I/flutter (21134): geString50 MethodChannel elapsed: 104.47 µs
I/flutter (21134): geString50 Dart_Interop elapsed: 0.876 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getString100 MethodChannel elapsed: 104.616 µs
I/flutter (21134): getString100 Dart_Interop elapsed: 0.531 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getStructCoordinate Dart_Interop elapsed: 0.901 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getInteger MethodChannel elapsed: 96.521 µs
I/flutter (21134): getInteger Dart_Interop elapsed: 0.01 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getIntegerStatic MethodChannel elapsed: 94.488 µs
I/flutter (21134): getIntegerStatic Dart_Interop elapsed: 0.011 µs

I/flutter (21134): ===============================================================
I/flutter (21134): getBatteryLevel MethodChannel elapsed: 5423.084 µs
I/flutter (21134): getBatteryLevel Dart_Interop elapsed: 4858.915 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getBatteryCharging MethodChannel elapsed: 115.369 µs
I/flutter (21134): getBatteryCharging Dart_Interop elapsed: 0.604 µs
I/flutter (21134): ===============================================================
I/flutter (21134): geString50 MethodChannel elapsed: 112.958 µs
I/flutter (21134): geString50 Dart_Interop elapsed: 1.056 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getString100 MethodChannel elapsed: 106.909 µs
I/flutter (21134): getString100 Dart_Interop elapsed: 0.528 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getStructCoordinate Dart_Interop elapsed: 0.947 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getInteger MethodChannel elapsed: 103.211 µs
I/flutter (21134): getInteger Dart_Interop elapsed: 0.011 µs
I/flutter (21134): ===============================================================
I/flutter (21134): getIntegerStatic MethodChannel elapsed: 108.22 µs
I/flutter (21134): getIntegerStatic Dart_Interop elapsed: 0.012 µs

```

**Conclusion**
1. MethodChannel isn't slow as we assumed.
2. Dart interop is faster than MethodChannel call, but do you really mind the cost of 1000 function calls lower than 1ms ?
3. Sometimes, the real Bottleneck of your code isn't MethodChannel but your the code logic.