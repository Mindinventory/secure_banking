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
  final List<TilesDataModel> _tileList = [];
  List<TilesDataModel> _menu1 = [];
  List<TilesDataModel> _menu2 = [];

  @override
  void initState() {
    super.initState();
    _menu1 = TilesDataModel.getTilesData();
    _menu2 = TilesDataModel.getTilesOtherData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context) && _tileList.length <= 4) {
      _tileList.clear();
      _tileList.addAll(_menu1);
      _tileList.addAll(_menu2);
    } else if (!Responsive.isMobile(context) &&
        (_tileList.length >= 4 || _tileList.isEmpty)) {
      _tileList.clear();
      _tileList.addAll(_menu1);
    }

    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColors.lightGray,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            //   mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                alignment: Alignment.center,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
              ),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: _tileList.length,
                itemBuilder: (BuildContext context, i) {
                  var data = _tileList[i];
                  return DrawerListTile(
                    tileData: data,
                    press: () => _listTileClick(data, context),
                  );
                },
              ),
              //const Spacer(),
              SizedBox(
                  height: Responsive.isMobile(context)
                      ? 20.0
                      : MediaQuery.of(context).size.height / 3.25),
              Image.asset(
                AssetImages.drawerBottom,
                // fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _listTileClick(TilesDataModel model, BuildContext context) {
    for (var element in _tileList) {
      if (element == model) {
        element.isPressed = true;
      } else {
        element.isPressed = false;
      }
    }
    setState(() {});
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
          left: _width * 0.01,
          right: _width * 0.01,
          bottom: 8,
          top: 5,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: tileData.isPressed ? AppColors.bgDrawerSelectedShadow : AppColors.lightGray,
              offset: const Offset(0.0, 15.0), //(x,y)
              blurRadius: 30.0,
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
