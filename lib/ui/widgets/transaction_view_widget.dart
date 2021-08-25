import 'package:flutter/material.dart';
import 'package:secure_banking/constant/constant_public.dart';
import 'package:secure_banking/model/transaction_item_list_model.dart';

class TransactionViewWidget extends StatefulWidget {
  const TransactionViewWidget({Key? key}) : super(key: key);

  @override
  _TransactionViewWidgetState createState() => _TransactionViewWidgetState();
}

class _TransactionViewWidgetState extends State<TransactionViewWidget> {

  List<TransactionItemListModel> getTransactionListData = [];

  @override
  void initState() {
    getTransactionListData.addAll(TransactionItemListModel.fetchAllTransactionListData());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return  Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.only(top:80,bottom:10),
      child: Card(
        color: AppColors.lightGray,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(width: 5,color:  AppColors.lightGray,)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transaction",style: AppFontStyle.textFiledNormal(),),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add,size:25,),
                  )
                ],
              ),
            ),
            ListView.builder(
              itemCount: getTransactionListData.length,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (context,index) {
                TransactionItemListModel transactionList =  getTransactionListData[index];
                return Padding(
                  padding: EdgeInsets.only(bottom:10),
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(transactionList.itemName),
                        SizedBox(height:2,),
                        Text(transactionList.timing)
                      ],
                    ),
                    trailing: Text(transactionList.price),
                  ),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.only(top:10,left:10,bottom:10),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Card",style:AppFontStyle.customAlertTitle,),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.more_horiz,size: 20,),
                  ),
                ],
              ),
            ),
            Image.asset(AssetImages.cardImg),
          ],
        ),
      ),
    );
  }
}
