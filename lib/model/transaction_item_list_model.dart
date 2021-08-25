class TransactionItemListModel{

  final String? icon;
  final String? itemName;
  final String? timing;
  final String? price;


  TransactionItemListModel({this.icon,this.itemName,this.timing,this.price,});


  static List<TransactionItemListModel> fetchAllTransactionListData() {
    return [
     TransactionItemListModel(itemName:"Gym",timing:"1:21pm", price:"- 10.95"),
     TransactionItemListModel(itemName:"Shopping",timing:"1:21pm", price:"- 10.95"),
     TransactionItemListModel(itemName:"Gym",timing:"1:21pm", price:"- 10.95"),
     TransactionItemListModel(itemName:"Gym",timing:"1:21pm", price:"- 10.95"),
     TransactionItemListModel(itemName:"Gym",timing:"1:21pm", price:"- 10.95"),
    ];
  }
}
