import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:miniprojectsalt/injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(generateForDir: ['lib'])
Future<void> configureDependencies() async => getIt.init();
