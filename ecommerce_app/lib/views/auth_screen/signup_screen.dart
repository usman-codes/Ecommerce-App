import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/widgets_common/app_logo_widget.dart';
import 'package:ecommerce_app/widgets_common/bg_widget.dart';
import 'package:ecommerce_app/widgets_common/custome_textfield.dart';
import 'package:ecommerce_app/widgets_common/ourbutton.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            20.heightBox,
            Column(
              children: [
                customtextfield(title: name, hint: namehint),
                10.heightBox,
                customtextfield(title: email, hint: emailhint),
                10.heightBox,
                customtextfield(title: password, hint: passwordhint),
                10.heightBox,
                customtextfield(title: retypepass, hint: passwordhint),
                5.heightBox,
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {},
                        child: forgotpas.text.color(redColor).make())),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(value: false, onChanged: (newvalue) {}),
                    10.widthBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: privacypolicy,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          ),
                        ),
                        TextSpan(
                          text: " & ",
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          ),
                        ),
                        TextSpan(
                          text: termandcon,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          ),
                        ),
                      ])),
                    )
                  ],
                ),
                5.heightBox,
                ourButton(
                        color: redColor,
                        title: signup,
                        onPress: () {},
                        textColor: whiteColor)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: alredyaccount,
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      )),
                  TextSpan(
                      text: " ? ",
                      style: TextStyle(
                        fontFamily: bold,
                        color: fontGrey,
                      )),
                  TextSpan(
                      text: login,
                      style: TextStyle(
                        fontFamily: bold,
                        color: redColor,
                      )),
                ])).onTap(() {
                  Get.back();
                })
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
