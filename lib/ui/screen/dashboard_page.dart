import 'package:flutter/material.dart';
import 'package:secure_banking/constant/color_constant.dart';
import 'package:secure_banking/ui/widgets/chart_directory/line_chart.dart';
import '../widgets/chart_directory/line_chart_draw2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:secure_banking/constant/constant_public.dart';
import 'package:secure_banking/menu_controller.dart';
import 'package:secure_banking/responsive.dart';
import 'package:secure_banking/ui/widgets/amount_widget.dart';
import 'package:secure_banking/ui/widgets/transaction_view_widget.dart';
import 'package:provider/provider.dart';

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
        SizedBox(
          width: 50,
        ),
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    if (!Responsive.isDesktop(context))
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: context.read<MenuController>().controlMenu,
                      ),
                    Text(
                      kOverview,
                      style: AppFontStyle.fontStyles(
                        color: Colors.black,
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SvgPicture.asset(
                      AssetImages.ic_calendar_orange,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '16 August 2020',
                      style: AppFontStyle.fontStyles(
                        color: AppColors.grayText,
                        fontSize: 13.0,
                      ),
                    ),
                    SizedBox(width: 5,),
                    SvgPicture.asset(
                      AssetImages.ic_down_arrow,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                AmountCardsWidget(),
                PremiumCardImageWidget(),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: TransactionViewWidget(),
            width: width1,
          ),
        ),
      ],
    );
  }
}
