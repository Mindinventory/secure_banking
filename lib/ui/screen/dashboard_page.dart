import 'package:flutter/material.dart';
import 'package:secure_banking/constant/color_constant.dart';
import 'package:secure_banking/ui/widgets/chart_directory/line_chart.dart';
import '../widgets/chart_directory/line_chart_draw2.dart';
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
                Container(
                  margin: EdgeInsets.only(top:100),
                  height: 340,
                  width: 555,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: AppColors.lightGray),
                  child: MyLinearChart(),
                ),
                PremiumCardImageWidget(),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: TransactionViewWidget(),
            width: width1,
          ),
        )
      ],
    );
  }
}
