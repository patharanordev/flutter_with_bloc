import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_with_bloc/src/features/gallery/domain/device_dirty_cause.dart';

class GalleryWarningDialog extends StatelessWidget {
  GalleryWarningDialog({super.key, required this.cause});

  final List<DeviceDirtyCauses> cause;
  final DeviceDirtyCausesDetail causeDetail = DeviceDirtyCausesDetail();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Warning'),
      content: Text(
          '''You should not use the application on this device for safety because :
${cause.map((c) => ' ⚠️ ${causeDetail.getDetail(c)}').toList().join('\n')}\n
Please check your device.'''),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
