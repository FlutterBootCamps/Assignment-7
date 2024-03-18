import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:try_auth_suba/api/Serves.dart';
import 'package:try_auth_suba/setup/git_it.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodInitial());
    getFoodImage(bool change) async{
      if(change){
      final ServesLocator =gitIt().locator.get<Serves>();
      change=false;
      emit(FoodShow(await ServesLocator.getFoodImage()));}

    }
}

