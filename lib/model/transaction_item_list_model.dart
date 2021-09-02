import '../constant/app_assets.dart';

class TransactionItemListModel {
  String icon;
  String itemName;
  String timing;
  String price;

  TransactionItemListModel({
    required this.icon,
    required this.itemName,
    required this.timing,
    required this.price,
  });

  static List<TransactionItemListModel> fetchAllTransactionListData() {
    return [
      TransactionItemListModel(
          icon: AssetImages.gymIcon,
          itemName: 'Gym',
          timing: '1:21pm',
          price: '10.95'),
      TransactionItemListModel(
          icon: AssetImages.shoppingIcon,
          itemName: 'Shopping',
          timing: '1:21pm',
          price: '120.00'),
      TransactionItemListModel(
          icon: AssetImages.netflixIcon,
          itemName: 'Netflix',
          timing: '1:21pm',
          price: '120.00'),
      TransactionItemListModel(
          icon: AssetImages.dairyIcon,
          itemName: 'Dairy',
          timing: '1:21pm',
          price: '120.00'),
      TransactionItemListModel(
          icon: AssetImages.groceryIcon,
          itemName: 'Grocery',
          timing: '1:21pm',
          price: '120.00'),
    ];
  }
}
