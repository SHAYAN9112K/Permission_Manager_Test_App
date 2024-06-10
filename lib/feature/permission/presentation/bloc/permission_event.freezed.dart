// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PermissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPermission,
    required TResult Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)
        requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPermission,
    TResult? Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)?
        requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPermission,
    TResult Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)?
        requestPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPermission value) checkPermission,
    required TResult Function(RequestPermission value) requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPermission value)? checkPermission,
    TResult? Function(RequestPermission value)? requestPermission,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPermission value)? checkPermission,
    TResult Function(RequestPermission value)? requestPermission,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionEventCopyWith<$Res> {
  factory $PermissionEventCopyWith(
          PermissionEvent value, $Res Function(PermissionEvent) then) =
      _$PermissionEventCopyWithImpl<$Res, PermissionEvent>;
}

/// @nodoc
class _$PermissionEventCopyWithImpl<$Res, $Val extends PermissionEvent>
    implements $PermissionEventCopyWith<$Res> {
  _$PermissionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckPermissionImplCopyWith<$Res> {
  factory _$$CheckPermissionImplCopyWith(_$CheckPermissionImpl value,
          $Res Function(_$CheckPermissionImpl) then) =
      __$$CheckPermissionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckPermissionImplCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res, _$CheckPermissionImpl>
    implements _$$CheckPermissionImplCopyWith<$Res> {
  __$$CheckPermissionImplCopyWithImpl(
      _$CheckPermissionImpl _value, $Res Function(_$CheckPermissionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckPermissionImpl implements CheckPermission {
  const _$CheckPermissionImpl();

  @override
  String toString() {
    return 'PermissionEvent.checkPermission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckPermissionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPermission,
    required TResult Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)
        requestPermission,
  }) {
    return checkPermission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPermission,
    TResult? Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)?
        requestPermission,
  }) {
    return checkPermission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPermission,
    TResult Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)?
        requestPermission,
    required TResult orElse(),
  }) {
    if (checkPermission != null) {
      return checkPermission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPermission value) checkPermission,
    required TResult Function(RequestPermission value) requestPermission,
  }) {
    return checkPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPermission value)? checkPermission,
    TResult? Function(RequestPermission value)? requestPermission,
  }) {
    return checkPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPermission value)? checkPermission,
    TResult Function(RequestPermission value)? requestPermission,
    required TResult orElse(),
  }) {
    if (checkPermission != null) {
      return checkPermission(this);
    }
    return orElse();
  }
}

abstract class CheckPermission implements PermissionEvent {
  const factory CheckPermission() = _$CheckPermissionImpl;
}

/// @nodoc
abstract class _$$RequestPermissionImplCopyWith<$Res> {
  factory _$$RequestPermissionImplCopyWith(_$RequestPermissionImpl value,
          $Res Function(_$RequestPermissionImpl) then) =
      __$$RequestPermissionImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<PermissionModel> listOfPermissions, PermissionType permissionType});
}

/// @nodoc
class __$$RequestPermissionImplCopyWithImpl<$Res>
    extends _$PermissionEventCopyWithImpl<$Res, _$RequestPermissionImpl>
    implements _$$RequestPermissionImplCopyWith<$Res> {
  __$$RequestPermissionImplCopyWithImpl(_$RequestPermissionImpl _value,
      $Res Function(_$RequestPermissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listOfPermissions = null,
    Object? permissionType = null,
  }) {
    return _then(_$RequestPermissionImpl(
      null == listOfPermissions
          ? _value._listOfPermissions
          : listOfPermissions // ignore: cast_nullable_to_non_nullable
              as List<PermissionModel>,
      null == permissionType
          ? _value.permissionType
          : permissionType // ignore: cast_nullable_to_non_nullable
              as PermissionType,
    ));
  }
}

/// @nodoc

class _$RequestPermissionImpl implements RequestPermission {
  const _$RequestPermissionImpl(
      final List<PermissionModel> listOfPermissions, this.permissionType)
      : _listOfPermissions = listOfPermissions;

  final List<PermissionModel> _listOfPermissions;
  @override
  List<PermissionModel> get listOfPermissions {
    if (_listOfPermissions is EqualUnmodifiableListView)
      return _listOfPermissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfPermissions);
  }

  @override
  final PermissionType permissionType;

  @override
  String toString() {
    return 'PermissionEvent.requestPermission(listOfPermissions: $listOfPermissions, permissionType: $permissionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPermissionImpl &&
            const DeepCollectionEquality()
                .equals(other._listOfPermissions, _listOfPermissions) &&
            (identical(other.permissionType, permissionType) ||
                other.permissionType == permissionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_listOfPermissions), permissionType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPermissionImplCopyWith<_$RequestPermissionImpl> get copyWith =>
      __$$RequestPermissionImplCopyWithImpl<_$RequestPermissionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkPermission,
    required TResult Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)
        requestPermission,
  }) {
    return requestPermission(listOfPermissions, permissionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkPermission,
    TResult? Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)?
        requestPermission,
  }) {
    return requestPermission?.call(listOfPermissions, permissionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkPermission,
    TResult Function(List<PermissionModel> listOfPermissions,
            PermissionType permissionType)?
        requestPermission,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission(listOfPermissions, permissionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckPermission value) checkPermission,
    required TResult Function(RequestPermission value) requestPermission,
  }) {
    return requestPermission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckPermission value)? checkPermission,
    TResult? Function(RequestPermission value)? requestPermission,
  }) {
    return requestPermission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckPermission value)? checkPermission,
    TResult Function(RequestPermission value)? requestPermission,
    required TResult orElse(),
  }) {
    if (requestPermission != null) {
      return requestPermission(this);
    }
    return orElse();
  }
}

abstract class RequestPermission implements PermissionEvent {
  const factory RequestPermission(final List<PermissionModel> listOfPermissions,
      final PermissionType permissionType) = _$RequestPermissionImpl;

  List<PermissionModel> get listOfPermissions;
  PermissionType get permissionType;
  @JsonKey(ignore: true)
  _$$RequestPermissionImplCopyWith<_$RequestPermissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
