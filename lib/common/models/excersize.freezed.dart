// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'excersize.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Excersize _$ExcersizeFromJson(Map<String, dynamic> json) {
  return _Excersize.fromJson(json);
}

class _$ExcersizeTearOff {
  const _$ExcersizeTearOff();

  _Excersize call(
      {@required String title,
      @required String image,
      @required int steps,
      @required int sports,
      @required int excersize,
      @required List<String> category}) {
    return _Excersize(
      title: title,
      image: image,
      steps: steps,
      sports: sports,
      excersize: excersize,
      category: category,
    );
  }
}

// ignore: unused_element
const $Excersize = _$ExcersizeTearOff();

mixin _$Excersize {
  String get title;
  String get image;
  int get steps;
  int get sports;
  int get excersize;
  List<String> get category;

  Map<String, dynamic> toJson();
  $ExcersizeCopyWith<Excersize> get copyWith;
}

abstract class $ExcersizeCopyWith<$Res> {
  factory $ExcersizeCopyWith(Excersize value, $Res Function(Excersize) then) =
      _$ExcersizeCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String image,
      int steps,
      int sports,
      int excersize,
      List<String> category});
}

class _$ExcersizeCopyWithImpl<$Res> implements $ExcersizeCopyWith<$Res> {
  _$ExcersizeCopyWithImpl(this._value, this._then);

  final Excersize _value;
  // ignore: unused_field
  final $Res Function(Excersize) _then;

  @override
  $Res call({
    Object title = freezed,
    Object image = freezed,
    Object steps = freezed,
    Object sports = freezed,
    Object excersize = freezed,
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      image: image == freezed ? _value.image : image as String,
      steps: steps == freezed ? _value.steps : steps as int,
      sports: sports == freezed ? _value.sports : sports as int,
      excersize: excersize == freezed ? _value.excersize : excersize as int,
      category:
          category == freezed ? _value.category : category as List<String>,
    ));
  }
}

abstract class _$ExcersizeCopyWith<$Res> implements $ExcersizeCopyWith<$Res> {
  factory _$ExcersizeCopyWith(
          _Excersize value, $Res Function(_Excersize) then) =
      __$ExcersizeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String image,
      int steps,
      int sports,
      int excersize,
      List<String> category});
}

class __$ExcersizeCopyWithImpl<$Res> extends _$ExcersizeCopyWithImpl<$Res>
    implements _$ExcersizeCopyWith<$Res> {
  __$ExcersizeCopyWithImpl(_Excersize _value, $Res Function(_Excersize) _then)
      : super(_value, (v) => _then(v as _Excersize));

  @override
  _Excersize get _value => super._value as _Excersize;

  @override
  $Res call({
    Object title = freezed,
    Object image = freezed,
    Object steps = freezed,
    Object sports = freezed,
    Object excersize = freezed,
    Object category = freezed,
  }) {
    return _then(_Excersize(
      title: title == freezed ? _value.title : title as String,
      image: image == freezed ? _value.image : image as String,
      steps: steps == freezed ? _value.steps : steps as int,
      sports: sports == freezed ? _value.sports : sports as int,
      excersize: excersize == freezed ? _value.excersize : excersize as int,
      category:
          category == freezed ? _value.category : category as List<String>,
    ));
  }
}

@JsonSerializable()
class _$_Excersize implements _Excersize {
  const _$_Excersize(
      {@required this.title,
      @required this.image,
      @required this.steps,
      @required this.sports,
      @required this.excersize,
      @required this.category})
      : assert(title != null),
        assert(image != null),
        assert(steps != null),
        assert(sports != null),
        assert(excersize != null),
        assert(category != null);

  factory _$_Excersize.fromJson(Map<String, dynamic> json) =>
      _$_$_ExcersizeFromJson(json);

  @override
  final String title;
  @override
  final String image;
  @override
  final int steps;
  @override
  final int sports;
  @override
  final int excersize;
  @override
  final List<String> category;

  @override
  String toString() {
    return 'Excersize(title: $title, image: $image, steps: $steps, sports: $sports, excersize: $excersize, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Excersize &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.steps, steps) ||
                const DeepCollectionEquality().equals(other.steps, steps)) &&
            (identical(other.sports, sports) ||
                const DeepCollectionEquality().equals(other.sports, sports)) &&
            (identical(other.excersize, excersize) ||
                const DeepCollectionEquality()
                    .equals(other.excersize, excersize)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(steps) ^
      const DeepCollectionEquality().hash(sports) ^
      const DeepCollectionEquality().hash(excersize) ^
      const DeepCollectionEquality().hash(category);

  @override
  _$ExcersizeCopyWith<_Excersize> get copyWith =>
      __$ExcersizeCopyWithImpl<_Excersize>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExcersizeToJson(this);
  }
}

abstract class _Excersize implements Excersize {
  const factory _Excersize(
      {@required String title,
      @required String image,
      @required int steps,
      @required int sports,
      @required int excersize,
      @required List<String> category}) = _$_Excersize;

  factory _Excersize.fromJson(Map<String, dynamic> json) =
      _$_Excersize.fromJson;

  @override
  String get title;
  @override
  String get image;
  @override
  int get steps;
  @override
  int get sports;
  @override
  int get excersize;
  @override
  List<String> get category;
  @override
  _$ExcersizeCopyWith<_Excersize> get copyWith;
}
