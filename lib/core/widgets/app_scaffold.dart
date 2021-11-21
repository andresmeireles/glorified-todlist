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
    final screenSize = MediaQuery.of(context).size.width;

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
        child: Icon(Icons.add),
      ),
      body: _handleWidgetType(screenSize),
    );
  }

  Sizes _handleScreenType(double screenSize) {
    if (screenSize > 800) {
      return Sizes.desktop;
    }

    return Sizes.mobile;
  }

  Widget _handleWidgetType(double screenSize) {
    final renderBody = body ?? Container();
    final renderMobileBody = mobileBody ?? renderBody;
    final renderDesktopBody = desktopBody ?? renderMobileBody;
    final screen = _handleScreenType(screenSize);

    switch (screen) {
      case Sizes.mobile:
        return renderMobileBody;
      case Sizes.desktop:
        return renderDesktopBody;
      default:
        return renderBody;
    }
  }
}

enum Sizes { mobile, desktop }
