import 'package:flutter/material.dart';
import 'package:secure_banking/ui/screen/home_page.dart';
import 'package:secure_banking/ui/widgets/amount_widget.dart';
import 'package:secure_banking/ui/widgets/transaction_view_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Secure banking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AmountCardsWidget(),
    );
  }
}
