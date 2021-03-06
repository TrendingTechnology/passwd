import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:passwd/services/path/path_service.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton(as: PathService)
class PathPathProvider implements PathService {
  @override
  Future<Directory> getDocDir() async {
    return (await getApplicationDocumentsDirectory());
  }
}
