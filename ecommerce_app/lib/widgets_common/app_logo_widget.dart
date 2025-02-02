import 'package:ecommerce_app/consts/consts.dart';

Widget applogowidget() {
  return Image.asset(icAppLogo)
      .box
      .white
      .size(77, 77)
      .rounded
      .padding(EdgeInsets.all(8))
      .make();
}
