part of 'drop_buttom_bloc_bloc.dart';

@freezed
class DropButtomBlocState with _$DropButtomBlocState {
  const factory DropButtomBlocState.initial() = _Initial;
   const factory DropButtomBlocState.selected(String value) = _DropButtomBlocStateSelected;
    const factory DropButtomBlocState.loaded(List<String> items) = _DropButtomBlocStateLoaded; 
}
