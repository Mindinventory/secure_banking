import 'package:flutter/material.dart';
import 'package:secure_banking/ui/widgets/transaction_view_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Align(
            alignment: Alignment.bottomCenter,
            child: PremiumCardImageWidget()),
        TransactionViewWidget()
      ],
    );
  }
}
