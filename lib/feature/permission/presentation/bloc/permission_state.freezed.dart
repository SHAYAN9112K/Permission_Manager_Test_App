// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PermissionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<PermissionModel> permissionModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<PermissionModel> permissionModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<PermissionModel> permissionModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionError value) error,
    required TResult Function(_PermissionLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermissionInitial value)? initial,
    TResult? Function(_PermissionError value)? error,
    TResult? Function(_PermissionLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionError value)? error,
    TResult Function(_PermissionLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStateCopyWith<$Res> {
  factory $PermissionStateCopyWith(
          PermissionState value, $Res Function(PermissionState) then) =
      _$PermissionStateCopyWithImpl<$Res, PermissionState>;
}

/// @nodoc
class _$PermissionStateCopyWithImpl<$Res, $Val extends PermissionState>
    implements $PermissionStateCopyWith<$Res> {
  _$PermissionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PermissionInitialImplCopyWith<$Res> {
  factory _$$PermissionInitialImplCopyWith(_$PermissionInitialImpl value,
          $Res Function(_$PermissionInitialImpl) then) =
      __$$PermissionInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionInitialImplCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res, _$PermissionInitialImpl>
    implements _$$PermissionInitialImplCopyWith<$Res> {
  __$$PermissionInitialImplCopyWithImpl(_$PermissionInitialImpl _value,
      $Res Function(_$PermissionInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionInitialImpl implements _PermissionInitial {
  const _$PermissionInitialImpl();

  @override
  String toString() {
    return 'PermissionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<PermissionModel> permissionModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<PermissionModel> permissionModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<PermissionModel> permissionModel)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionError value) error,
    required TResult Function(_PermissionLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermissionInitial value)? initial,
    TResult? Function(_PermissionError value)? error,
    TResult? Function(_PermissionLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionError value)? error,
    TResult Function(_PermissionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PermissionInitial implements PermissionState {
  const factory _PermissionInitial() = _$PermissionInitialImpl;
}

/// @nodoc
abstract class _$$PermissionErrorImplCopyWith<$Res> {
  factory _$$PermissionErrorImplCopyWith(_$PermissionErrorImpl value,
          $Res Function(_$PermissionErrorImpl) then) =
      __$$PermissionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PermissionErrorImplCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res, _$PermissionErrorImpl>
    implements _$$PermissionErrorImplCopyWith<$Res> {
  __$$PermissionErrorImplCopyWithImpl(
      _$PermissionErrorImpl _value, $Res Function(_$PermissionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PermissionErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PermissionErrorImpl implements _PermissionError {
  const _$PermissionErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PermissionState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionErrorImplCopyWith<_$PermissionErrorImpl> get copyWith =>
      __$$PermissionErrorImplCopyWithImpl<_$PermissionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<PermissionModel> permissionModel) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<PermissionModel> permissionModel)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<PermissionModel> permissionModel)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionError value) error,
    required TResult Function(_PermissionLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermissionInitial value)? initial,
    TResult? Function(_PermissionError value)? error,
    TResult? Function(_PermissionLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionError value)? error,
    TResult Function(_PermissionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PermissionError implements PermissionState {
  const factory _PermissionError({required final String message}) =
      _$PermissionErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$PermissionErrorImplCopyWith<_$PermissionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionLoadedImplCopyWith<$Res> {
  factory _$$PermissionLoadedImplCopyWith(_$PermissionLoadedImpl value,
          $Res Function(_$PermissionLoadedImpl) then) =
      __$$PermissionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PermissionModel> permissionModel});
}

/// @nodoc
class __$$PermissionLoadedImplCopyWithImpl<$Res>
    extends _$PermissionStateCopyWithImpl<$Res, _$PermissionLoadedImpl>
    implements _$$PermissionLoadedImplCopyWith<$Res> {
  __$$PermissionLoadedImplCopyWithImpl(_$PermissionLoadedImpl _value,
      $Res Function(_$PermissionLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permissionModel = null,
  }) {
    return _then(_$PermissionLoadedImpl(
      permissionModel: null == permissionModel
          ? _value._permissionModel
          : permissionModel // ignore: cast_nullable_to_non_nullable
              as List<PermissionModel>,
    ));
  }
}

/// @nodoc

class _$PermissionLoadedImpl implements _PermissionLoaded {
  const _$PermissionLoadedImpl(
      {required final List<PermissionModel> permissionModel})
      : _permissionModel = permissionModel;

  final List<PermissionModel> _permissionModel;
  @override
  List<PermissionModel> get permissionModel {
    if (_permissionModel is EqualUnmodifiableListView) return _permissionModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissionModel);
  }

  @override
  String toString() {
    return 'PermissionState.loaded(permissionModel: $permissionModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._permissionModel, _permissionModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_permissionModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionLoadedImplCopyWith<_$PermissionLoadedImpl> get copyWith =>
      __$$PermissionLoadedImplCopyWithImpl<_$PermissionLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) error,
    required TResult Function(List<PermissionModel> permissionModel) loaded,
  }) {
    return loaded(permissionModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? error,
    TResult? Function(List<PermissionModel> permissionModel)? loaded,
  }) {
    return loaded?.call(permissionModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? error,
    TResult Function(List<PermissionModel> permissionModel)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(permissionModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PermissionInitial value) initial,
    required TResult Function(_PermissionError value) error,
    required TResult Function(_PermissionLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PermissionInitial value)? initial,
    TResult? Function(_PermissionError value)? error,
    TResult? Function(_PermissionLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PermissionInitial value)? initial,
    TResult Function(_PermissionError value)? error,
    TResult Function(_PermissionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PermissionLoaded implements PermissionState {
  const factory _PermissionLoaded(
          {required final List<PermissionModel> permissionModel}) =
      _$PermissionLoadedImpl;

  List<PermissionModel> get permissionModel;
  @JsonKey(ignore: true)
  _$$PermissionLoadedImplCopyWith<_$PermissionLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
