import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:jni/jni.dart';
import 'dart:developer';

import 'battery_utils.dart';

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
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getBatteryLevel", null);
        debugPrint("getBatteryLevel MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction((){batteryUtils?.getBatteryStatus();});
        debugPrint("getBatteryLevel Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getBatteryCharging
    {
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getBatteryCharging", null);
        debugPrint("getBatteryCharging MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction((){batteryUtils?.getBatteryCharging();});
        debugPrint(
            "getBatteryCharging Dart_Interop elapsed: ${elapsed} µs");
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

    // getInteger
    {
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getInteger", null);
        debugPrint("getInteger MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction((){batteryUtils?.getInteger();});
        debugPrint("getInteger Dart_Interop elapsed: ${elapsed} µs");
      }
    }

    // getIntegerStatic
    {
      // MethodChannel
      {
        double elapsed = await timeChannelMethod("getIntegerStatic", null);
        debugPrint("getIntegerStatic MethodChannel elapsed: ${elapsed} µs");
      }

      // Dart_Interop
      {
        double elapsed = await timeFunction((){BatteryUtils.getIntegerStatic();});
        debugPrint("getIntegerStatic Dart_Interop elapsed: ${elapsed} µs");
      }
    }
  }

  Future<double> timeChannelMethod(String methodName, dynamic arguments) async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        final result = await platform.invokeMethod<Object>(methodName, arguments);
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
        final result = function();
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMicroseconds;
        // debugPrint("Battery level at $result % .");
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
