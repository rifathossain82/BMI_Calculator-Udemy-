import 'package:bmi_calculator/src/util/dimensions.dart';
import 'package:bmi_calculator/src/util/export.dart';

class BottomButton extends StatelessWidget {
  BottomButton({Key? key, required this.title, required this.onPressed}) : super(key: key);

  String title;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        //height: size.height * 0.1,
        padding: EdgeInsets.symmetric(vertical: Dimensions.paddingSizeSmall),
        alignment: Alignment.center,
        width: size.width,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kMainColor
          ),
        ),
        decoration: BoxDecoration(
          color: kSecondaryColor
        ),
      ),
    );
  }
}
