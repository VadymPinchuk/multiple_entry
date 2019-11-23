package com.raccoon.multientry

import android.content.Context
import android.os.Bundle
import android.util.AttributeSet
import android.view.ViewGroup
import android.view.WindowManager

import io.flutter.app.FlutterActivity
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.view.FlutterMain
import io.flutter.view.FlutterView

abstract class BaseActivity : FlutterActivity() {

    abstract var entryPoint: String

    override fun createFlutterView(context: Context?): FlutterView {
        val flutterView = FlutterView(this)
        flutterView.layoutParams = WindowManager.LayoutParams(-1, -1)
        flutterView.dartExecutor.executeDartEntrypoint(DartExecutor.DartEntrypoint(FlutterMain.findAppBundlePath(), entryPoint))
        val frameLayout = findViewById<ViewGroup>(android.R.id.content)
        frameLayout.addView(flutterView)
        return flutterView
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)
    }
}
