import 'package:bmi_calculator/src/util/export.dart';

class RoundButton extends StatelessWidget {
  RoundButton({Key? key, required this.iconData, required this.onPressed}) : super(key: key);

  IconData iconData;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(iconData, color: kWhite,),
      elevation: 0,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: size.height * 0.08,
        width: size.height * 0.08,
      ),
      fillColor: kRoundButtonColor,
    );
  }
}
