import 'package:flutter/material.dart';
import 'package:secure_banking/constant/constant_public.dart';
import 'package:secure_banking/menu_controller.dart';
import 'package:secure_banking/responsive.dart';
import 'package:secure_banking/ui/screen/dashboard_page.dart';
import 'package:secure_banking/ui/widgets/side_menu_widget.dart';
import 'package:secure_banking/ui/widgets/transaction_view_widget.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Duration _duration;
  int _flex1 = 1, _flex2 = 5;

  @override
  void initState() {
    _duration = Duration(milliseconds: 500);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pWidth = MediaQuery.of(context).size.width;
    var width1 = (_flex1 * pWidth) / (_flex1 + _flex2);
    var width2 = (_flex2 * pWidth) / (_flex1 + _flex2);

    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = SideMenu1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashBoardPage(),
            ),
              /*Expanded(
                child: AnimatedContainer(
                  color: AppColors.lightGray,
                  duration: _duration,
                  width: width1,
                  child: SideMenu(),
                ),
              ),
            AnimatedContainer(
              duration: _duration,
              child: DashBoardPage(),
              width: Responsive.isDesktop(context) ? width2 : pWidth,
            ),*/
          ],
        ),
      ),
    );
  }
}
