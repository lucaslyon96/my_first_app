import 'package:flutter/material.dart';
import 'package:list_view_card/gallery_page.dart';

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
      //show gallery page
      MaterialPage(child: GalleryPage(
        shouldLogOut: widget.shouldLogOut ,
        shouldShowCamera:() => _toggleCameraOpen
      )),
      //show camera page
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
