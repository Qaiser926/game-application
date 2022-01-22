
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/sports_main_screen.dart';
import 'utilites/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: kbagroundColor, // Color for Android
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark ,// Dark == white status bar -- for IOS.
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sports",
      home:  SportsMainScreen(),
      theme: ThemeData(
          scaffoldBackgroundColor: kScaffoldBackgroundColor,
          canvasColor: kScaffoldBackgroundColor,
          primaryColor: kPrimaryColor,
          fontFamily: 'medium',
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashFactory: InkRipple.splashFactory,
          focusColor: Colors.transparent,
          dividerColor: Colors.transparent,
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: kPrimaryColor)),
    );
  }
}
