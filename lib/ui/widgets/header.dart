import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../constant/constant_public.dart';
import '../../menu_controller.dart';
import '../../responsive.dart';

Widget header(BuildContext context){
  return Row(
    children: [
      if (!Responsive.isDesktop(context))
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: context.read<MenuController>().controlMenu,
        ),
      Text(
        kOverview,
        style: AppFontStyle.fontStyles(
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
      const SizedBox(
        width: 15,
      ),
      SvgPicture.asset(
        AssetImages.icCalendarOrange,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        '16 August 2020',
        style: AppFontStyle.fontStyles(
          color: AppColors.grayText,
          fontSize: 13.0,
        ),
      ),
      const SizedBox(
        width: 5,
      ),
      SvgPicture.asset(
        AssetImages.icDownArrow,
      ),
    ],
  );
}