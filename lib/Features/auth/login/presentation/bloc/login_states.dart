class LoginStates {}
class LoginSucess  extends LoginStates{}
class LoginLoading  extends LoginStates{}
class LoginError  extends LoginStates{
  String errorMessage;
  LoginError(this.errorMessage);

}
class Logininitail  extends LoginStates{}
