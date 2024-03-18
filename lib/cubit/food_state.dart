part of 'food_cubit.dart';

@immutable
sealed class FoodState {}

final class FoodInitial extends FoodState {}

final class FoodShow extends FoodState {
  String image;
  FoodShow(this.image);
}
