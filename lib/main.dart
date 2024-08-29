import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:jni/jni.dart';
import 'dart:developer';

import 'battery_utils.dart';

class Coordinate {
  int x;
  int y;
  int z;
  String descriptor;
  double w;

  Coordinate({
    required this.x,
    required this.y,
    required this.z,
    required this.descriptor,
    required this.w,
  });

  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return Coordinate(
      x: json['x'],
      y: json['y'],
      z: json['z'],
      descriptor: json['descriptor'],
      w: json['w'],
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const platform = MethodChannel('samples.flutter.dev/battery');
  static const int NUM = 1000;
  static const double NUM_DOUBLE = 1000.0;
  int sum = 0;
  JObject? activity;
  BatteryUtils? batteryUtils;
  // Get battery level.
  String _info = 'Unknown battery level.';

  Stopwatch stopwatch = Stopwatch();

  Future<void> _measureCost() async {
    debugPrint("\n\n");

    // init class
    activity = JObject.fromRef(Jni.getCurrentActivity());
    batteryUtils = BatteryUtils(activity!);

    // getBatteryLevel
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getBatteryLevel", null);
        debugPrint("getBatteryLevel MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          batteryUtils?.getBatteryStatus();
        });
        debugPrint("getBatteryLevel Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getBatteryCharging
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getBatteryCharging", null);
        debugPrint("getBatteryCharging MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          JString? res = batteryUtils?.getBatteryCharging();
          res?.delete();
        });
        debugPrint("getBatteryCharging Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getMapTemplateData
    // {
    //   // MethodChannel
    //   {
    //     double elapsed = await _getMapTemplateData();
    //     debugPrint("getMapTemplateData MethodChannel elapsed: ${elapsed} µs");
    //   }

    //   // Dart_Interop
    //   {
    //     double elapsed = await _getMapTemplateDataNative();
    //     debugPrint("getMapTemplateData Dart_Interop elapsed: ${elapsed} µs");
    //   }
    // }

    // geString50
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("geString50", null);
        debugPrint("geString50 MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          JString? res = batteryUtils?.geString50();
          res?.delete();
        });
        debugPrint("geString50 Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getString100
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getString100", null);
        debugPrint("getString100 MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          JString? res = batteryUtils?.getString100();
          res?.delete();
        });
        debugPrint("getString100 Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getStructCoordinate
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getStructCoordinate", null);
        debugPrint("getStructCoordinate MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          BatteryUtils_Coordinate? origin = batteryUtils?.getStructCoordinate();
          sum += origin!.x;
          origin?.delete();
        });
        debugPrint("getStructCoordinate Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getInteger
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getInteger", null);
        debugPrint("getInteger MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          batteryUtils?.getInteger();
        });
        debugPrint("getInteger Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getIntegerStatic
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getIntegerStatic", null);
        debugPrint("getIntegerStatic MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          BatteryUtils.getIntegerStatic();
        });
        debugPrint("getIntegerStatic Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // StringCatParameter
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("StringCatParameter", null);
        debugPrint("StringCatParameter MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          JString? res = batteryUtils?.StringCatParameter(
              JString.fromString("dart12234548871627467812674612864812"));
        });
        debugPrint("StringCatParameter Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getCoordinateList
    {
      debugPrint(
          "===============================================================");
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getCoordinateList", null);
        debugPrint("getCoordinateList MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction(() {
          JList<BatteryUtils_Coordinate> coordinates =
              batteryUtils!.getCoordinateList();
          for (final coordinate in coordinates) {
            sum += coordinate.x;
            coordinate.delete();
          }
          coordinates.delete();
        });
        debugPrint("getCoordinateList Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    debugPrint("${sum}");
  }

  Future<double> timeChannelMethod(String methodName, dynamic arguments) async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        final result =
            await platform.invokeMethod<Object>(methodName, arguments);
        if (methodName == "getStructCoordinate") {
          String? jsonStr = result as String?;
          final jsonMap = jsonDecode(jsonStr!);
          final myObject = Coordinate.fromJson(jsonMap);
          sum += myObject.x;
        } else if (methodName == "getCoordinateList") {
          String? jsonStr = result as String?;
          final List<dynamic> jsonList = jsonDecode(jsonStr!);
          for (var item in jsonList) {
            final myObject = Coordinate.fromJson(item);
            sum += myObject.x; 
          }
        }
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMicroseconds;
        // debugPrint("Battery level at $result % .");
      } on PlatformException catch (e) {
        debugPrint("Error _getBatteryLevel ${e}");
      }
    }

    averageDurationInMilliseconds = sumDurationsInMilliseconds / NUM_DOUBLE;
    return averageDurationInMilliseconds;
  }

  Future<double> timeFunction(Function() function) async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        function();
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMicroseconds;
      } on PlatformException catch (e) {
        debugPrint("Error _getBatteryLevelNative ${e}");
      }
    }

    averageDurationInMilliseconds = sumDurationsInMilliseconds / NUM_DOUBLE;
    return averageDurationInMilliseconds;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Scroll Page"),
      ),
      body: ListView(children: [
        TextButton(
          onPressed: _measureCost,
          child: const Text('Start Test'),
        ),
      ]),
    );
  }
}
