import 'package:blocfreezed/app/core/services/photo_service.dart';
import 'package:blocfreezed/app/modules/photo/presentation/bloc/photo_bloc.dart';
import 'package:blocfreezed/app/modules/photo/presentation/photo_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PhotoModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => PhotoBloc(i())),
    Bind.lazySingleton((i) => PhotoService(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const PhotoPage()),
  ];
}
