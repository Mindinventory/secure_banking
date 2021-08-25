import 'package:flutter/material.dart';
import 'package:secure_banking/constant/constant_public.dart';

class TransactionViewWidget extends StatefulWidget {
  const TransactionViewWidget({Key? key}) : super(key: key);

  @override
  _TransactionViewWidgetState createState() => _TransactionViewWidgetState();
}

class _TransactionViewWidgetState extends State<TransactionViewWidget> {

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Transaction",style: AppFontStyle.textFiledNormal(),),
                  IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.add,size:25,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
