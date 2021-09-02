import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant/constant_public.dart';
import '../../model/transaction_item_list_model.dart';
import '../../responsive.dart';

class TransactionViewWidget extends StatefulWidget {
  const TransactionViewWidget({Key? key}) : super(key: key);

  @override
  _TransactionViewWidgetState createState() => _TransactionViewWidgetState();
}

class _TransactionViewWidgetState extends State<TransactionViewWidget> {
  List<TransactionItemListModel> getTransactionListData = [];

  String imgUrl =
      'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=976&q=80';

  @override
  void initState() {
    getTransactionListData
        .addAll(TransactionItemListModel.fetchAllTransactionListData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Card(
            color: AppColors.lightGray,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(
                  width: 5,
                  color: AppColors.lightGray,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kTransaction,
                        style:
                            AppFontStyle.fontStyles(color: AppColors.textColor),
                      ),
                      Image.asset(
                        AssetImages.addImg,
                        height: 30,
                        width: 30,
                      )
                    ],
                  ),
                ),
                ListView.builder(
                  itemCount: getTransactionListData.length,
                  shrinkWrap: true,
                  primary: false,
                  itemBuilder: (context, index) {
                    var transactionList = getTransactionListData[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: SvgPicture.asset(transactionList.icon),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transactionList.itemName,
                              style: AppFontStyle.fontStyles(
                                  color: AppColors.textColor, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(transactionList.timing,
                                style: AppFontStyle.fontStyles(
                                    color: AppColors.textColor,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                        trailing: Text(
                            '- ${String.fromCharCodes(Runes('\u0024'))}${transactionList.price}',
                            style: AppFontStyle.fontStyles(
                                color: AppColors.textColor, fontSize: 12)),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(kMyCard,
                          style: AppFontStyle.fontStyles(
                              color: AppColors.textColor)),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_horiz,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15),
                  child: SvgPicture.asset(
                    AssetImages.cardImg,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PremiumCardImageWidget extends StatelessWidget {
  const PremiumCardImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          height: 340,
          decoration: BoxDecoration(
            color: AppColors.cardYellowColor.withOpacity(0.2),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Visibility(
                    visible: Responsive.isMobile(context),
                    child: Text(
                      kPremiumCardText,
                      style: AppFontStyle.fontStyles(
                          color: AppColors.textColor, fontSize: 14),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(AssetImages.laptopImgBg)),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Visibility(
                    visible: Responsive.isMobile(context),
                    child: FittedBox(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            kPremiumButton,
                            style: AppFontStyle.fontStyles(
                                fontSize: 13, color: AppColors.cardYellowColor),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12), // <-- Radius
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              SizedBox(width: rightAlignmentValue(context)),
              Visibility(
                visible: !Responsive.isMobile(context),
                child: Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          kPremiumCardText,
                          style: AppFontStyle.fontStyles(
                              color: AppColors.textColor, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        FittedBox(
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Text(
                                kPremiumButton,
                                style: AppFontStyle.fontStyles(
                                    fontSize: 13,
                                    color: AppColors.cardYellowColor),
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  double rightAlignmentValue(BuildContext context) {
    if (Responsive.isTab(context)) {
      return 80;
    } else if (Responsive.isTabletPro(context)) {
      return 100;
    } else if (Responsive.isMobile(context)) {
      return 30;
    } else {
      return 200;
    }
  }
}
