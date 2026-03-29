import 'package:bloc/bloc.dart';
import 'package:cars_e_commerce/Features/auth/signup/presentation/bloc/signup_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecase/signUp_usecase.dart';
@injectable
class SignupCubit extends Cubit<SignUpStates> {

  SignupUsecase signupUsecase;
  SignupCubit( this.signupUsecase) : super(SignUpStates());
  signUp(String emailAddress, String password, String name,phone)async {
    try{
      emit(SignUpLoading());
      await signupUsecase.call(emailAddress, password,  name,phone, );
      emit(SignUpSucess());
    }on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(SignUpError('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(SignUpError('The account already exists for that email.'));
      }else{
        print(e.code);
      } }
    catch(e){
      emit(SignUpError(e.toString()));
    }
  }
}