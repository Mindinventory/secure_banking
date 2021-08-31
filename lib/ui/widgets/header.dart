import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secure_banking/constant/constant_public.dart';
import 'package:provider/provider.dart';
import 'package:secure_banking/menu_controller.dart';
import 'package:secure_banking/responsive.dart';

Widget header(BuildContext context){
  return Row(
    children: [
      if (!Responsive.isDesktop(context))
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: context.read<MenuController>().controlMenu,
        ),
      Text(
        kOverview,
        style: AppFontStyle.fontStyles(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
      SizedBox(
        width: 15,
      ),
      SvgPicture.asset(
        AssetImages.ic_calendar_orange,
      ),
      SizedBox(
        width: 10,
      ),
      Text(
        '16 August 2020',
        style: AppFontStyle.fontStyles(
          color: AppColors.grayText,
          fontSize: 13.0,
        ),
      ),
      SizedBox(
        width: 5,
      ),
      SvgPicture.asset(
        AssetImages.ic_down_arrow,
      ),
    ],
  );
}