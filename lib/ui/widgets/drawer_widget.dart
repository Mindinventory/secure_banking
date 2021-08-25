import 'package:flutter/material.dart';
import 'package:secure_banking/constant/constant_public.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          /*DrawerHeader(
            child: Image.network('https://picsum.photos/250?image=9'),
          ),*/
          SizedBox(
            height: 20,
          ),
          DrawerListTile(
            title: kSecureBanking,
            // svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(kSecureBanking)));
            },
          ),
          SizedBox(
            height: 20,
          ),
          DrawerListTile(
            title: kDashboard,
            // svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: kAccounts,
            // svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: kTransaction,
            // svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: kSecure,
            // svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: kSettings,
            // svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          Spacer(),
          Image.network('https://picsum.photos/250?image=9')
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    // required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title

      /*, svgSrc*/;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      /*leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),*/
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
