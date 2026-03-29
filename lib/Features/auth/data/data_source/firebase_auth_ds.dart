abstract class FirebaseAuthDs {
  Future<void> signUP(    String emailAddress,
      String password,String phone,String name,
      );
  Future<void> logIn(    String emailAddress,
      String password,
      );
}