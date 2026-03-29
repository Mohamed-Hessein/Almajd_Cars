
import 'package:injectable/injectable.dart';

import '../repo/firebase_fun_repo.dart';

@injectable
class SignupUsecase {
  FirebaseFunRepo firebaseFunRepo;
  SignupUsecase(this.firebaseFunRepo);
  Future<void> call(    String emailAddress,
      String password,String phone,String name
      )async{
    try{

      await  firebaseFunRepo.signUP(emailAddress, password, name, phone);
    }catch(e){
      rethrow;
    }
  }
}