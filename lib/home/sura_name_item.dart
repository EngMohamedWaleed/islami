import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/sura_view.dart';

class SuraNameItem extends StatelessWidget {
  String title;

  SuraNameItem(this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.roueName,
            arguments: SuraDetailsArgs(title));
      },
      child: Center(
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),
        ),
      ),
    );
  }
}
