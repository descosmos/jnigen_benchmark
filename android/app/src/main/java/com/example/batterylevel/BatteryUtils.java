package com.example.batterylevel;

import static android.content.Context.BATTERY_SERVICE;

import android.app.Activity;
import android.os.BatteryManager;
import android.os.Build;
import android.widget.Toast;
import androidx.annotation.Keep;
import java.util.Map;
import java.util.HashMap;

import io.flutter.embedding.android.FlutterActivity;

@Keep
public class BatteryUtils {
    private static final Map<String, String> myMap = new HashMap<String, String>();
    static {
        myMap.put("aion1", "bdhkashkdhjkash1");
        myMap.put("aion2", "bdhkashkdhjkash2");
        myMap.put("aion3", "bdhkashkdhjkash3");
        myMap.put("aion4", "bdhkashkdhjkash4");
        myMap.put("aion5", "bdhkashkdhjkash5");
        myMap.put("aion6", "bdhkashkdhjkash6");
        myMap.put("aion7", "bdhkashkdhjkash7");
        myMap.put("aion8", "bdhkashkdhjkash8");
        myMap.put("aion9", "bdhkashkdhjkash9");
        myMap.put("aion10", "bdhkashkdhjkash10");
        myMap.put("aion11", "bdhkashkdhjkash11");
        myMap.put("aion12", "bdhkashkdhjkash12");
        myMap.put("aion13", "bdhkashkdhjkash13");
        myMap.put("aion14", "bdhkashkdhjkash14");
        myMap.put("aion15", "bdhkashkdhjkash15");
    }

    BatteryManager batteryManager;
    Activity activity;

    public BatteryUtils(Activity activity) {
        this.activity = activity;
        batteryManager = (BatteryManager) activity.getSystemService(BATTERY_SERVICE);
    }

    public int getBatteryStatus() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            return batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY);
        }
        return 0;
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

}