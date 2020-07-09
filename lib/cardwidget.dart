import 'package:flutter/material.dart';
import 'components/card.dart';
import 'config/size.dart';

class CardWidget extends StatefulWidget {
  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    double fontSize(double size) {
      return size * width / 414;
    }

    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(horizontal: width / 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Card Selected",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: fontSize(20)),
            )),
        Expanded(
            child: PageView.builder(
                itemCount: 2,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: width / 25, vertical: height / 30),
                    child: BankCard(),
                  );
                })),
      ],
    );
  }
}
