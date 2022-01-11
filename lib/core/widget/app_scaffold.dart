import 'dart:io';

import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  final String title;
  final Widget? body;
  final Widget? mobileBody;
  final Widget? desktopBody;

  const AppScaffold({
    required this.title,
    this.body,
    this.mobileBody,
    this.desktopBody,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
            onPressed: () => print('chooch'),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 38,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('chooch'),
        child: const Icon(Icons.add),
      ),
      body: _handleWidgetType(),
    );
  }

  // Sizes _handleScreenType(double screenSize) {
  //   if (screenSize > 800) {
  //     return Sizes.desktop;
  //   }

  //   return Sizes.mobile;
  // }

  Widget _handleWidgetType() {
    final renderBody = body ?? Container();
    final renderMobileBody = mobileBody ?? renderBody;
    final renderDesktopBody = desktopBody ?? renderMobileBody;

    if (Platform.isAndroid || Platform.isIOS) {
      return renderMobileBody;
    }
    if (Platform.isWindows || Platform.isLinux) {
      return renderDesktopBody;
    }
    return renderBody;
  }
}
