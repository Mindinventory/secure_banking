import 'package:flutter/material.dart';
import 'package:secure_banking/responsive.dart';
import 'package:secure_banking/ui/widgets/drawer_widget.dart';
import 'package:secure_banking/ui/widgets/transaction_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Duration _duration;
  int _flex1 = 1, _flex2 = 5

      /*, _flex3 = 1*/;

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
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                child: AnimatedContainer(
                  color: AppColors.bgDrawer,
                  duration: _duration,
                  width: width1,
                  child: SideMenu(),
                ),
              ),
           /* AnimatedContainer(
              duration: _duration,
              width: Responsive.isDesktop(context)
                  ? width2
                  : pWidth,
              color: Colors.red,
            ),*/
            AnimatedContainer(
              duration: _duration,
              child: DashBoardPage(),
              //width: width1,
            ),
          ],
        ),
      ),
    );
  }
}
