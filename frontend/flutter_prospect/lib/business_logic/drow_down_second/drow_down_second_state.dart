part of 'drow_down_second_bloc.dart';

@freezed
class DrowDownSecondState with _$DrowDownSecondState {
  const factory DrowDownSecondState.initial() = _Initial;
    const factory DrowDownSecondState.selected(String value) = _DropButtomBlocStateSelected;
    const factory DrowDownSecondState.loaded(List<String> cities) = _DropButtomBlocStateLoaded; 
}