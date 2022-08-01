import 'package:bmi_calculator/src/util/dimensions.dart';
import 'package:bmi_calculator/src/util/export.dart';
import 'package:bmi_calculator/src/view/base/bottom_button.dart';
import 'package:bmi_calculator/src/view/base/reuseable_container.dart';

class ShowResult extends StatelessWidget {
  ShowResult({Key? key, required this.bmiResult, required this.bmiText, required this.interpretation}) : super(key: key);

  String bmiResult;
  String bmiText;
  String interpretation;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36,
                color: kWhite,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault, vertical: Dimensions.paddingSizeLarge),
              child: ReusableContainer(
                onPressed: (){

                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiText,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: kSecondaryColor
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 72,
                        fontWeight: FontWeight.w900,
                        color: kWhite
                      ),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: kWhite
                      ),
                    )
                  ],
                ),
                bgColor: kSelectedColor,
              ),
            ),
          ),
          BottomButton(
            title: 'RE CALCULATE',
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
