import 'package:flutter/material.dart';
import 'package:neumorphic_bank_expenses_ui/config/colors.dart';
import 'package:neumorphic_bank_expenses_ui/config/size.dart';

class ArrowButton extends StatelessWidget {
  final EdgeInsets margin;
  final Widget icon;
  ArrowButton({this.margin, this.icon});
  @override
  Widget build(BuildContext context) {
    var height = SizeConfig.getHeight(context);
    var width = SizeConfig.getWidth(context);
    return Expanded(
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
            color: AppColors.primaryWhite,
            borderRadius: BorderRadius.circular(20),
            boxShadow: AppColors.neumorpShadow),
        alignment: Alignment.center,
        child: icon,
      ),
    );
  }
}
