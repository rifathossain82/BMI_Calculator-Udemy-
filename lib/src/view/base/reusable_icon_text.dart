import 'package:bmi_calculator/src/util/dimensions.dart';
import 'package:bmi_calculator/src/util/export.dart';
import 'package:bmi_calculator/src/view/base/title_text.dart';

class ReusableIconText extends StatelessWidget {
  ReusableIconText({Key? key, required this.iconData, required this.text}) : super(key: key);

  IconData iconData;
  String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: size.height * 0.12, color: kWhite,),
        VerticalSpace(Dimensions.paddingSizeSmall),
        TitleText(title: text)
      ],
    );
  }
}
