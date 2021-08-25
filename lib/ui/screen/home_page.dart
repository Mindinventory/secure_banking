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
  @override
  Widget build(BuildContext context) {
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                flex:2,
                child: SideMenu(),
              ),
            Expanded(
                // It takes 5/6 part of the screen
                flex: 5,
                child: Container(
                  color: Colors.red,
                ) //DashboardScreen(),
                ),
            Expanded(
                flex: 2,
                child: TransactionViewWidget())
          ],
        ),
      ),
    );
  }
}
