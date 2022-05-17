import 'package:blocfreezed/app/modules/photo/photo_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/services/global_interceptor.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => Dio(
        BaseOptions(
          baseUrl: 'https://jsonplaceholder.typicode.com',
        ),
      )..interceptors.add(GlobalInterceptor()),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/photos', module: PhotoModule()),
  ];
}
