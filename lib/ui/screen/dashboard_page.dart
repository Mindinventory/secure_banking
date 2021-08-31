import 'package:flutter/material.dart';
import '../../constant/color_constant.dart';
import '../widgets/chart_directory/line_chart.dart';
import '../widgets/header.dart';
import '../../constant/constant_public.dart';
import '../../responsive.dart';
import '../widgets/amount_widget.dart';
import '../widgets/transaction_view_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _flex1 = 1, _flex2 = 5;

  @override
  Widget build(BuildContext context) {
    /*final pWidth = MediaQuery.of(context).size.width;
    var width1 = (_flex1 * pWidth) / (_flex1 + _flex2);
    var width2 = (_flex2 * pWidth) / (_flex1 + _flex2);*/
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 5,
            child: Column(
              children: [
                header(context),
                SizedBox(height: 16.0),
                AmountCardsWidget(),
                Container(
                  margin: EdgeInsets.only(top: 20),
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
                if (Responsive.isMobile(context)) SizedBox(height: 16.0),
                if (Responsive.isMobile(context)) Container(),
              ],
            ),
          ),
          if (!Responsive.isMobile(context)) SizedBox(width: 16.0),
          // On Mobile means if the screen is less than 850 we dont want to show it
          if (!Responsive.isMobile(context))
            Expanded(
              flex: 2,
              child: TransactionViewWidget(),
            ),
        ],
      ),
    );
  }
}
