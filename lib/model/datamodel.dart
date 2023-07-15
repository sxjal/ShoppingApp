import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Data {
  Data({
    required this.item,
    required this.choiceofmilk,
    required this.choiceofsugar,
    required this.choiceofsize,
    required this.description,
    required this.highpriority,
    required this.image,
  }) : id = uuid.v4();

  final String item;
  final String id;
  final List<String> choiceofmilk;
  final List<String> choiceofsugar;
  final List<String> choiceofsize;
  final String description;
  final bool highpriority;
  final String image;
}
