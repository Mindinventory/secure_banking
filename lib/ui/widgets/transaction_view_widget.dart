import 'package:cached_network_image/cached_network_image.dart';
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

  @override
  void initState() {
    getTransactionListData
        .addAll(TransactionItemListModel.fetchAllTransactionListData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      /*height: MediaQuery.of(context).size.height,
      width: (!Responsive.isMobile(context))
          ? MediaQuery.of(context).size.width / 5.3
          : MediaQuery.of(context).size.width ,*/
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
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
                          "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=976&q=80",
                      fit: BoxFit.cover,
                      width: 42,
                      height: 48,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Card(
              color: AppColors.lightGray,
              shape: RoundedRectangleBorder(
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
                          style: AppFontStyle.fontStyles(
                              color: AppColors.textColor),
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
                      TransactionItemListModel transactionList =
                          getTransactionListData[index];
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
                              SizedBox(
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
                              "- " +
                                  String.fromCharCodes(Runes('\u0024')) +
                                  transactionList.price,
                              style: AppFontStyle.fontStyles(
                                  color: AppColors.textColor, fontSize: 12)),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 18, left: 18, right: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(kMyCard,
                            style: AppFontStyle.fontStyles(
                                color: AppColors.textColor)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0,top: 15),
                    child: SvgPicture.asset(
                      AssetImages.cardImg,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PremiumCardImageWidget extends StatelessWidget {
  const PremiumCardImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Positioned(
              right: 40,
              top: 70,
              child: Text(
                kPremiumCardText,
                style: AppFontStyle.fontStyles(
                    color: AppColors.textColor, fontSize: 16),
              ),),
          SvgPicture.asset(AssetImages.preimumCardImag),
        ],
      ),
    );
  }
}
