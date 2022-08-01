import 'package:bmi_calculator/src/services/bmi_logic.dart';
import 'package:bmi_calculator/src/util/app_constants.dart';
import 'package:bmi_calculator/src/util/dimensions.dart';
import 'package:bmi_calculator/src/util/export.dart';
import 'package:bmi_calculator/src/view/base/bottom_button.dart';
import 'package:bmi_calculator/src/view/base/number_text.dart';
import 'package:bmi_calculator/src/view/base/reusable_icon_text.dart';
import 'package:bmi_calculator/src/view/base/reuseable_container.dart';
import 'package:bmi_calculator/src/view/base/round_button.dart';
import 'package:bmi_calculator/src/view/base/title_text.dart';
import 'package:bmi_calculator/src/view/screen/show_result.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  int _height = 168;
  int _weight = 60;
  int _age = 27;
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      onPressed: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      bgColor: selectedGender == Gender.male ? kSelectedColor : kUnselectedColor,
                      child: ReusableIconText(
                        iconData: FontAwesomeIcons.male,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  HorizontalSpace(Dimensions.paddingSizeLarge),
                  Expanded(
                    child: ReusableContainer(
                      onPressed: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      bgColor: selectedGender == Gender.female ? kSelectedColor : kUnselectedColor,
                      child: ReusableIconText(
                        iconData: FontAwesomeIcons.female,
                        text: 'FEMALE',
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          VerticalSpace(Dimensions.paddingSizeDefault),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
              child: ReusableContainer(
                onPressed: (){

                },
                bgColor: kSelectedColor,
                child: Column(
                  children: [
                    TitleText(title: 'HEIGHT',),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        NumberText(number: '$_height',),
                        TitleText(title: 'cm',),
                      ],
                    ),
                    VerticalSpace(Dimensions.paddingSizeSmall),
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: kWhite,
                        inactiveTrackColor: kGrey,
                        thumbColor: kWhite,
                        overlayColor: kUnselectedColor,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 20)
                      ),
                      child: Slider(
                        onChanged: (val){
                          setState(() {
                            _height = val.round();
                          });
                        },
                        value: _height.toDouble(),
                        min: 120,
                        max: 220,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          VerticalSpace(Dimensions.paddingSizeDefault),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.paddingSizeDefault),
              child: Row(
                children: [
                  Expanded(
                    child: ReusableContainer(
                      onPressed: (){

                      },
                      bgColor: kSelectedColor,
                      child: Column(
                        children: [
                          TitleText(title: 'WEIGHT',),
                          NumberText(number: '$_weight',),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                iconData: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    _weight--;
                                  });
                                },
                              ),
                              HorizontalSpace(Dimensions.paddingSizeSmall),
                              RoundButton(
                                iconData: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    _weight++;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  HorizontalSpace(Dimensions.paddingSizeLarge),
                  Expanded(
                    child: ReusableContainer(
                      onPressed: (){

                      },
                      bgColor: kSelectedColor,
                      child: Column(
                        children: [
                          TitleText(title: 'AGE',),
                          NumberText(number: '$_age',),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundButton(
                                iconData: FontAwesomeIcons.minus,
                                onPressed: (){
                                  setState(() {
                                    _age--;
                                  });
                                },
                              ),
                              HorizontalSpace(Dimensions.paddingSizeSmall),
                              RoundButton(
                                iconData: FontAwesomeIcons.plus,
                                onPressed: (){
                                  setState(() {
                                    _age++;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          VerticalSpace(Dimensions.paddingSizeDefault),
          BottomButton(
            title: 'CALCULATE',
            onPressed: (){
              BMILogic bmi = BMILogic(height: _height, weight: _weight);

              Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  ShowResult(
                      bmiResult: bmi.calculateBMI(),
                      bmiText: bmi.getResult(),
                      interpretation: bmi.getInterpretation())
              ));
            },
          )
        ],
      ),
    );
  }
}

enum Gender{male, female}
