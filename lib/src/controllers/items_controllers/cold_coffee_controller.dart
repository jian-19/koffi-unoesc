import 'package:flutter/material.dart';
import 'package:koffi_unoesc/src/models/item_model.dart';
import 'package:koffi_unoesc/src/repositories/item_repository.dart';

class ColdCoffeeController {
  final String type = "cold_drinks";

  final state = ValueNotifier<ItemState>(ItemState.start);

  final ItemState _itemState = ItemState.start;

  List<ItemModel> items = [];
  final _repository = ItemRepository();

  Future start() async {
    state.value = ItemState.loading;
    try {
      items = await _repository.fetchType(type);
      state.value = ItemState.success;
    } catch (err) {
      state.value = ItemState.error;
    }
  }
}

enum ItemState { start, loading, success, error }
