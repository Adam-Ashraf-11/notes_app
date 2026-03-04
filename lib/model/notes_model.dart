import 'package:hive_ce/hive.dart';
part 'notes_model.g.dart';


@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  NotesModel({
    required this.title,
    required this.date,
    required this.subTitle,
    required this.color,
  });
@HiveField(0)
  final String title;
  @HiveField(1)
  final String date;
  @HiveField(2)
  final String subTitle;
  @HiveField(3)
  final int color;
}
