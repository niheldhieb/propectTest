import 'package:bloc/bloc.dart';
import 'package:flutter_prospect/utils/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'drow_down_second_state.dart';
part 'drow_down_second_event.dart';
part 'drow_down_second_bloc.freezed.dart';
@injectable
class DrowDownSecondBloc extends Bloc<DrowDownSecondEvent,DrowDownSecondState>{
  DrowDownSecondBloc() : super(const DrowDownSecondState.initial()){
    
     on<DrowDownSecondEvent>((event, emit) {
      event.map(
        started: (_) => emit(const DrowDownSecondState.loaded(country)),
        selected: (event) => emit(DrowDownSecondState.selected(event.value)),
      );
    });
  }
}

 
