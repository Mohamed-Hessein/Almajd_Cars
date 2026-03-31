import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cars_e_commerce/Features/auth/data/models/validtor_modle.dart';
import 'package:cars_e_commerce/Features/auth/signup/presentation/bloc/signup_cubit.dart';
import 'package:cars_e_commerce/Features/auth/signup/presentation/bloc/signup_state.dart';
import 'package:cars_e_commerce/core/resources/auto_router.gr.dart';
import 'package:cars_e_commerce/core/resources/colors_app.dart';
import 'package:cars_e_commerce/core/resources/styles.dart';
import 'package:cars_e_commerce/di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get_it/get_it.dart';
import '../../../../../../core/resources/app_string.dart';
import '../../../../../../core/resources/images_icons.dart';
import '../../../login/presentation/widgets/custom_btn.dart';
import '../../../login/presentation/widgets/custom_text_from.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/custom_reg_text_filed.dart';
@RoutePage()
class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});
TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> getIt<SignupCubit>(),
      child: BlocBuilder<SignupCubit, SignUpStates>(
        builder: (BuildContext context, SignUpStates state) {
          if(state is SignUpLoading){
            return Center(child: CircularProgressIndicator(),);
          }else if(state is SignUpError){
            return  Center(child: Text(state.errorMessage,style: TextStyle(color: Colors.red),),);
          }else{
          return   Scaffold(
            appBar: AppBar(backgroundColor: Colors.transparent,),
            body: Form(
              key: formKey,
              child: SingleChildScrollView(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  spacing: 5,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [



                    Text(AppString.registerTitle,style: StyleApp.lgText.copyWith(fontSize: 18.r,fontWeight: FontWeight.bold,color: ColorsApp.blueDark),)
                    ,   Text(AppString.registerSubTitle,style: StyleApp.vlagTex.copyWith(letterSpacing: 0,fontSize: 14,fontWeight: FontWeight.w100),)
                    ,

                    SizedBox(height: 10.h,),

                    CustomRegTextFiled(vaildator: AppValidator.required,controller: nameController,hint:AppString.nameHint, label: AppString.namelabel, ispass: false, prefixIcon:
                    IconApp.nameIc,),
                    SizedBox(height: 17.h,),
                    CustomRegTextFiled(vaildator: AppValidator.email,controller: emailController,hint: AppString.emailHint, label:AppString.emailLabel, ispass: false, prefixIcon:
                    IconApp.emailIc,),

                    SizedBox(height: 17.h,),
                    CustomRegTextFiled(vaildator: AppValidator.password,controller: passController,hint:AppString.confrimPassAndPassHint, label: AppString.passLabel, ispass: true, prefixIcon:
                    IconApp.passIc),

                    SizedBox(height: 17.h,),
                    CustomRegTextFiled(
                      vaildator: (value) => AppValidator.confirmPassword(
                        value,
                        passController.text,
                      ),
                      controller: repassController,
                      hint: AppString.confrimPassAndPassHint,
                      label: AppString.confrimPassLabel,
                      prefixIcon: IconApp.repassIc,
                      ispass: false,
                    ),

                    SizedBox(height: 10.h,),
                    CutstomBtn(text: AppString.register, onPressed: ()async { if(formKey.currentState!.validate()){
                      await context.read<SignupCubit>().signUp(
                          emailController.text,
                          passController.text,
                          nameController.text,
                          'phone'
                      );
                      context.pushRoute(LoginRoute());

                    }


                    },),
                    SizedBox(height: 20.h,),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center
                      ,children: [Text(AppString.didntHaveAacount, style: StyleApp.meidumeText.copyWith(letterSpacing: 0,fontSize: 12),), GestureDetector(

                        onTap: (){
                          context.pushRoute(LoginRoute());
                        },
                        child: Text(AppString.login,style:StyleApp.meidumeText.copyWith(fontSize: 12,letterSpacing:0.0,color: ColorsApp.btnColors) ,))],)
                    ,
                    SizedBox(height: 16.h,),
                  ],),



              ),),
            ),
          );}
        },

      ),
    );
  }
}

