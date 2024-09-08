import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_beyond/feature/auth/presentation/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit():super(LoginInitialState());

  static LoginCubit get(context) =>BlocProvider.of(context);

  bool landingPage = true;

  changeLandingPage(){
    landingPage = false;
    emit(ChangeLandingState());
  }


}
