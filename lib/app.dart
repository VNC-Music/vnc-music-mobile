import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vnc_music/pages/home/home.dart';
import 'package:vnc_music/routes.dart';

class App extends StatefulWidget {
  const App({
    super.key,
  });

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool isAlertOnDialogOpen = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VNC',
      theme: ThemeData(),
      routes: Routes.list,
      navigatorKey: Routes.navigatorKey,
      home: const Home(),
    );
  }
}
