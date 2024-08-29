// Autogenerated by jnigen. DO NOT EDIT!

// ignore_for_file: annotate_overrides
// ignore_for_file: camel_case_extensions
// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: file_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: overridden_fields
// ignore_for_file: unnecessary_cast
// ignore_for_file: unused_element
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: unused_shown_name

import "dart:isolate" show ReceivePort;
import "dart:ffi" as ffi;
import "package:jni/internal_helpers_for_jnigen.dart";
import "package:jni/jni.dart" as jni;

// Auto-generated initialization code.

final ffi.Pointer<T> Function<T extends ffi.NativeType>(String sym) jniLookup =
    ProtectedJniExtensions.initGeneratedLibrary("battery_utils");

/// from: com.example.batterylevel.BatteryUtils
class BatteryUtils extends jni.JObject {
  @override
  late final jni.JObjType<BatteryUtils> $type = type;

  BatteryUtils.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $BatteryUtilsType();
  static final _ctor = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__ctor")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public void <init>(android.app.Activity activity)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory BatteryUtils(
    jni.JObject activity,
  ) {
    return BatteryUtils.fromRef(_ctor(activity.reference).object);
  }

  static final _getBatteryStatus = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__getBatteryStatus")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getBatteryStatus()
  int getBatteryStatus() {
    return _getBatteryStatus(reference).integer;
  }

  static final _getBatteryCharging = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__getBatteryCharging")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getBatteryCharging()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JString getBatteryCharging() {
    return const jni.JStringType()
        .fromRef(_getBatteryCharging(reference).object);
  }

  static final _getMapTemplateData = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__getMapTemplateData")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.Map<java.lang.String,java.lang.String> getMapTemplateData()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JMap<jni.JString, jni.JString> getMapTemplateData() {
    return const jni.JMapType(jni.JStringType(), jni.JStringType())
        .fromRef(_getMapTemplateData(reference).object);
  }

  static final _geString50 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__geString50")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String geString50()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JString geString50() {
    return const jni.JStringType().fromRef(_geString50(reference).object);
  }

  static final _getString100 = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__getString100")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String getString100()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JString getString100() {
    return const jni.JStringType().fromRef(_getString100(reference).object);
  }

  static final _getStructCoordinate = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__getStructCoordinate")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public com.example.batterylevel.BatteryUtils.Coordinate getStructCoordinate()
  /// The returned object must be deleted after use, by calling the `delete` method.
  BatteryUtils_Coordinate getStructCoordinate() {
    return const $BatteryUtils_CoordinateType()
        .fromRef(_getStructCoordinate(reference).object);
  }

  static final _getInteger = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__getInteger")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public int getInteger()
  int getInteger() {
    return _getInteger(reference).integer;
  }

  static final _getIntegerStatic =
      jniLookup<ffi.NativeFunction<jni.JniResult Function()>>(
              "BatteryUtils__getIntegerStatic")
          .asFunction<jni.JniResult Function()>();

  /// from: static public int getIntegerStatic()
  static int getIntegerStatic() {
    return _getIntegerStatic().integer;
  }

  static final _StringCatParameter = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__StringCatParameter")
      .asFunction<
          jni.JniResult Function(
              ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String StringCatParameter(java.lang.String str)
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JString StringCatParameter(
    jni.JString str,
  ) {
    return const jni.JStringType()
        .fromRef(_StringCatParameter(reference, str.reference).object);
  }

  static final _getCoordinateList = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Pointer<ffi.Void>)>>("BatteryUtils__getCoordinateList")
      .asFunction<jni.JniResult Function(ffi.Pointer<ffi.Void>)>();

  /// from: public java.util.List<com.example.batterylevel.BatteryUtils.Coordinate> getCoordinateList()
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JList<BatteryUtils_Coordinate> getCoordinateList() {
    return const jni.JListType($BatteryUtils_CoordinateType())
        .fromRef(_getCoordinateList(reference).object);
  }
}

class $BatteryUtilsType extends jni.JObjType<BatteryUtils> {
  const $BatteryUtilsType();

  @override
  String get signature => r"Lcom/example/batterylevel/BatteryUtils;";

  @override
  BatteryUtils fromRef(jni.JObjectPtr ref) => BatteryUtils.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($BatteryUtilsType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($BatteryUtilsType) &&
        other is $BatteryUtilsType;
  }
}

/// from: com.example.batterylevel.BatteryUtils$Coordinate
class BatteryUtils_Coordinate extends jni.JObject {
  @override
  late final jni.JObjType<BatteryUtils_Coordinate> $type = type;

  BatteryUtils_Coordinate.fromRef(
    jni.JObjectPtr ref,
  ) : super.fromRef(ref);

  /// The type which includes information such as the signature of this class.
  static const type = $BatteryUtils_CoordinateType();
  static final _get_x = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
    jni.JObjectPtr,
  )>>("get_BatteryUtils_Coordinate__x")
      .asFunction<
          jni.JniResult Function(
    jni.JObjectPtr,
  )>();

  static final _set_x = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  jni.JObjectPtr, ffi.Int32)>>("set_BatteryUtils_Coordinate__x")
      .asFunction<jni.JniResult Function(jni.JObjectPtr, int)>();

  /// from: public int x
  int get x => _get_x(reference).integer;

  /// from: public int x
  set x(int value) => _set_x(reference, value).check();

  static final _get_y = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
    jni.JObjectPtr,
  )>>("get_BatteryUtils_Coordinate__y")
      .asFunction<
          jni.JniResult Function(
    jni.JObjectPtr,
  )>();

  static final _set_y = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  jni.JObjectPtr, ffi.Int32)>>("set_BatteryUtils_Coordinate__y")
      .asFunction<jni.JniResult Function(jni.JObjectPtr, int)>();

  /// from: public int y
  int get y => _get_y(reference).integer;

  /// from: public int y
  set y(int value) => _set_y(reference, value).check();

  static final _get_z = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
    jni.JObjectPtr,
  )>>("get_BatteryUtils_Coordinate__z")
      .asFunction<
          jni.JniResult Function(
    jni.JObjectPtr,
  )>();

  static final _set_z = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  jni.JObjectPtr, ffi.Int64)>>("set_BatteryUtils_Coordinate__z")
      .asFunction<jni.JniResult Function(jni.JObjectPtr, int)>();

  /// from: public long z
  int get z => _get_z(reference).long;

  /// from: public long z
  set z(int value) => _set_z(reference, value).check();

  static final _get_descriptor = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
    jni.JObjectPtr,
  )>>("get_BatteryUtils_Coordinate__descriptor")
      .asFunction<
          jni.JniResult Function(
    jni.JObjectPtr,
  )>();

  static final _set_descriptor = jniLookup<
              ffi.NativeFunction<
                  jni.JniResult Function(
                      jni.JObjectPtr, ffi.Pointer<ffi.Void>)>>(
          "set_BatteryUtils_Coordinate__descriptor")
      .asFunction<
          jni.JniResult Function(jni.JObjectPtr, ffi.Pointer<ffi.Void>)>();

  /// from: public java.lang.String descriptor
  /// The returned object must be deleted after use, by calling the `delete` method.
  jni.JString get descriptor =>
      const jni.JStringType().fromRef(_get_descriptor(reference).object);

  /// from: public java.lang.String descriptor
  /// The returned object must be deleted after use, by calling the `delete` method.
  set descriptor(jni.JString value) =>
      _set_descriptor(reference, value.reference).check();

  static final _get_w = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
    jni.JObjectPtr,
  )>>("get_BatteryUtils_Coordinate__w")
      .asFunction<
          jni.JniResult Function(
    jni.JObjectPtr,
  )>();

  static final _set_w = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(jni.JObjectPtr,
                  ffi.Double)>>("set_BatteryUtils_Coordinate__w")
      .asFunction<jni.JniResult Function(jni.JObjectPtr, double)>();

  /// from: public double w
  double get w => _get_w(reference).doubleFloat;

  /// from: public double w
  set w(double value) => _set_w(reference, value).check();

  static final _ctor = jniLookup<
          ffi.NativeFunction<
              jni.JniResult Function(
                  ffi.Int32,
                  ffi.Int32,
                  ffi.Int32,
                  ffi.Pointer<ffi.Void>,
                  ffi.Double)>>("BatteryUtils_Coordinate__ctor")
      .asFunction<
          jni.JniResult Function(
              int, int, int, ffi.Pointer<ffi.Void>, double)>();

  /// from: public void <init>(int x, int y, int z, java.lang.String descriptor, double w)
  /// The returned object must be deleted after use, by calling the `delete` method.
  factory BatteryUtils_Coordinate(
    int x,
    int y,
    int z,
    jni.JString descriptor,
    double w,
  ) {
    return BatteryUtils_Coordinate.fromRef(
        _ctor(x, y, z, descriptor.reference, w).object);
  }
}

class $BatteryUtils_CoordinateType
    extends jni.JObjType<BatteryUtils_Coordinate> {
  const $BatteryUtils_CoordinateType();

  @override
  String get signature => r"Lcom/example/batterylevel/BatteryUtils$Coordinate;";

  @override
  BatteryUtils_Coordinate fromRef(jni.JObjectPtr ref) =>
      BatteryUtils_Coordinate.fromRef(ref);

  @override
  jni.JObjType get superType => const jni.JObjectType();

  @override
  final superCount = 1;

  @override
  int get hashCode => ($BatteryUtils_CoordinateType).hashCode;

  @override
  bool operator ==(Object other) {
    return other.runtimeType == ($BatteryUtils_CoordinateType) &&
        other is $BatteryUtils_CoordinateType;
  }
}
