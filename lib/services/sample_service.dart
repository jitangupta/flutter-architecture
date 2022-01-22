import 'package:flutter_poc_app/sample_model.dart';

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
}
