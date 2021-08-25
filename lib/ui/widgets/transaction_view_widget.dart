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
      width: 500,
      child: Card(
        color: Colors.blueGrey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
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
            Expanded(
              child: ListView.builder(
                itemCount: getTransactionListData.length,
                shrinkWrap: false,
                primary: false,
                itemBuilder: (context,index) {
                  TransactionItemListModel transactionList =  getTransactionListData[index];
                  return  Padding(
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
            )
          ],
        ),
      ),
    );
  }
}
