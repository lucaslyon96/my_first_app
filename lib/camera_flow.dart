import 'package:flutter/material.dart';

class CameraFlow extends StatefulWidget {
  final VoidCallback shouldLogOut;

  CameraFlow({Key key, this.shouldLogOut}) : super (key: key);

  @override
  _CameraFlowState createState() => _CameraFlowState();
}

class _CameraFlowState extends State<CameraFlow> {
  bool _shouldShowCamera = false;

  List <MaterialPage> get _pages{
    return [
      MaterialPage(child: Placeholder()),
      if (_shouldShowCamera)
        MaterialPage(child: Placeholder())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: _pages,
      onPopPage: (route, result) => route.didPop(result),
    );
  }
  void _toggleCameraOpen(bool isOpen){
    setState(() {
      this._shouldShowCamera = isOpen;
    });
  }
}
