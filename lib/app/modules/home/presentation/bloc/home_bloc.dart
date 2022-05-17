import 'package:blocfreezed/app/core/services/todo_service.dart';
import 'package:blocfreezed/app/modules/home/presentation/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TodoService _todoService;

  HomeBloc(this._todoService) : super(const HomeState.initial()) {
    on<FetchPosts>((event, emit) => _fetchData());
  }

  void _fetchData() async {
    emit(const HomeState.loading());
    _todoService.getTodos().then((todos) {
      emit(HomeState.data(todos));
    }).catchError((error) {
      emit(HomeState.error(error.toString()));
    });
  }
}
