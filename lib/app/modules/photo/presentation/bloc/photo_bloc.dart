import 'package:blocfreezed/app/core/services/photo_service.dart';
import 'package:blocfreezed/app/modules/photo/presentation/bloc/photo_event.dart';
import 'package:blocfreezed/app/modules/photo/presentation/bloc/photo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  final PhotoService _service;

  PhotoBloc(this._service) : super(const PhotoState.initial()) {
    on<FetchPhotos>((event, emit) => _fetchData());
  }

  void _fetchData() async {
    emit(const PhotoState.loading());
    _service.getPhotos().then((photos) {
      emit(PhotoState.data(photos));
    }).catchError((error) {
      emit(PhotoState.error(error.toString()));
    });
  }
}
