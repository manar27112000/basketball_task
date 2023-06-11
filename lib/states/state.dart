
import 'package:flutter/material.dart';

abstract class CounterStates  {}

class CounterInitialState extends CounterStates{}
class CounterA1 extends CounterStates{
  final int teamAPoints;
  CounterA1(this.teamAPoints);
}
class CounterB1 extends CounterStates{
  final int teamBPoints;
  CounterB1(this.teamBPoints);
}
class CounterA2 extends CounterStates{
  final int teamAPoints;
  CounterA2(this.teamAPoints);
}
class CounterB2 extends CounterStates{
  final int teamBPoints;
  CounterB2(this.teamBPoints);
}
class CounterA3 extends CounterStates{
  final int teamAPoints;
  CounterA3(this.teamAPoints);
}
class CounterB3 extends CounterStates{
  final int teamBPoints;
  CounterB3(this.teamBPoints);
}
class Reset_m extends CounterStates{
  final int teamAPoints;
  final int teamBPoints;
  Reset_m(this.teamBPoints,this.teamAPoints);

}