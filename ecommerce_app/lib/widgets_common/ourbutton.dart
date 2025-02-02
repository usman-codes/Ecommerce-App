import 'package:ecommerce_app/consts/consts.dart';

Widget ourButton(
    {required VoidCallback onPress,
    required Color color,
    required Color textColor,
    required String title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(13),
    ),
    onPressed: onPress,
    child: title.text.color(textColor).fontFamily(bold).make(),
  );
}
