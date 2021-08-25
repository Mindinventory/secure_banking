import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
            DrawerListTile(
              title: "Dashboard",
              // svgSrc: "assets/icons/menu_dashbord.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Accounts",
              // svgSrc: "assets/icons/menu_tran.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Transaction",
              // svgSrc: "assets/icons/menu_task.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Secure",
              // svgSrc: "assets/icons/menu_doc.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Settings",
              // svgSrc: "assets/icons/menu_store.svg",
              press: () {},
            ),
            Image.network('https://picsum.photos/250?image=9')
          ],
        ),
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

  final String title/*, svgSrc*/;
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
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
