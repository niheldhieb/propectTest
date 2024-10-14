import 'package:bloc/bloc.dart';
import 'package:flutter_prospect/utils/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'drop_buttom_bloc_event.dart';
part 'drop_buttom_bloc_state.dart';
part 'drop_buttom_bloc_bloc.freezed.dart';
@injectable
class DropButtomBlocBloc extends Bloc<DropButtomBlocEvent, DropButtomBlocState> {
  DropButtomBlocBloc() : super(const DropButtomBlocState.initial()) {
 
    on<DropButtomBlocEvent>((event, emit) {
      event.map(
        started: (_) => emit(const DropButtomBlocState.loaded(cities)),
        selected: (event) => emit(DropButtomBlocState.selected(event.value)),
      );
    });
  }
}
