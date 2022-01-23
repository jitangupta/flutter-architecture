import 'package:flutter_poc_app/models/deal_model.dart';
import 'package:flutter_poc_app/models/sample_model.dart';

class SampleService {
  Future<List<Sample>> getNewItem(int pageNumber) async {
    int startingNumber = 15 * pageNumber;
    List<Sample> items = [];
    for (int counter = 0; counter < 15; counter++) {
      items.add(
          Sample(id: startingNumber, text: 'Text for item $startingNumber'));
      startingNumber++;
    }
    return items;
  }

  Future<List<Deal>> getNewDeals(int pageNumber) async {
    int startingNumber = 10 * pageNumber;
    List<Deal> items = [];
    for (int counter = 0; counter < 10; counter++) {
      items.add(Deal(
          id: startingNumber,
          title: 'Text for item $startingNumber',
          description:
              'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.'));
      startingNumber++;
    }
    return items;
  }
}
