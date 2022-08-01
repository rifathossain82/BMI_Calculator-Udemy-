import 'package:bmi_calculator/src/util/dimensions.dart';
import 'package:bmi_calculator/src/util/export.dart';

class ReusableContainer extends StatelessWidget {
  ReusableContainer({Key? key, required this.child, required this.onPressed, required this.bgColor}) : super(key: key);
  
  Widget child;
  VoidCallback onPressed;
  Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: child,
        padding: EdgeInsets.all(Dimensions.paddingSizeDefault),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(Dimensions.paddingSizeSmall),
        ),
      ),      
    );
  }
}
