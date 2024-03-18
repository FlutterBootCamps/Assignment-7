import 'package:bloc/bloc.dart';
import 'package:hma_assignment_7/services/api.dart';
import 'package:meta/meta.dart';

part 'random_food_state.dart';

class RandomFoodCubit extends Cubit<RandomFoodState> {
  RandomFoodCubit() : super(RandomFoodInitial());

  getRandomFoodPhoto() async{
    emit(LoadingState());

    try{      
      final foodPhoto = await GetAPI().getData();
      emit(SuccessState( photo: foodPhoto ));
    }catch(error){
      print("Error to get food photo");
      emit(ErrorState());
    }
  }

}
