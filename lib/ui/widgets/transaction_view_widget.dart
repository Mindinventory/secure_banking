import 'package:flutter/material.dart';

class TransactionViewWidget extends StatefulWidget {
  const TransactionViewWidget({Key? key}) : super(key: key);

  @override
  _TransactionViewWidgetState createState() => _TransactionViewWidgetState();
}

class _TransactionViewWidgetState extends State<TransactionViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 500,
            child: Card(  
              color: Colors.blueGrey,
              child: Column(
                children: [
                 Text("Transaction")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
