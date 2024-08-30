package com.example.batterylevel;

import static android.content.Context.BATTERY_SERVICE;

import android.app.Activity;
import android.os.BatteryManager;
import android.os.Build;
import android.widget.Toast;
import androidx.annotation.Keep;
import java.util.Map;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import android.util.Log;
import java.lang.String;

import io.flutter.embedding.android.FlutterActivity;

@Keep
public class BatteryUtils {
    @Keep
    public class Coordinate {
        public int x;
        public int y;
        public long z;
        public String descriptor;
        public double w;

        public Coordinate(int x, int y, int z, String descriptor, double w) {
            this.x = x;
            this.y = y;
            this.z = z;
            this.descriptor = descriptor;
            this.w = w;
        }
    }

    private static final Map<String, String> myMap = new HashMap<String, String>();
    private static final List<Coordinate> coordinates = new ArrayList<Coordinate>();
    private static final int TIMES = 5;

    public void init() {
        for (int i = 0; i < TIMES; i++) {
            coordinates.add(new Coordinate(1, 2, 3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstu123", 1.23));
            myMap.put("aion" + i, "bdhkashkdhjkash" + i);
        }
    }

    BatteryManager batteryManager;
    Activity activity;

    public BatteryUtils(Activity activity) {
        this.activity = activity;
        batteryManager = (BatteryManager) activity.getSystemService(BATTERY_SERVICE);
    }

    public int getBatteryStatus() {
        int capacity = 0;
        // long startTime = System.currentTimeMillis();
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            capacity = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
        }
        // long endTime = System.currentTimeMillis();
        // long executionTime = endTime - startTime;
        // Log.i("descosmos", "Execution time in milliseconds: " +
        // String.valueOf(executionTime));
        return capacity;
    }

    public String getBatteryCharging() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            return batteryManager.ACTION_CHARGING;
        }
        return "failed";
    }

    public Map<String, String> getMapTemplateData() {
        return myMap;
    }

    public String geString50() {
        return "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstu123";
    }

    public String getString100() {
        return "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstu123" +
                "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstu123";
    }

    public Coordinate getStructCoordinate() {
        return new Coordinate(1, 2, 3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstu123", 1.23);
    }

    public int getInteger() {
        return 72;
    }

    public static int getIntegerStatic() {
        return 72;
    }

    public String StringCatParameter(String str) {
        return "java12345678901234567890" + str;
    }

    public List<Coordinate> getCoordinateList() {
        return coordinates;
    }
}