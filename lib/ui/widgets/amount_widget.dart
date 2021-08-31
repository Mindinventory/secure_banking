import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secure_banking/constant/constant_public.dart';
import 'package:secure_banking/responsive.dart';

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
    return Container(
      child: Column(
        children: [
          if (!Responsive.isMobile(context))
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Card(
                    color: AppColors.lightGray,
                    elevation: 5,
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
                            AssetImages.ic_money_rising,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            kCreditMoney,
                            overflow: TextOverflow.ellipsis,
                            style: AppFontStyle.fontStyles(
                              color: Color(0xFF00294F),
                              fontSize: 18.0,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    kCredit,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    kAmount,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                kDate,
                                overflow: TextOverflow.ellipsis,
                                style: AppFontStyle.fontStyles(
                                  color: Color(0xFF1A40C9).withOpacity(0.5),
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
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 5,
                  child: Card(
                    color: AppColors.lightGray,
                    elevation: 5,
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
                            AssetImages.ic_card_rising,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            kCreditCard,
                            style: AppFontStyle.fontStyles(
                              color: Color(0xFF00294F),
                              fontSize: 18.0,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    kCredit,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    kAmount,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                kDate,
                                overflow: TextOverflow.ellipsis,
                                style: AppFontStyle.fontStyles(
                                  color: Color(0xFF1A40C9).withOpacity(0.5),
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
          if (Responsive.isMobile(context))
            Column(
              children: [
                Container(
                  // height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: AppColors.lightGray,
                    elevation: 5,
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
                            AssetImages.ic_money_rising,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            kCreditMoney,
                            overflow: TextOverflow.ellipsis,
                            style: AppFontStyle.fontStyles(
                              color: Color(0xFF00294F),
                              fontSize: 18.0,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    kCredit,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    kAmount,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                kDate,
                                overflow: TextOverflow.ellipsis,
                                style: AppFontStyle.fontStyles(
                                  color: Color(0xFF1A40C9).withOpacity(0.5),
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
                SizedBox(
                  width: 20,
                ),
                Container(
                  // height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    color: AppColors.lightGray,
                    elevation: 5,
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
                            AssetImages.ic_card_rising,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            kCreditCard,
                            style: AppFontStyle.fontStyles(
                              color: Color(0xFF00294F),
                              fontSize: 18.0,
                            ),
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    kCredit,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  Text(
                                    kAmount,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppFontStyle.fontStyles(
                                      color:
                                          AppColors.textColor.withOpacity(0.46),
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                kDate,
                                overflow: TextOverflow.ellipsis,
                                style: AppFontStyle.fontStyles(
                                  color: Color(0xFF1A40C9).withOpacity(0.5),
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
      ),
    );
  }
}
