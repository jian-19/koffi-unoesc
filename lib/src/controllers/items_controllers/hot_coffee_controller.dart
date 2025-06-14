import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/models/item_model.dart';
import 'package:koffi_unoesc/src/repositories/item_repository.dart';

class HotCoffeeController {
  final String type = "hot_drinks";

  final state = ValueNotifier<ItemState>(ItemState.start);

  ItemState _itemState = ItemState.start;

  List<ItemModel> items = [];
  final _repository = ItemRepository();

  Future start() async {
    state.value = ItemState.loading;
    try {
      items = await _repository.fetchType(type);
      state.value = ItemState.success;
    } catch (err) {
      print(err);
      state.value = ItemState.error;
    }
  }
}

enum ItemState { start, loading, success, error }
