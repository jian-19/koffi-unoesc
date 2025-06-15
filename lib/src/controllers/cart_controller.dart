import 'package:koffi_unoesc/src/models/item_model.dart';

class CartController {
  static CartController instance = CartController();

  final List<ItemModel> _listItems = [];

  void add(ItemModel item) {
    _listItems.add(item);
  }

  void remove(ItemModel item) {
    _listItems.remove(item);
  }

  getByIndex(index) {
    return _listItems[index];
  }

  int length() {
    return _listItems.length;
  }

  double totalPrice() {
    var price = 0.0;
    for (var e in _listItems) {
      price += e.price;
    }
    var finalPrice = double.parse(price.toStringAsFixed(2));
    return finalPrice;
  }

  List<ItemModel> getAll() {
    return _listItems;
  }
}
