import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Size {
  full,
  half,
  threefourth,
  quarter,
}

class Data {
  Data({
    required this.item,
    required this.choiceofmilk,
    required this.choiceofsugar,
    required this.choiceofsize,
    required this.highpriority,
  }) : id = uuid.v4();

  final String item;
  final String id;
  final List<String> choiceofmilk;
  final List<String> choiceofsugar;
  final List<String> choiceofsize;
  final bool highpriority;
}
