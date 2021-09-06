import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant/constant_public.dart';
import '../../responsive.dart';

class AmountCardsWidget extends StatefulWidget {
  const AmountCardsWidget({Key? key}) : super(key: key);

  @override
  _AmountCardsWidgetState createState() => _AmountCardsWidgetState();
}

class _AmountCardsWidgetState extends State<AmountCardsWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (!Responsive.isMobile(context) || Responsive.isTablet(context))
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Card(
                  color: AppColors.lightGray,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      side: const BorderSide(
                        width: 5,
                        color: AppColors.lightGray,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AssetImages.icMoneyRising,
                        ),
                        Text(
                          kCreditMoney,
                          overflow: TextOverflow.ellipsis,
                          style: AppFontStyle.fontStyles(
                            color: AppColors.textColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  kCreditAmount,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppFontStyle.fontStyles(
                                    color:
                                        AppColors.textColor.withOpacity(0.46),
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              kDate,
                              overflow: TextOverflow.ellipsis,
                              style: AppFontStyle.fontStyles(
                                color:
                                    AppColors.chartLineColor.withOpacity(0.5),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 5,
                child: Card(
                  color: AppColors.lightGray,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AssetImages.icCardRising,
                        ),
                        Text(
                          kCreditCard,
                          style: AppFontStyle.fontStyles(
                            color: AppColors.textColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                  child: Text(
                                    kCreditAmount,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              kDate,
                              overflow: TextOverflow.ellipsis,
                              style: AppFontStyle.fontStyles(
                                color:
                                    AppColors.chartLineColor.withOpacity(0.5),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        if (Responsive.isMobile(context) && !Responsive.isTablet(context))
          Column(
            children: [
              Container(
                // height: 300,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: AppColors.lightGray,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AssetImages.icMoneyRising,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          kCreditMoney,
                          overflow: TextOverflow.ellipsis,
                          style: AppFontStyle.fontStyles(
                            color: AppColors.textColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  kCreditAmount,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppFontStyle.fontStyles(
                                    color:
                                        AppColors.textColor.withOpacity(0.46),
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              kDate,
                              overflow: TextOverflow.ellipsis,
                              style: AppFontStyle.fontStyles(
                                color:
                                    AppColors.chartLineColor.withOpacity(0.5),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                // height: 300,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: AppColors.lightGray,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                      right: 15.0,
                      top: 10,
                      bottom: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          AssetImages.icCardRising,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          kCreditCard,
                          style: AppFontStyle.fontStyles(
                            color: AppColors.textColor,
                            fontSize: 18.0,
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  kCreditAmount,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppFontStyle.fontStyles(
                                    color:
                                        AppColors.textColor.withOpacity(0.46),
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              kDate,
                              overflow: TextOverflow.ellipsis,
                              style: AppFontStyle.fontStyles(
                                color:
                                    AppColors.chartLineColor.withOpacity(0.5),
                                fontSize: 10.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
      ],
    );
  }
}
