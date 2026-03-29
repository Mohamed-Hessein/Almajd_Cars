

import 'package:bloc/bloc.dart';
import 'package:cars_e_commerce/Features/auth/domain/usecase/log_in_usecase.dart';
import 'package:cars_e_commerce/Features/auth/login/presentation/bloc/login_states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
@injectable
class LoginCubit  extends Cubit<LoginStates>{
  LogInUsecase logInUsecase;
  LoginCubit(this.logInUsecase) : super(LoginStates());
  logIn(    String emailAddress,
      String password,
      )async{
    try{
      emit(LoginLoading());
      await  logInUsecase.call(emailAddress, password);
      emit(LoginSucess());

    }on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(LoginError('Wrong password provided for that user.'));
      } else if (e.code == 'wrong-password') {
        emit(LoginError('Wrong password provided for that user.'));
      }else{

      }

    } catch(e){
      emit(LoginError(e.toString()));

    }
  }
}