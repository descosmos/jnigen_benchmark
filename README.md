# jnigen benchmark
Benchmark of jnigen.


# result
```sh

I/flutter (19570): getBatteryLevel MethodChannel elapsed: 5.714 ms
I/flutter (19570): getBatteryLevel Dart_Interop elapsed: 5.087 ms
I/flutter (19570): _getBatteryChargingStr MethodChannel elapsed: 0.002 ms
I/flutter (19570): _getBatteryChargingStr Dart_Interop elapsed: 0.0 ms
I/flutter (19570): getInteger MethodChannel elapsed: 0.001 ms
I/flutter (19570): getInteger Dart_Interop elapsed: 0.0 ms
I/flutter (19570): getIntegerStatic MethodChannel elapsed: 0.0 ms
I/flutter (19570): getIntegerStatic Dart_Interop elapsed: 0.0 ms
3
I/flutter (19570): 
I/flutter (19570): getBatteryLevel MethodChannel elapsed: 5.207 ms
I/flutter (19570): getBatteryLevel Dart_Interop elapsed: 4.95 ms
I/flutter (19570): _getBatteryChargingStr MethodChannel elapsed: 0.0 ms
I/flutter (19570): _getBatteryChargingStr Dart_Interop elapsed: 0.0 ms
I/flutter (19570): getInteger MethodChannel elapsed: 0.001 ms
I/flutter (19570): getInteger Dart_Interop elapsed: 0.0 ms
I/flutter (19570): getIntegerStatic MethodChannel elapsed: 0.0 ms
I/flutter (19570): getIntegerStatic Dart_Interop elapsed: 0.0 ms
3
I/flutter (19570): 
I/flutter (19570): getBatteryLevel MethodChannel elapsed: 6.032 ms
I/flutter (19570): getBatteryLevel Dart_Interop elapsed: 5.335 ms
I/flutter (19570): _getBatteryChargingStr MethodChannel elapsed: 0.0 ms
I/flutter (19570): _getBatteryChargingStr Dart_Interop elapsed: 0.0 ms
I/flutter (19570): getInteger MethodChannel elapsed: 0.001 ms
I/flutter (19570): getInteger Dart_Interop elapsed: 0.0 ms
I/flutter (19570): getIntegerStatic MethodChannel elapsed: 0.0 ms
I/flutter (19570): getIntegerStatic Dart_Interop elapsed: 0.0 ms

```

Question:
Sometimes, the performance of jnigen even worse than method channel.