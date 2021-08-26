import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  List<TilesDataModel> _tileList = [];

  @override
  void initState() {
    _tileList.addAll(TilesDataModel.getTilesData());
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*DrawerHeader(
            child: Image.network('https://picsum.photos/250?image=9'),
          ),*/
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 25,
              ),
              SvgPicture.asset(
                AssetImages.ic_bank,
                height: 50.0,
                width: 50.0,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                kSecureBanking,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 8,
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: _tileList.length,
              itemBuilder: (BuildContext context, i) {
                return DrawerListTile(
                  tileData: _tileList[i],
                  press: () => _listTileClick(i, context),
                );
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Image.asset(
              AssetImages.drawerBottom,
            ),
          ),
        ],
      ),
    );
  }

  void _listTileClick(int i, BuildContext context) {
    setState(() {
      var index = _tileList.indexWhere((element) => element.isPressed == true);
      if (index >= 0) {
        _tileList[index].isPressed = false;
      }
      _tileList[i].isPressed = true;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(_tileList[i].title),
        duration: Duration(milliseconds: 300),
      ));
    });
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.tileData,
    required this.press,
  }) : super(key: key);

  final TilesDataModel tileData;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return Container(
      margin:
          EdgeInsets.only(left: _width * 0.01, right: _width * 0.01, bottom: 8),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: tileData.isPressed ? Colors.grey : Colors.white,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        borderRadius: BorderRadius.circular(15.0),
        color: tileData.isPressed ? Colors.white : Colors.transparent,
      ),
      child: ListTile(
        onTap: press,
        leading: SvgPicture.asset(
          tileData.icons,
        ),
        title: Text(
          tileData.title,
          style: TextStyle(
            fontSize: 16.0,
            color: tileData.isPressed ? Colors.black : Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
