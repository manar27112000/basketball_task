import 'package:basket_ball_points_counter/states/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class  CounterCubit extends Cubit<CounterStates>{
  CounterCubit():super(CounterInitialState());
  static CounterCubit get(context)=>BlocProvider.of(context);
  int teamAPoints=0;
  int teamBPoints=0;

  void incrementA1() {teamAPoints ++;
  emit(CounterA1(teamAPoints));}

void incrementB1() {teamBPoints ++;
emit(CounterB1(teamBPoints));}
///////////////////////////////////////////

  void incrementA2() {
    teamAPoints + 2;
    emit(CounterA2(teamAPoints));}

    void incrementB2() {
      teamBPoints + 2;
      emit(CounterB2(teamBPoints));
    }
    ////////////////////////////////////////

    void incrementA3() {
      teamAPoints + 3;
      emit(CounterA1(teamAPoints));
    }

    void incrementB3() {
      teamBPoints + 3;
      emit(CounterB3(teamBPoints));}

void Reset() {
  teamAPoints = teamBPoints =0;
  emit(Reset_m(teamBPoints,teamAPoints));}
}