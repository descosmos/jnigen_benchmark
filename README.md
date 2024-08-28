# jnigen benchmark
Benchmark of jnigen.

# Enviroment

- phone: Readmi Note 12 Turbo
- os: Android 13

# result

Result of execute every funtion 1000 times.
```sh
I/flutter (22032): 
I/flutter (22032): getBatteryLevel MethodChannel elapsed: 8253.175 µs
I/flutter (22032): getBatteryLevel Dart_Interop elapsed: 7861.306 µs
I/flutter (22032): getBatteryCharging MethodChannel elapsed: 140.303 µs
I/flutter (22032): getBatteryCharging Dart_Interop elapsed: 0.194 µs
I/flutter (22032): getInteger MethodChannel elapsed: 108.858 µs
I/flutter (22032): getInteger Dart_Interop elapsed: 0.043 µs
I/flutter (22032): getIntegerStatic MethodChannel elapsed: 108.212 µs
I/flutter (22032): getIntegerStatic Dart_Interop elapsed: 0.047 µs

I/flutter (22032): 
I/flutter (22032): getBatteryLevel MethodChannel elapsed: 8305.09 µs
I/flutter (22032): getBatteryLevel Dart_Interop elapsed: 7845.423 µs
I/flutter (22032): getBatteryCharging MethodChannel elapsed: 279.528 µs
I/flutter (22032): getBatteryCharging Dart_Interop elapsed: 0.111 µs
I/flutter (22032): getInteger MethodChannel elapsed: 105.96 µs
I/flutter (22032): getInteger Dart_Interop elapsed: 0.008 µs
I/flutter (22032): getIntegerStatic MethodChannel elapsed: 107.197 µs
I/flutter (22032): getIntegerStatic Dart_Interop elapsed: 0.011 µs

I/flutter (22032): 
I/flutter (22032): getBatteryLevel MethodChannel elapsed: 7964.769 µs
I/flutter (22032): getBatteryLevel Dart_Interop elapsed: 5204.051 µs
I/flutter (22032): getBatteryCharging MethodChannel elapsed: 271.562 µs
I/flutter (22032): getBatteryCharging Dart_Interop elapsed: 0.202 µs
I/flutter (22032): getInteger MethodChannel elapsed: 260.577 µs
I/flutter (22032): getInteger Dart_Interop elapsed: 0.015 µs
I/flutter (22032): getIntegerStatic MethodChannel elapsed: 167.115 µs
I/flutter (22032): getIntegerStatic Dart_Interop elapsed: 0.009 µs

```

**Conclusion**
1. MethodChannel isn't slow as we assumed.
2. Dart interop is faster than MethodChannel call, but do you really mind the cost of 1000 function calls lower than 1ms ?
3. Sometimes, the real Bottleneck of your code isn't MethodChannel but your the code logic.