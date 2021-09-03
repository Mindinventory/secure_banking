import '../constant/constant_public.dart';

class TilesDataModel {
  String title;
  String icons;
  bool isPressed;

  TilesDataModel(
      {required this.icons, required this.isPressed, required this.title});

  static List<TilesDataModel> getTilesData() {
    return [
      TilesDataModel(
          title: kDashboard, icons: AssetImages.icDashboard, isPressed: true),
      TilesDataModel(
          title: kAccounts, icons: AssetImages.icAccount, isPressed: false),
      TilesDataModel(
          title: kTransaction, icons: AssetImages.icShield, isPressed: false),
      TilesDataModel(
          title: kSecure, icons: AssetImages.icSettings, isPressed: false),
    ];
  }

  static List<TilesDataModel> getTilesOtherData() {
    return [
      TilesDataModel(
          title: kFeedback, icons: AssetImages.icDashboard, isPressed: false),
      TilesDataModel(
          title: kContact, icons: AssetImages.icAccount, isPressed: false),
      TilesDataModel(
          title: kHelp, icons: AssetImages.icShield, isPressed: false),
    ];
  }
}
