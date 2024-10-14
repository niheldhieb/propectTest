part of 'drow_down_second_bloc.dart';

@freezed
class DrowDownSecondEvent with _$DrowDownSecondEvent {
   //STARTED POUR CHARGER LES DONNES du liste au demarage 
  const factory DrowDownSecondEvent.started() = _Started;
  const factory DrowDownSecondEvent.selected(String value) = _Selected;
}