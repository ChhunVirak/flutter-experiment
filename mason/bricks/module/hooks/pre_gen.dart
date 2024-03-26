import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  //GEN Route
  final screenName = context.vars['name'].toString();
  final content = '''
,GoRoute(
      path: ${screenName.pascalCase}Screen.routeName,
      builder: (_, __) => const ${screenName.pascalCase}Screen(),
    )
''';

  final importContent =
      '''import '../../modules/${screenName.snakeCase}/screen/${screenName.snakeCase}_screen.dart';''';

  final routeFilePath =
      '${Directory.current.path}/lib/config/router/app_router.dart';

  final routeFile = File(routeFilePath)..createSync(recursive: true);

  String routeContent = routeFile.readAsStringSync();

  //add file import
  final insertImportLine = routeContent.indexOf('//End Import');
  routeContent = routeContent.replaceRange(
      insertImportLine, insertImportLine, importContent);

  //add to Routes List
  final indexOfEndRoutesList = routeContent.lastIndexOf(']');
  routeContent = routeContent.replaceRange(
      indexOfEndRoutesList, indexOfEndRoutesList, content);

  context.vars['router'] = routeContent;
}
