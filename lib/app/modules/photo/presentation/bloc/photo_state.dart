import 'package:blocfreezed/app/core/models/photo_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_state.freezed.dart';

@freezed
class PhotoState with _$PhotoState {
  const factory PhotoState.initial() = Initial;
  const factory PhotoState.data(List<PhotoModel> value) = Data;
  const factory PhotoState.loading() = Loading;
  const factory PhotoState.error([String? message]) = ErrorDetails;
}
