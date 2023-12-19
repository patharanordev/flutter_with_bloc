import 'package:flutter/services.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:flutter_with_bloc/src/features/gallery/domain/device_dirty_cause.dart';

Future<List<DeviceDirtyCauses>> getDeviceDirtyCauses() async {
  bool isJailbroken = false;
  bool isDeveloperMode = false;
  List<DeviceDirtyCauses> deviceDirtyCause = [];

  try {
    isJailbroken = await FlutterJailbreakDetection.jailbroken;
  } on PlatformException {
    isJailbroken = true;
  } finally {
    if (isJailbroken) {
      deviceDirtyCause.add(DeviceDirtyCauses.jailbroken);
    }
  }

  try {
    isDeveloperMode = await FlutterJailbreakDetection.developerMode;
  } on PlatformException {
    isDeveloperMode = true;
  } finally {
    if (isDeveloperMode) {
      deviceDirtyCause.add(DeviceDirtyCauses.indevelopermode);
    }
  }

  return deviceDirtyCause;
}
