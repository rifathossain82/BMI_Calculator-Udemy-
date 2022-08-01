
import 'package:bmi_calculator/src/util/export.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: kMainColor,
          foregroundColor: kWhite,
          elevation: 0,
        ),
        primarySwatch: colorCustom,
        primaryColor: kMainColor,
        scaffoldBackgroundColor: kMainColor
      ),
      title: AppConstants.appName,
      home: Homepage(),
    );
  }
}
