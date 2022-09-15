import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf_static/shelf_static.dart';

FutureOr<Response> fileHandler(Request req) {
  // final message = req.params['path'];
  final hander = createStaticHandler(
    '/home/santo/Downloads/',
    serveFilesOutsidePath: true,
    listDirectories: true,
  );
  return hander.call(req);
}
