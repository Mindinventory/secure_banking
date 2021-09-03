import 'package:flutter/material.dart';
import '../../constant/color_constant.dart';
import '../../constant/constant_public.dart';
import '../../responsive.dart';
import '../widgets/amount_widget.dart';
import '../widgets/chart_directory/line_chart.dart';
import '../widgets/header.dart';
import '../widgets/transaction_view_widget.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          if (!Responsive.isMobile(context)) header(context),
          if (Responsive.isMobile(context)) headerMobile(context),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    const SizedBox(height: 16.0),
                    const AmountCardsWidget(),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 340,
                      width: 1200,
                      child: Card(
                        color: AppColors.lightGray,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            side: BorderSide(
                              width: 5,
                              color: AppColors.lightGray,
                            )),
                        child: MyLinearChart(),
                      ),
                    ),
                    const PremiumCardImageWidget(),
                  ],
                ),
              ),
              if (!Responsive.isMobile(context)) const SizedBox(width: 16.0),
              // On Mobile means if the screen is less than 850 we dont want to show it
              if (!Responsive.isMobile(context))
                const Expanded(
                  flex: 3,
                  child: TransactionViewWidget(),
                ),
            ],
          ),
          if (Responsive.isMobile(context)) const SizedBox(height: 16.0),
          if (Responsive.isMobile(context)) const TransactionViewWidget(),
        ],
      ),
    );
  }
}
