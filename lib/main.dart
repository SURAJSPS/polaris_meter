import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:polaris_meter/presentation/core/app_widget.dart';

import 'common_libs.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  await dotenv.load(
      fileName:
          "config/.env"); // mergeWith optional, you can include Platform.environment for Mobile/Desktop app

  await ConfigReader.initialize();

  ConfigReader.getBaseUrl();

  if (kIsWeb) {
    _registerHiveAdapters();
  } else {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    _registerHiveAdapters();
  }
  await init();

  runApp(const AppWidget());
}

_registerHiveAdapters() {
  Hive.registerAdapter(SurveyFormDBModelAdapter());
  Hive.registerAdapter(FieldFormDBModelAdapter());
  Hive.registerAdapter(MetaInfoDBModelAdapter());
}
