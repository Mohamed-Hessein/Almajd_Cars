import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cars_e_commerce/Features/auth/data/models/validtor_modle.dart';
import 'package:cars_e_commerce/Features/auth/login/presentation/bloc/login_cubit.dart';
import 'package:cars_e_commerce/Features/auth/login/presentation/bloc/login_states.dart';
import 'package:cars_e_commerce/core/resources/auto_router.gr.dart';
import 'package:cars_e_commerce/core/resources/colors_app.dart';
import 'package:cars_e_commerce/core/resources/styles.dart';
import 'package:cars_e_commerce/di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/resources/app_string.dart';
import '../../../../../core/resources/images_icons.dart';
import '../widgets/custom_btn.dart';
import '../widgets/custom_text_from.dart';
@RoutePage()
class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

   GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> getIt<LoginCubit>(),
      child: BlocBuilder<LoginCubit, LoginStates>(
        builder: (BuildContext context, LoginStates state) {
           if(state is LoginError){
            return  Center(child: Text(state.errorMessage,style: TextStyle(color: Colors.white),),);
          }else{
     return     Scaffold(
            appBar: AppBar(backgroundColor: Colors.transparent,),
            body: Form(
              key: formKey,
              child: SingleChildScrollView(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Row(

                      children: [Image.asset(ImageApp.iconOfAppLogin,height: 45,width: 45,),SizedBox(width: 10,), Text(AppString.nmaeOfApp,style: StyleApp.lgText.copyWith(fontSize: 28.r),)],)
                    ,
                    Text(AppString.welcome,style: StyleApp.lgText.copyWith(fontWeight: FontWeight.w100,fontSize: 22.r),)
                    ,   Text(AppString.subTitleLogiN,style: StyleApp.vlagTex.copyWith(letterSpacing: 0,fontSize: 14,fontWeight: FontWeight.w100),)
                    ,

                    SizedBox(height: 35.h,),
                    CustomTexTFromFeild(controller: emailController,vaildator: AppValidator.email,hint: AppString.emailHint, label:AppString.emailLabel, ispass: false,),

                    SizedBox(height: 17.h,),
                    CustomTexTFromFeild(controller: passController,vaildator: AppValidator.password,hint:AppString.passHint, label: AppString.passLabel, ispass: true,),

                    Text(textAlign: TextAlign.end,AppString.passForget,style: StyleApp.text12BlueDark,),
                    SizedBox(height: 15.h,),
               state is LoginLoading? SizedBox(
                      height: 56,
                      child: ElevatedButton(
                          style:ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),backgroundColor: ColorsApp.btnColors) ,
                          onPressed:(){}, child: Center(child: CircularProgressIndicator())),
                    ):       CutstomBtn(text: AppString.login, onPressed: ()async { if(formKey.currentState!.validate()){
                      await context.read<LoginCubit>().logIn(
                        emailController.text,
                        passController.text,


                      );}
context.pushRoute(Home());
                    },),
                    SizedBox(height: 3.h,),
                    Text(textAlign: TextAlign.center,AppString.orContinue,style: StyleApp.meidumeText,)
                    ,       SizedBox(height: 5.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(elevation: 0,backgroundColor:ColorsApp.background,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),side: BorderSide.none)) ,
                            onPressed: (){}, child:Row(children: [Image.asset(IconApp.googleIc,width: 24,height: 24,) ,SizedBox(width: 2.w,),Text('Google',style: StyleApp.lgText.copyWith(fontSize: 20),) ],) ),
                        SizedBox(width: 16.w,),
                        ElevatedButton(
                            style:ElevatedButton.styleFrom(elevation: 0,backgroundColor:ColorsApp.background,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),side: BorderSide.none)) ,
                            onPressed: (){}, child:Row(children: [Image.asset(width: 24,height: 24,IconApp.iosIc) ,SizedBox(width: 2.w,),Text('Apple',style: StyleApp.lgText.copyWith(fontSize: 20),) ],) ), ],),


                    SizedBox(height: 10.w,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center
                      ,children: [Text(AppString.didntHaveAacount, style: StyleApp.meidumeText.copyWith(letterSpacing: 0,fontSize: 12),), GestureDetector(
                        onTap: (){
                          context.pushRoute(SignupRoute());
                        },
                        child: Text(AppString.signUp,style:StyleApp.meidumeText.copyWith(fontSize: 12,letterSpacing:0.0,color: ColorsApp.btnColors) ,))],)
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

