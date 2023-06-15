import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:speakup/internet/no_connection_builder.dart';

class BuildOfflineBuilder extends StatelessWidget {
  const BuildOfflineBuilder({
    Key? key, required this.screen,
  }) : super(key: key);
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return OfflineBuilder(
      connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
      ) {
        final bool connected = connectivity != ConnectivityResult.none;

        return NoConnection(
          child: child,
          connected: connected,
        );
      },
      builder: (context) {
        return screen;
        //Keep the user loginin
      },
    );
  }
}