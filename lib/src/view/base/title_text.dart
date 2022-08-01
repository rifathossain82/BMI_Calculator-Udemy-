import 'package:bmi_calculator/src/util/export.dart';

class TitleText extends StatelessWidget {
  TitleText({Key? key, required this.title}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: kWhite.withOpacity(0.6),
      ),
    );
  }
}
