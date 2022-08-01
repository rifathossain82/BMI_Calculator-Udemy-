
import 'package:flutter/material.dart';

const Color kMainColor = Color(0xff0f3c4c);
const Color kWhite = Color(0xffffffff);
const Color kGrey = Colors.grey;
Color kSelectedColor = Color(0xffcccccc).withOpacity(0.2);
Color kUnselectedColor = Color(0xffcccccc).withOpacity(0.08);
Color kRoundButtonColor = Colors.white54;
Color kSecondaryColor = Colors.lightGreenAccent;


Map<int, Color> color =
const {
  50:Color.fromRGBO(15, 60, 76, .1),
  100:Color.fromRGBO(15, 60, 76, .2),
  200:Color.fromRGBO(15, 60, 76, .3),
  300:Color.fromRGBO(15, 60, 76, .4),
  400:Color.fromRGBO(15, 60, 76, .5),
  500:Color.fromRGBO(15, 60, 76, .6),
  600:Color.fromRGBO(15, 60, 76, .7),
  700:Color.fromRGBO(15, 60, 76, .8),
  800:Color.fromRGBO(15, 60, 76, .9),
  900:Color.fromRGBO(15, 60, 76, 1),
};

MaterialColor colorCustom = MaterialColor(0xff0f3c4c, color);



///opacity of hex color
/*
100% — FF
95% — F2
90% — E6
85% — D9
80% — CC
75% — BF
70% — B3
65% — A6
60% — 99
55% — 8C
50% — 80
45% — 73
40% — 66
35% — 59
30% — 4D
25% — 40
20% — 33
15% — 26
10% — 1A
5% — 0D
0% — 00
 */
