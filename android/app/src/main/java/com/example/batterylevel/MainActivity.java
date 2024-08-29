package com.example.batterylevel;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.MethodChannel;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Build.VERSION;
import android.os.Build.VERSION_CODES;
import android.os.Bundle;
import androidx.annotation.NonNull;
import android.util.Log;
import java.lang.String;

public class MainActivity extends FlutterActivity {
    private static final String CHANNEL = "samples.flutter.dev/battery";
    BatteryUtils batteryUtils = null;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState); 
        batteryUtils = new BatteryUtils(this); 
    }

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);
        new MethodChannel(flutterEngine.getDartExecutor().getBinaryMessenger(), CHANNEL)
                .setMethodCallHandler(
                        (call, result) -> {
                            // This method is invoked on the main thread.
                            if (call.method.equals("getBatteryLevel")) {
                                result.success(batteryUtils.getBatteryStatus());
                            } else if (call.method.equals("getBatteryCharging")) {
                                result.success(batteryUtils.getBatteryCharging());
                            } else if (call.method.equals("getMapTemplateData")) {
                                result.success(batteryUtils.getMapTemplateData());
                            } else if (call.method.equals("getInteger")) {
                                result.success(batteryUtils.getInteger());
                            } else if (call.method.equals("getIntegerStatic")) {
                                result.success(BatteryUtils.getIntegerStatic());
                            } else if (call.method.equals("geString50")) {
                                result.success(batteryUtils.geString50());
                            } else if (call.method.equals("getString100")) {
                                result.success(batteryUtils.getString100());
                            } else if (call.method.equals("getStructCoordinate")) {
                                result.success(batteryUtils.getStructCoordinate());
                            } else {
                                result.notImplemented();
                            }
                        });
    }
}
