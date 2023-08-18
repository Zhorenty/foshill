import 'package:drift/drift.dart';
import 'package:database/src/connection/open_connection_stub.dart'
    if (dart.library.io) 'package:database/src/connection/open_connection_io.dart'
    if (dart.library.html) 'package:database/src/connection/open_connection_html.dart'
    as connection;

part 'foshill_database.g.dart';

@DriftDatabase(include: {'tables/clothes.drift'})
class FoshillDatabase extends _$FoshillDatabase {
  FoshillDatabase({required String name})
      : super(connection.openConnection(name));

  @override
  int get schemaVersion => 1;
}
