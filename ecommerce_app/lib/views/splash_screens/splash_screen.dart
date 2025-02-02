import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/auth_screen/login_scrren.dart';
import 'package:ecommerce_app/widgets_common/app_logo_widget.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changescreen() {
    Future.delayed(const Duration(seconds: 3), () {
      //using getx
      Get.to(() => LoginScrren());
    });
  }

  @override
  void initState() {
    changescreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              )),
          20.heightBox,
          applogowidget(),
          10.heightBox,
          appname.text.fontFamily(bold).size(28).white.make(),
          5.heightBox,
          appversion.text.white.make(),
          Spacer(),
          credits.text.white.make(),
          53.heightBox
        ],
      ),
    );
  }
}
