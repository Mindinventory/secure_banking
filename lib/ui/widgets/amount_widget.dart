import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant/constant_public.dart';

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
      child: Row(
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
                      style: AppFontStyle.fontStyles(
                        color: Color(0xFF00294F),
                        fontSize: 20.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          kCreditAmount,
                          style: AppFontStyle.fontStyles(
                            color: AppColors.textColor.withOpacity(0.46),
                            fontSize: 13.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          kDate,
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
                        fontSize: 20.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          kCreditAmount,
                          style: AppFontStyle.fontStyles(
                            color: AppColors.textColor.withOpacity(0.46),
                            fontSize: 13.0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          kDate,
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
    );
  }
}
