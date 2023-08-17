import 'package:drift/drift.dart';

part 'app_database.g.dart';

@DriftDatabase(
  include: {'tables/clothes.drift'},
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor openConnection) : super(openConnection);

  @override
  int get schemaVersion => 1;
}
