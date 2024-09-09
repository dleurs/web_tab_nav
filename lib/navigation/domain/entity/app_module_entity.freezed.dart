// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_module_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppModuleEntity {
// TODO(dleurs): #4 Maybe create named constructor / with sealed ?
  AppModuleType get type => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  StatefulShellBranch get routingShell => throw _privateConstructorUsedError;
  Tab Function(BuildContext) get tabBuilder =>
      throw _privateConstructorUsedError;
  dynamic get isOpennedAtStart => throw _privateConstructorUsedError;

  /// Create a copy of AppModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppModuleEntityCopyWith<AppModuleEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppModuleEntityCopyWith<$Res> {
  factory $AppModuleEntityCopyWith(
          AppModuleEntity value, $Res Function(AppModuleEntity) then) =
      _$AppModuleEntityCopyWithImpl<$Res, AppModuleEntity>;
  @useResult
  $Res call(
      {AppModuleType type,
      String displayName,
      StatefulShellBranch routingShell,
      Tab Function(BuildContext) tabBuilder,
      dynamic isOpennedAtStart});
}

/// @nodoc
class _$AppModuleEntityCopyWithImpl<$Res, $Val extends AppModuleEntity>
    implements $AppModuleEntityCopyWith<$Res> {
  _$AppModuleEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? displayName = null,
    Object? routingShell = null,
    Object? tabBuilder = null,
    Object? isOpennedAtStart = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AppModuleType,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      routingShell: null == routingShell
          ? _value.routingShell
          : routingShell // ignore: cast_nullable_to_non_nullable
              as StatefulShellBranch,
      tabBuilder: null == tabBuilder
          ? _value.tabBuilder
          : tabBuilder // ignore: cast_nullable_to_non_nullable
              as Tab Function(BuildContext),
      isOpennedAtStart: freezed == isOpennedAtStart
          ? _value.isOpennedAtStart
          : isOpennedAtStart // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppModuleEntityImplCopyWith<$Res>
    implements $AppModuleEntityCopyWith<$Res> {
  factory _$$AppModuleEntityImplCopyWith(_$AppModuleEntityImpl value,
          $Res Function(_$AppModuleEntityImpl) then) =
      __$$AppModuleEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppModuleType type,
      String displayName,
      StatefulShellBranch routingShell,
      Tab Function(BuildContext) tabBuilder,
      dynamic isOpennedAtStart});
}

/// @nodoc
class __$$AppModuleEntityImplCopyWithImpl<$Res>
    extends _$AppModuleEntityCopyWithImpl<$Res, _$AppModuleEntityImpl>
    implements _$$AppModuleEntityImplCopyWith<$Res> {
  __$$AppModuleEntityImplCopyWithImpl(
      _$AppModuleEntityImpl _value, $Res Function(_$AppModuleEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? displayName = null,
    Object? routingShell = null,
    Object? tabBuilder = null,
    Object? isOpennedAtStart = freezed,
  }) {
    return _then(_$AppModuleEntityImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AppModuleType,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      routingShell: null == routingShell
          ? _value.routingShell
          : routingShell // ignore: cast_nullable_to_non_nullable
              as StatefulShellBranch,
      tabBuilder: null == tabBuilder
          ? _value.tabBuilder
          : tabBuilder // ignore: cast_nullable_to_non_nullable
              as Tab Function(BuildContext),
      isOpennedAtStart: freezed == isOpennedAtStart
          ? _value.isOpennedAtStart!
          : isOpennedAtStart,
    ));
  }
}

/// @nodoc

class _$AppModuleEntityImpl implements _AppModuleEntity {
  const _$AppModuleEntityImpl(
      {required this.type,
      required this.displayName,
      required this.routingShell,
      required this.tabBuilder,
      this.isOpennedAtStart = false});

// TODO(dleurs): #4 Maybe create named constructor / with sealed ?
  @override
  final AppModuleType type;
  @override
  final String displayName;
  @override
  final StatefulShellBranch routingShell;
  @override
  final Tab Function(BuildContext) tabBuilder;
  @override
  @JsonKey()
  final dynamic isOpennedAtStart;

  @override
  String toString() {
    return 'AppModuleEntity(type: $type, displayName: $displayName, routingShell: $routingShell, tabBuilder: $tabBuilder, isOpennedAtStart: $isOpennedAtStart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppModuleEntityImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.routingShell, routingShell) ||
                other.routingShell == routingShell) &&
            (identical(other.tabBuilder, tabBuilder) ||
                other.tabBuilder == tabBuilder) &&
            const DeepCollectionEquality()
                .equals(other.isOpennedAtStart, isOpennedAtStart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, displayName, routingShell,
      tabBuilder, const DeepCollectionEquality().hash(isOpennedAtStart));

  /// Create a copy of AppModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppModuleEntityImplCopyWith<_$AppModuleEntityImpl> get copyWith =>
      __$$AppModuleEntityImplCopyWithImpl<_$AppModuleEntityImpl>(
          this, _$identity);
}

abstract class _AppModuleEntity implements AppModuleEntity {
  const factory _AppModuleEntity(
      {required final AppModuleType type,
      required final String displayName,
      required final StatefulShellBranch routingShell,
      required final Tab Function(BuildContext) tabBuilder,
      final dynamic isOpennedAtStart}) = _$AppModuleEntityImpl;

// TODO(dleurs): #4 Maybe create named constructor / with sealed ?
  @override
  AppModuleType get type;
  @override
  String get displayName;
  @override
  StatefulShellBranch get routingShell;
  @override
  Tab Function(BuildContext) get tabBuilder;
  @override
  dynamic get isOpennedAtStart;

  /// Create a copy of AppModuleEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppModuleEntityImplCopyWith<_$AppModuleEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
