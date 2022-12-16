import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.transparent,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                'assets/images/head of seb7a.png',
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image.asset('assets/images/sebha_main_bg.png'),
              )
            ],
          ),
          Text('عدد التسبيحات')
        ],
      ),
    );
  }
}
//42
