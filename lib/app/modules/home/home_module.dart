import 'package:blocfreezed/app/modules/home/presentation/bloc/home_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/services/todo_service.dart';
import 'presentation/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeBloc(i())),
    Bind.lazySingleton((i) => TodoService(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => HomePage()),
  ];
}
