part of 'drop_buttom_bloc_bloc.dart';

@freezed
class DropButtomBlocEvent with _$DropButtomBlocEvent {
  //STARTED POUR CHARGER LES DONNES du liste au demarage 
  const factory DropButtomBlocEvent.started() = _Started;
  const factory DropButtomBlocEvent.selected(String value) = _Selected;
}