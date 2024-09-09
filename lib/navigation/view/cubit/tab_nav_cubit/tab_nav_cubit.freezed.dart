// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_nav_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TabNavState {
  List<int> get openModulesIndexesInAppModules =>
      throw _privateConstructorUsedError;
  int? get goToAppModule => throw _privateConstructorUsedError;
  String? get goToPath => throw _privateConstructorUsedError;

  /// Create a copy of TabNavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TabNavStateCopyWith<TabNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabNavStateCopyWith<$Res> {
  factory $TabNavStateCopyWith(
          TabNavState value, $Res Function(TabNavState) then) =
      _$TabNavStateCopyWithImpl<$Res, TabNavState>;
  @useResult
  $Res call(
      {List<int> openModulesIndexesInAppModules,
      int? goToAppModule,
      String? goToPath});
}

/// @nodoc
class _$TabNavStateCopyWithImpl<$Res, $Val extends TabNavState>
    implements $TabNavStateCopyWith<$Res> {
  _$TabNavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TabNavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openModulesIndexesInAppModules = null,
    Object? goToAppModule = freezed,
    Object? goToPath = freezed,
  }) {
    return _then(_value.copyWith(
      openModulesIndexesInAppModules: null == openModulesIndexesInAppModules
          ? _value.openModulesIndexesInAppModules
          : openModulesIndexesInAppModules // ignore: cast_nullable_to_non_nullable
              as List<int>,
      goToAppModule: freezed == goToAppModule
          ? _value.goToAppModule
          : goToAppModule // ignore: cast_nullable_to_non_nullable
              as int?,
      goToPath: freezed == goToPath
          ? _value.goToPath
          : goToPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TabNavStateImplCopyWith<$Res>
    implements $TabNavStateCopyWith<$Res> {
  factory _$$TabNavStateImplCopyWith(
          _$TabNavStateImpl value, $Res Function(_$TabNavStateImpl) then) =
      __$$TabNavStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int> openModulesIndexesInAppModules,
      int? goToAppModule,
      String? goToPath});
}

/// @nodoc
class __$$TabNavStateImplCopyWithImpl<$Res>
    extends _$TabNavStateCopyWithImpl<$Res, _$TabNavStateImpl>
    implements _$$TabNavStateImplCopyWith<$Res> {
  __$$TabNavStateImplCopyWithImpl(
      _$TabNavStateImpl _value, $Res Function(_$TabNavStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TabNavState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? openModulesIndexesInAppModules = null,
    Object? goToAppModule = freezed,
    Object? goToPath = freezed,
  }) {
    return _then(_$TabNavStateImpl(
      openModulesIndexesInAppModules: null == openModulesIndexesInAppModules
          ? _value._openModulesIndexesInAppModules
          : openModulesIndexesInAppModules // ignore: cast_nullable_to_non_nullable
              as List<int>,
      goToAppModule: freezed == goToAppModule
          ? _value.goToAppModule
          : goToAppModule // ignore: cast_nullable_to_non_nullable
              as int?,
      goToPath: freezed == goToPath
          ? _value.goToPath
          : goToPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TabNavStateImpl implements _TabNavState {
  _$TabNavStateImpl(
      {required final List<int> openModulesIndexesInAppModules,
      this.goToAppModule,
      this.goToPath})
      : _openModulesIndexesInAppModules = openModulesIndexesInAppModules;

  final List<int> _openModulesIndexesInAppModules;
  @override
  List<int> get openModulesIndexesInAppModules {
    if (_openModulesIndexesInAppModules is EqualUnmodifiableListView)
      return _openModulesIndexesInAppModules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_openModulesIndexesInAppModules);
  }

  @override
  final int? goToAppModule;
  @override
  final String? goToPath;

  @override
  String toString() {
    return 'TabNavState(openModulesIndexesInAppModules: $openModulesIndexesInAppModules, goToAppModule: $goToAppModule, goToPath: $goToPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabNavStateImpl &&
            const DeepCollectionEquality().equals(
                other._openModulesIndexesInAppModules,
                _openModulesIndexesInAppModules) &&
            (identical(other.goToAppModule, goToAppModule) ||
                other.goToAppModule == goToAppModule) &&
            (identical(other.goToPath, goToPath) ||
                other.goToPath == goToPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_openModulesIndexesInAppModules),
      goToAppModule,
      goToPath);

  /// Create a copy of TabNavState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabNavStateImplCopyWith<_$TabNavStateImpl> get copyWith =>
      __$$TabNavStateImplCopyWithImpl<_$TabNavStateImpl>(this, _$identity);
}

abstract class _TabNavState implements TabNavState {
  factory _TabNavState(
      {required final List<int> openModulesIndexesInAppModules,
      final int? goToAppModule,
      final String? goToPath}) = _$TabNavStateImpl;

  @override
  List<int> get openModulesIndexesInAppModules;
  @override
  int? get goToAppModule;
  @override
  String? get goToPath;

  /// Create a copy of TabNavState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabNavStateImplCopyWith<_$TabNavStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
