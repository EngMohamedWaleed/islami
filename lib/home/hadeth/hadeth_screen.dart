import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class AhadethScreen extends StatelessWidget {
  const AhadethScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/hadeth_main_bg.png'),
        Divider(
          color: MyThemeData.colorgold,
          thickness: 2,
        ),
        Text(
          'Ahadeth',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: MyThemeData.colorblack),
        ),
        Divider(
          color: MyThemeData.colorgold,
          thickness: 2,
        ),
      ],
    );
  }
}
