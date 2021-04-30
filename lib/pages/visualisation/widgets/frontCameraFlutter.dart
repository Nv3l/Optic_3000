import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:optic_3000/main.dart';

class FrontCameraFlutter extends StatefulWidget {
  @override
  _FrontCameraFlutterState createState() => _FrontCameraFlutterState();
}

class _FrontCameraFlutterState extends State<FrontCameraFlutter> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[1], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return CameraPreview(controller);
  }
}
