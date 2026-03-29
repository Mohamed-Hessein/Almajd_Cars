class SignUpStates {}
class  SignUpSucess  extends  SignUpStates{}
class  SignUpLoading  extends  SignUpStates{}
class SignUpError  extends  SignUpStates{
  String errorMessage;
  SignUpError(this.errorMessage);

}
class  SignUpInitail  extends  SignUpStates{}
