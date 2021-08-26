import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secure_banking/constant/constant_public.dart';

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
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              kCreditAmount,
                            ),
                            Spacer(),
                            Text(
                              kDate,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        AssetImages.ic_card_rising,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(kCreditCard),
                      Row(
                        children: [
                          Text(
                            kCreditAmount,
                          ),
                          Spacer(),
                          Text(
                            kDate,
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
      ),
    );
  }
}
