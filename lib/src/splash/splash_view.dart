import 'package:flutter/material.dart';
import 'package:flutter_with_bloc/src/features/gallery/domain/device_dirty_cause.dart';
import 'package:flutter_with_bloc/src/features/gallery/presentation/gallery_page.dart';
import 'package:flutter_with_bloc/src/features/gallery/presentation/gallery_warning_dialog.dart';
import 'package:flutter_with_bloc/src/utils/validate/device.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  List<DeviceDirtyCauses> _deviceDirtyCause = [];

  @override
  void initState() {
    super.initState();
    _validateDevice();
  }

  _validateDevice() async {
    List<DeviceDirtyCauses> deviceDirtyCause = await getDeviceDirtyCauses();
    setState(() {
      _deviceDirtyCause = deviceDirtyCause;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(seconds: 2)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // While waiting, you can display a loading indicator or splash screen
            return Scaffold(
              body: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Lottie.asset('assets/splash_lottie.json')]),
            );
          } else {
            if (_deviceDirtyCause.isNotEmpty) {
              return GalleryWarningDialog(cause: _deviceDirtyCause, labelOnAcceptButton: 'Exit App', isExitApp: true);
            } else {
              // After the delay, navigate to the desired screen
              return const GalleryPage();
            }
          }
        });
  }
}
