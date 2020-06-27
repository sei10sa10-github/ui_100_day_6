import 'package:freezed_annotation/freezed_annotation.dart';

part 'excersize.freezed.dart';
part 'excersize.g.dart';

@freezed
abstract class Excersize with _$Excersize {
  const factory Excersize(
      {@required String title,
      @required String image,
      @required int steps,
      @required int sports,
      @required int excersize,
      @required List<String> category}) = _Excersize;
  factory Excersize.fromJson(Map<String, dynamic> json) =>
      _$ExcersizeFromJson(json);
}
