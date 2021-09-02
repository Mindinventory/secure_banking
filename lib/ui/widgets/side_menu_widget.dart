import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constant/constant_public.dart';
import '../../model/drawer_item_list.dart';

import '../../responsive.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
 final  List<TilesDataModel> _tileList = [];

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
    if (Responsive.isMobile(context) && _tileList.length <= 4) {
      _tileList.clear();
      _tileList.addAll(TilesDataModel.getTilesData());
      _tileList.addAll(TilesDataModel.getTilesOtherData());

    } else if (!Responsive.isMobile(context) &&
        (_tileList.length >= 4 || _tileList.isEmpty)) {
      _tileList.clear();
      _tileList.addAll(TilesDataModel.getTilesData());
    }

    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColors.lightGray,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            FittedBox(
              alignment: Alignment.center,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 25,
                  ),
                  SvgPicture.asset(
                    AssetImages.icBank,
                    height: 40.0,
                    width: 40.0,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    kSecureBanking,
                    overflow: TextOverflow.ellipsis,
                    style: AppFontStyle.fontStyles(
                      color: Colors.black,
                      fontSize: 16.0,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _tileList.length,
                itemBuilder: (BuildContext context, i) {
                  return DrawerListTile(
                    tileData: _tileList[i],
                    press: () => _listTileClick(i, context),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Image.asset(
                  AssetImages.drawerBottom,
                  // fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
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
        duration: const Duration(milliseconds: 300),
      ));
    });
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    required this.tileData,
    required this.press,
    Key? key,
  }) : super(key: key);

  final TilesDataModel tileData;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: _width * 0.01, right: _width * 0.01, bottom: 8),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: tileData.isPressed ? Colors.grey : AppColors.lightGray,
              offset: const Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: tileData.isPressed ? AppColors.lightGray : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              SvgPicture.asset(
                tileData.icons,
                height: 20,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                tileData.title,
                textAlign: TextAlign.start,
                style: AppFontStyle.fontStyles(
                  color: tileData.isPressed
                      ? Colors.black
                      : AppColors.drawerTextNotSelected,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
