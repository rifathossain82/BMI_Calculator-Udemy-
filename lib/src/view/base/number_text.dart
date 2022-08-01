import 'package:bmi_calculator/src/util/export.dart';


class NumberText extends StatelessWidget {
  NumberText({Key? key, required this.number}) : super(key: key);

  String number;

  @override
  Widget build(BuildContext context) {
    return Text(
      number,
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 45,
        color: kWhite
      ),
    );
  }
}
