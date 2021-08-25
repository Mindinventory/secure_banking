class TransactionItemListModel{

   String icon;
   String itemName;
   String timing;
   String price;


  TransactionItemListModel({required this.icon,required this.itemName,required this.timing,required this.price,});


  static List<TransactionItemListModel> fetchAllTransactionListData() {
    return [
     TransactionItemListModel(icon: "",itemName:"Gym",timing:"1:21pm", price:"- 10.95"),
     TransactionItemListModel(icon: "",itemName:"Shopping",timing:"1:21pm", price:"- 120.00"),
     TransactionItemListModel(icon: "",itemName:"Netflix",timing:"1:21pm", price:"- 120.00"),
     TransactionItemListModel(icon: "",itemName:"Dairy",timing:"1:21pm", price:"- 120.00"),
     TransactionItemListModel(icon: "",itemName:"Grocery",timing:"1:21pm", price:"- 120.00"),
    ];
  }
}
