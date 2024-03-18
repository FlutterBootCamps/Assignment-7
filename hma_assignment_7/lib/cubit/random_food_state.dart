part of 'random_food_cubit.dart';

@immutable
sealed class RandomFoodState {}

final class RandomFoodInitial extends RandomFoodState {}

final class LoadingState extends RandomFoodState {}

final class SuccessState extends RandomFoodState {
  String photo;
  SuccessState({required this.photo});
}

final class ErrorState extends RandomFoodState {}
