import 'package:flutter/material.dart';
import 'package:secure_banking/ui/widgets/transaction_view_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _flex1 = 1, _flex2 = 5;

  @override
  Widget build(BuildContext context) {
    final pWidth = MediaQuery.of(context).size.width;
    var width1 = (_flex1 * pWidth) / (_flex1 + _flex2);
    var width2 = (_flex2 * pWidth) / (_flex1 + _flex2);
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Container(
            width: width1,
            child: Column(
              children: [
                PremiumCardImageWidget(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: TransactionViewWidget(),
            width: width2,
          ),
        )
      ],
    );
  }
}
