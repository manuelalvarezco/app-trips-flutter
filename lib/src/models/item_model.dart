import 'item_result.dart';

class ItemModel {
  int page;
  int totalResult;
  int totalPage;
  List<ItemResult> results = [];

  ItemModel({this.page, this.totalResult, this.totalPage, this.results});

  factory ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    _result() {
      List<ItemResult> temp = [];
      for (int i = 0; i < parsedJson['results'].length; i++) {
        ItemResult result = ItemResult(parsedJson['results'][i]);
        temp.add(result);
      }
      return temp;
    }

    return ItemModel(
        page: parsedJson['page'],
        totalResult: parsedJson['totalresults'],
        totalPage: parsedJson['total_pages'],
        results: _result());
  }
}
