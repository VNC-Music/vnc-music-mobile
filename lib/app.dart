import 'package:flutter/material.dart';
import 'package:vnc_music/constants.dart';
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
      routes: Routes.list,
      navigatorKey: Routes.navigatorKey,
      home: const Home(),
      theme: ThemeData(
        primaryColor: primaryColor,
        backgroundColor: darkBackground,
        hintColor: Colors.yellow,
        errorColor: Colors.red,
        cardColor: Colors.green,
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: primaryColor,
          indicatorColor: Colors.black,
          surfaceTintColor: Colors.pink,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: primaryColor,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: primaryColor,
          scrimColor: Colors.black26,
        ),
        scaffoldBackgroundColor: darkBackground,
        listTileTheme: const ListTileThemeData(
          textColor: Colors.white,
          iconColor: Colors.white,
        ),
      ),
    );
  }
}
