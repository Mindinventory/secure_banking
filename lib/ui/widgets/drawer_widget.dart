import 'package:flutter/material.dart';
import 'package:secure_banking/constant/constant_public.dart';
import 'package:secure_banking/model/drawer_item_list.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  List<TilesDataModel> tileList = [];

  @override
  void initState() {
    tileList.addAll(TilesDataModel.getTilesData());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
          Expanded(
            flex: 8,
            child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: tileList.length,
                itemBuilder: (BuildContext context, i) {
                  return DrawerListTile(
                      title: tileList[i].title,
                      // title: tileList[i],
                      press: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(tileList[i].title),),);
                        /*setState(() {
                      tileList.forEach((element) {
                        if(element.contains());
                      });
                      tileList[i].isPressed = true;
                    }*/

                      });
                }),
          ),
          /*DrawerListTile(
            title: kSecureBanking,
            // svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(kSecureBanking)));
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
          ),*/
          // Spacer(),
          Expanded(
              flex: 3,
              child: Image.network('https://picsum.photos/250?image=9'))
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
