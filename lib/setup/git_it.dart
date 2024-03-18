import 'package:get_it/get_it.dart';
import 'package:try_auth_suba/api/Serves.dart';




class gitIt{
  final locator = GetIt.instance;
void init()async{
  locator.registerSingleton<Serves>(Serves());
}
}