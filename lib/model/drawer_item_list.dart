import 'package:secure_banking/constant/constant_public.dart';

class TilesDataModel {
  String title;
  String icons;
  bool isPressed;

  TilesDataModel(
      {required this.icons, required this.isPressed, required this.title});

  static List<TilesDataModel> getTilesData() {
    return [
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

  static List<TilesDataModel> getTilesOtherData() {
    return [
      TilesDataModel(
          title: kFeedback, icons: AssetImages.ic_dashboard, isPressed: false),
      TilesDataModel(
          title: kContact,
          icons: AssetImages.ic_account,
          isPressed: false),
      TilesDataModel(
          title: kHelp,
          icons: AssetImages.ic_shield,
          isPressed: false),
    ];
  }


}
