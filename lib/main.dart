import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gdsc/Screens/splash_screen.dart';
import 'package:gdsc/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(
    //       create: (_) => DustyProvider(),
    //     ),
    //     ChangeNotifierProvider(
    //       create: (_) => AuthenticationProvider(),
    //     ),
    //   ],
    //   child: MyApp(),
    // ),
      MyApp()
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // void initializeFlutterFire() async {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  // }

  // @override
  // void initState() {
  //   initializeFlutterFire();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GDSC-DMCE',
      initialRoute: SplashScreen.id,
      routes: routes,
      // builder: EasyLoading.init(),
    );
  }
}