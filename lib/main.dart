import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:socialv_prokit/screens/SVSplashScreen.dart';
import 'package:socialv_prokit/store/AppStore.dart';
import 'package:socialv_prokit/utils/AppTheme.dart';

AppStore appStore = AppStore();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  appStore.toggleDarkMode(value: false);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        scrollBehavior: SBehavior(),
        navigatorKey: navigatorKey,
        title: 'Alarrt',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: appStore.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        home: SVSplashScreen(),
      ),
    );
  }
}
