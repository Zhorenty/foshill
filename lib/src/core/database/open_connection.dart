export 'package:foshill/src/core/database/src/open_connection_stub.dart'
    if (dart.library.ffi) 'src/open_connection_native.dart'
    if (dart.library.html) 'src/open_connection_html.dart';
