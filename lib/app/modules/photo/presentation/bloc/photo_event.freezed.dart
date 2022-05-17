// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'photo_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPhotos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPhotos value) fetchPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchPhotos value)? fetchPhotos,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPhotos value)? fetchPhotos,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoEventCopyWith<$Res> {
  factory $PhotoEventCopyWith(
          PhotoEvent value, $Res Function(PhotoEvent) then) =
      _$PhotoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhotoEventCopyWithImpl<$Res> implements $PhotoEventCopyWith<$Res> {
  _$PhotoEventCopyWithImpl(this._value, this._then);

  final PhotoEvent _value;
  // ignore: unused_field
  final $Res Function(PhotoEvent) _then;
}

/// @nodoc
abstract class _$$FetchPhotosCopyWith<$Res> {
  factory _$$FetchPhotosCopyWith(
          _$FetchPhotos value, $Res Function(_$FetchPhotos) then) =
      __$$FetchPhotosCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPhotosCopyWithImpl<$Res> extends _$PhotoEventCopyWithImpl<$Res>
    implements _$$FetchPhotosCopyWith<$Res> {
  __$$FetchPhotosCopyWithImpl(
      _$FetchPhotos _value, $Res Function(_$FetchPhotos) _then)
      : super(_value, (v) => _then(v as _$FetchPhotos));

  @override
  _$FetchPhotos get _value => super._value as _$FetchPhotos;
}

/// @nodoc

class _$FetchPhotos implements FetchPhotos {
  const _$FetchPhotos();

  @override
  String toString() {
    return 'PhotoEvent.fetchPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPhotos);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPhotos,
  }) {
    return fetchPhotos();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPhotos,
  }) {
    return fetchPhotos?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPhotos,
    required TResult orElse(),
  }) {
    if (fetchPhotos != null) {
      return fetchPhotos();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchPhotos value) fetchPhotos,
  }) {
    return fetchPhotos(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchPhotos value)? fetchPhotos,
  }) {
    return fetchPhotos?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchPhotos value)? fetchPhotos,
    required TResult orElse(),
  }) {
    if (fetchPhotos != null) {
      return fetchPhotos(this);
    }
    return orElse();
  }
}

abstract class FetchPhotos implements PhotoEvent {
  const factory FetchPhotos() = _$FetchPhotos;
}
