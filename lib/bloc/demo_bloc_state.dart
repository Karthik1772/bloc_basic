part of 'demo_bloc_bloc.dart';

sealed class DemoBlocState {}

final class DemoBlocInitial extends DemoBlocState {}

class updatedState extends DemoBlocState{
  int number;
  updatedState({required this.number});
}