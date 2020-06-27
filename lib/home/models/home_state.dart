import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ui_100_day_6/common/models/excersize.dart';
import 'package:ui_100_day_6/common/models/ui_state.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState([@Default(UiState.loaded) UiState uiState, @Default([]) List<Excersize> excersize]) = _HomeState;
}