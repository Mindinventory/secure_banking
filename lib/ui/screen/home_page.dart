import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:secure_banking/menu_controller.dart';
import 'package:secure_banking/responsive.dart';
import 'package:secure_banking/ui/screen/dashboard_page.dart';
import 'package:secure_banking/ui/widgets/side_menu_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!Responsive.isMobile(context)) {
      context.read<MenuController>().scaffoldKey.currentState?.openEndDrawer();
    }
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
          ],
        ),
      ),
    );
  }
}
