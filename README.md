# jnigen benchmark
Benchmark of jnigen.


# result
```sh

I/flutter (18735): 
I/flutter (18735): getBatteryLevel MethodChannel elapsed: 6.548 ms
I/flutter (18735): getBatteryLevel Dart_Interop elapsed: 6.517 ms
I/flutter (18735): _getBatteryChargingStr MethodChannel elapsed: 0.001 ms
I/flutter (18735): _getBatteryChargingStr Dart_Interop elapsed: 0.0 ms
I/flutter (18735): getMapTemplateData MethodChannel elapsed: 0.001 ms
I/flutter (18735): getMapTemplateData Dart_Interop elapsed: 0.0 ms

I/flutter (18735): 
I/flutter (18735): getBatteryLevel MethodChannel elapsed: 6.53 ms
I/flutter (18735): getBatteryLevel Dart_Interop elapsed: 6.469 ms
I/flutter (18735): _getBatteryChargingStr MethodChannel elapsed: 0.002 ms
I/flutter (18735): _getBatteryChargingStr Dart_Interop elapsed: 0.001 ms
I/flutter (18735): getMapTemplateData MethodChannel elapsed: 0.002 ms
I/flutter (18735): getMapTemplateData Dart_Interop elapsed: 0.0 ms

```

Question:
Sometimes, the performance of jnigen even worse than method channel.