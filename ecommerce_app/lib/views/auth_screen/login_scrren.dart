import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/consts/list.dart';
import 'package:ecommerce_app/views/auth_screen/signup_screen.dart';
import 'package:ecommerce_app/widgets_common/app_logo_widget.dart';
import 'package:ecommerce_app/widgets_common/bg_widget.dart';
import 'package:ecommerce_app/widgets_common/custome_textfield.dart';
import 'package:ecommerce_app/widgets_common/ourbutton.dart';
import 'package:get/get.dart';

class LoginScrren extends StatelessWidget {
  const LoginScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.height * 0.1).heightBox,
            applogowidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            20.heightBox,
            Column(
              children: [
                customtextfield(title: email, hint: emailhint),
                10.heightBox,
                customtextfield(title: password, hint: passwordhint),
                5.heightBox,
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: forgotpas.text.color(redColor).make())),
                5.heightBox,
                ourButton(
                        color: redColor,
                        title: login,
                        onPress: () {},
                        textColor: whiteColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createnewaccount.text.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                        color: lightgolden,
                        title: signup,
                        onPress: () {
                          Get.to(() => SignupScreen());
                        },
                        textColor: redColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                loginwith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: EdgeInsets.all(8),
                              child: CircleAvatar(
                                backgroundColor: lightGrey,
                                radius: 25,
                                child: Image.asset(
                                  socialicons[index],
                                  width: 30,
                                ),
                              ),
                            )))
              ],
            )
                .box
                .rounded
                .padding(EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .white
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
