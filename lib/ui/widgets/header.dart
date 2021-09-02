import 'package:cached_network_image/cached_network_image.dart';
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
      Expanded(
        flex: 4,
        child: Row(
          children: [
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
        ),
      ),
      // Spacer(),
      Expanded(
          flex: 2,
          child: SizedBox()),
      Expanded(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 15.0,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(kFeedback,
                  style: AppFontStyle.fontStyles(
                      color: AppColors.textColor, fontSize: 13)),
              Text(kContact,
                  style: AppFontStyle.fontStyles(
                      color: AppColors.textColor, fontSize: 13)),
              Text(kHelp,
                  style: AppFontStyle.fontStyles(
                      color: AppColors.textColor, fontSize: 13)),
              SvgPicture.asset(AssetImages.bellIcon, height: 21, width: 21),
              CircleAvatar(
                radius: 15,
                child: ClipOval(
                  child: CachedNetworkImage(
                    imageUrl:
                    'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=976&q=80',
                    fit: BoxFit.cover,
                    width: 42,
                    height: 48,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget headerMobile(BuildContext context) {
  return Row(
    // mainAxisAlignment: MainAxisAlignment.end,
    children: [
      if (!Responsive.isDesktop(context))
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: context.read<MenuController>().controlMenu,
        ),
      const Spacer(),
      SvgPicture.asset(AssetImages.bellIcon, height: 21, width: 21),
      const SizedBox(width: 20,),
      CircleAvatar(
        radius: 15,
        child: ClipOval(
          child: CachedNetworkImage(
            imageUrl:
                'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=976&q=80',
            fit: BoxFit.cover,
            width: 42,
            height: 48,
          ),
        ),
      ),
    ],
  );
}