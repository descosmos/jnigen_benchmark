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
  JObject activity = JObject.fromRef(Jni.getCurrentActivity());
  // Get battery level.
  String _info = 'Unknown battery level.';

  Stopwatch stopwatch = Stopwatch();

  Future<void> _measureCost() async {
    debugPrint("\n\n");

    // getBatteryLevel
    {
      // MethodChannel
      {
        double elapsed = await _getBatteryLevel();
        debugPrint("getBatteryLevel MethodChannel elapsed: ${elapsed} ms");
      }

      // Dart_Interop
      {
        double elapsed = await _getBatteryLevelNative();
        debugPrint("getBatteryLevel Dart_Interop elapsed: ${elapsed} ms");
      }
    }

    // getBatteryCharging
    {
      // MethodChannel
      {
        double elapsed = await _getBatteryChargingStr();
        debugPrint("_getBatteryChargingStr MethodChannel elapsed: ${elapsed} ms");
      }

      // Dart_Interop
      {
        double elapsed = await _getBatteryChargingStrNative();
        debugPrint("_getBatteryChargingStr Dart_Interop elapsed: ${elapsed} ms");
      }
    }

    // getMapTemplateData
    {
      // MethodChannel
      {
        double elapsed = await getMapTemplateData();
        debugPrint("getMapTemplateData MethodChannel elapsed: ${elapsed} ms");
      }

      // Dart_Interop
      {
        double elapsed = await _getBatteryChargingStrNative();
        debugPrint("getMapTemplateData Dart_Interop elapsed: ${elapsed} ms");
      }
    }
  }

  Future<double> _getBatteryLevel() async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        final result = await platform.invokeMethod<int>('getBatteryLevel');
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMilliseconds;
        // debugPrint("Battery level at $result % .");
      } on PlatformException catch (e) {
        debugPrint("Error _getBatteryLevel ${e}");
      }
    }

    averageDurationInMilliseconds = sumDurationsInMilliseconds / NUM_DOUBLE;
    return averageDurationInMilliseconds;
  }

  Future<double> _getBatteryLevelNative() async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        final result = BatteryUtils(activity).getBatteryStatus();
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMilliseconds;
        // debugPrint("Battery level at $result % .");
      } on PlatformException catch (e) {
        debugPrint("Error _getBatteryLevelNative ${e}");
      }
    }

    averageDurationInMilliseconds = sumDurationsInMilliseconds / NUM_DOUBLE;
    return averageDurationInMilliseconds;
  }

  Future<double> _getBatteryChargingStr() async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        final result = await platform.invokeMethod<String>('getBatteryCharging');
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMilliseconds;
        // debugPrint("Battery level at $result % .");
      } on PlatformException catch (e) {
        debugPrint("Error _getBatteryChargingStr ${e}");
      }
    }

    averageDurationInMilliseconds = sumDurationsInMilliseconds / NUM_DOUBLE;
    return averageDurationInMilliseconds;
  }

  Future<double> _getBatteryChargingStrNative() async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        final result = BatteryUtils(activity).getBatteryCharging().toDartString();
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMilliseconds;
        // debugPrint("Battery level at $result % .");
      } on PlatformException catch (e) {
        debugPrint("Error _getBatteryChargingStrNative ${e}");
      }
    }

    averageDurationInMilliseconds = sumDurationsInMilliseconds / NUM_DOUBLE;
    return averageDurationInMilliseconds;
  }

  Future<double> getMapTemplateData() async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        final result = await platform.invokeMethod<Map>('getMapTemplateData');
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMilliseconds;
        // debugPrint("getMapTemplateData level at ${result?["aion1"]} % .");
      } on PlatformException catch (e) {
        debugPrint("Error _getBatteryChargingStrNative ${e}");
      }
    }

    averageDurationInMilliseconds = sumDurationsInMilliseconds / NUM_DOUBLE;
    return averageDurationInMilliseconds;
  }

  Future<double> getMapTemplateDataNative() async {
    double averageDurationInMilliseconds = 0.0;
    int sumDurationsInMilliseconds = 0;
    for (int i = 0; i < NUM; ++i) {
      try {
        stopwatch.reset();
        stopwatch.start();
        final result = BatteryUtils(activity).getMapTemplateData();
        stopwatch.stop();
        sumDurationsInMilliseconds += stopwatch.elapsedMilliseconds;
        // debugPrint("getMapTemplateDataNative level at ${result[JString.fromString("aion1")]?.toDartString()} % .");
      } on PlatformException catch (e) {
        debugPrint("Error _getBatteryChargingStrNative ${e}");
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
