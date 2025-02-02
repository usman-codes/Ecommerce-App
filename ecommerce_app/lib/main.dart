import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/splash_screens/splash_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Usin getx in this App
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dev-Mart',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
        fontFamily: regular,
      ),
      home: SplashScreen(),
    );
  }
}
