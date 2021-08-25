import 'package:secure_banking/constant/constant_public.dart';

class TilesDataModel {
  String title;
  // String icons;
  // bool isPressed;

  TilesDataModel({/*required this.icons, required this.isPressed,*/ required this.title});
  static List<TilesDataModel> getTilesData() {
    return [
      TilesDataModel(
          title: kSecureBanking/*, icons: AssetImages.menuIcon, isPressed: false*/),
      TilesDataModel(
          title: kDashboard/*, icons: AssetImages.cardIcon, isPressed: false*/),
      TilesDataModel(
          title: kAccounts,
         /* icons: AssetImages.statisticsIcon,
          isPressed: false*/),
      TilesDataModel(
          title: kTransaction/*, icons: AssetImages.premiumIcon, isPressed: false*/),
      TilesDataModel(
          title: kSecure,/* icons: AssetImages.userIcon, isPressed: false*/),
      TilesDataModel(
          title: kSettings,/* icons: AssetImages.settingsIcon, isPressed: false*/),
    ];
  }
}