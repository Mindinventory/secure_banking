import 'package:secure_banking/constant/constant_public.dart';

class TilesDataModel {
  String title;
  String icons;
  bool isPressed;

  TilesDataModel(
      {required this.icons, required this.isPressed, required this.title});

  static List<TilesDataModel> getTilesData() {
    return [
     /* TilesDataModel(
          title: kSecureBanking, icons: AssetImages.ic_bank, isPressed: false),*/
      TilesDataModel(
          title: kDashboard, icons: AssetImages.ic_dashboard, isPressed: false),
      TilesDataModel(
          title: kAccounts,
          icons: AssetImages.ic_account,
          isPressed: false),
      TilesDataModel(
          title: kTransaction,
          icons: AssetImages.ic_shield,
          isPressed: false),
      TilesDataModel(
          title: kSecure, icons: AssetImages.ic_settings, isPressed: false),
    ];
  }
}
