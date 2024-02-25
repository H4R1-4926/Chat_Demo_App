// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Toggle value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Toggle value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Toggle value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DarkEventCopyWith<$Res> {
  factory $DarkEventCopyWith(DarkEvent value, $Res Function(DarkEvent) then) =
      _$DarkEventCopyWithImpl<$Res, DarkEvent>;
}

/// @nodoc
class _$DarkEventCopyWithImpl<$Res, $Val extends DarkEvent>
    implements $DarkEventCopyWith<$Res> {
  _$DarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleImplCopyWith<$Res> {
  factory _$$ToggleImplCopyWith(
          _$ToggleImpl value, $Res Function(_$ToggleImpl) then) =
      __$$ToggleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleImplCopyWithImpl<$Res>
    extends _$DarkEventCopyWithImpl<$Res, _$ToggleImpl>
    implements _$$ToggleImplCopyWith<$Res> {
  __$$ToggleImplCopyWithImpl(
      _$ToggleImpl _value, $Res Function(_$ToggleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleImpl implements Toggle {
  const _$ToggleImpl();

  @override
  String toString() {
    return 'DarkEvent.toggle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggle,
  }) {
    return toggle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggle,
  }) {
    return toggle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Toggle value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Toggle value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Toggle value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class Toggle implements DarkEvent {
  const factory Toggle() = _$ToggleImpl;
}

/// @nodoc
mixin _$DarkState {
  bool get isTrue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DarkStateCopyWith<DarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DarkStateCopyWith<$Res> {
  factory $DarkStateCopyWith(DarkState value, $Res Function(DarkState) then) =
      _$DarkStateCopyWithImpl<$Res, DarkState>;
  @useResult
  $Res call({bool isTrue});
}

/// @nodoc
class _$DarkStateCopyWithImpl<$Res, $Val extends DarkState>
    implements $DarkStateCopyWith<$Res> {
  _$DarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTrue = null,
  }) {
    return _then(_value.copyWith(
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DarkStateImplCopyWith<$Res>
    implements $DarkStateCopyWith<$Res> {
  factory _$$DarkStateImplCopyWith(
          _$DarkStateImpl value, $Res Function(_$DarkStateImpl) then) =
      __$$DarkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTrue});
}

/// @nodoc
class __$$DarkStateImplCopyWithImpl<$Res>
    extends _$DarkStateCopyWithImpl<$Res, _$DarkStateImpl>
    implements _$$DarkStateImplCopyWith<$Res> {
  __$$DarkStateImplCopyWithImpl(
      _$DarkStateImpl _value, $Res Function(_$DarkStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTrue = null,
  }) {
    return _then(_$DarkStateImpl(
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DarkStateImpl implements _DarkState {
  const _$DarkStateImpl({required this.isTrue});

  @override
  final bool isTrue;

  @override
  String toString() {
    return 'DarkState(isTrue: $isTrue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DarkStateImpl &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTrue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DarkStateImplCopyWith<_$DarkStateImpl> get copyWith =>
      __$$DarkStateImplCopyWithImpl<_$DarkStateImpl>(this, _$identity);
}

abstract class _DarkState implements DarkState {
  const factory _DarkState({required final bool isTrue}) = _$DarkStateImpl;

  @override
  bool get isTrue;
  @override
  @JsonKey(ignore: true)
  _$$DarkStateImplCopyWith<_$DarkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
