// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call(
      [UiState uiState = UiState.loaded,
      List<Excersize> excersize = const []]) {
    return _HomeState(
      uiState,
      excersize,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
  UiState get uiState;
  List<Excersize> get excersize;

  $HomeStateCopyWith<HomeState> get copyWith;
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({UiState uiState, List<Excersize> excersize});
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object uiState = freezed,
    Object excersize = freezed,
  }) {
    return _then(_value.copyWith(
      uiState: uiState == freezed ? _value.uiState : uiState as UiState,
      excersize: excersize == freezed
          ? _value.excersize
          : excersize as List<Excersize>,
    ));
  }
}

abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({UiState uiState, List<Excersize> excersize});
}

class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object uiState = freezed,
    Object excersize = freezed,
  }) {
    return _then(_HomeState(
      uiState == freezed ? _value.uiState : uiState as UiState,
      excersize == freezed ? _value.excersize : excersize as List<Excersize>,
    ));
  }
}

class _$_HomeState implements _HomeState {
  const _$_HomeState([this.uiState = UiState.loaded, this.excersize = const []])
      : assert(uiState != null),
        assert(excersize != null);

  @JsonKey(defaultValue: UiState.loaded)
  @override
  final UiState uiState;
  @JsonKey(defaultValue: const [])
  @override
  final List<Excersize> excersize;

  @override
  String toString() {
    return 'HomeState(uiState: $uiState, excersize: $excersize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.uiState, uiState) ||
                const DeepCollectionEquality()
                    .equals(other.uiState, uiState)) &&
            (identical(other.excersize, excersize) ||
                const DeepCollectionEquality()
                    .equals(other.excersize, excersize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uiState) ^
      const DeepCollectionEquality().hash(excersize);

  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState([UiState uiState, List<Excersize> excersize]) =
      _$_HomeState;

  @override
  UiState get uiState;
  @override
  List<Excersize> get excersize;
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith;
}
