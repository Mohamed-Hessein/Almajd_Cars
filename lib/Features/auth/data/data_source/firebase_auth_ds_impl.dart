
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'firebase_auth_ds.dart';

@Injectable(as:FirebaseAuthDs )
class FirebaseAuthDsImpl implements FirebaseAuthDs {
  @override
  Future<void> logIn(String emailAddress, String password)async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,

      );



    } catch (e) {
   rethrow;
    }
  }

  @override
  Future<void> signUP(String emailAddress, String password,String phone,String name,) async{
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );

      


    } catch (e) {
rethrow;

    }
  }}


