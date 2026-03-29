import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cars_e_commerce/Features/auth/login/presentation/screen/login_screen.dart';
import 'package:cars_e_commerce/core/resources/auto_router.gr.dart';
import 'package:cars_e_commerce/core/resources/colors_app.dart';
import 'package:cars_e_commerce/core/resources/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../core/resources/images_icons.dart';
import '../../data/model/onbording_model.dart';
@RoutePage()

class OnbodingScreen extends StatelessWidget {
  bool isbacked =false ;

  OnboardingModel? onboardingModel ;
   OnbodingScreen({super.key});



  @override
  Widget build(BuildContext context) {
    late List<OnboardingModel> onboardingData = [
      OnboardingModel(
        isbacked: isbacked,
        background:ImageApp.backGroundObbordingLight,
        title:   Text(
          "AL-MAJD MOTORS",
          style: StyleApp.lgText,
          textAlign: TextAlign.center,
        ),
        description:  Text(
          "Premium Automotive \nMarketplace",
          style: StyleApp.vlagTex,
          textAlign: TextAlign.center,
        ),
        image: ImageApp.imagesObbording,
        footer: Align(
            alignment:      Alignment.bottomCenter ,
            child: Text("Established in Riyadh",style:StyleApp.smtext.copyWith(color: ColorsApp.secondaryGrey),)),
      ),
      OnboardingModel(
        background: ImageApp.backGroundObbording,
        title:  Text(
          "AL-MAJD MOTORS",
          style: StyleApp.lgText,
          textAlign: TextAlign.center,
        ),
        description:Text("Premium Car Marketplace",style: StyleApp.smtext,),
        image: ImageApp.imagesObbording2,
        footer: Align(alignment: Alignment.bottomCenter ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(


                  height: 58,


                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: ElevatedButton(

                      onPressed: (){
                          context.pushRoute(LoginRoute());


                      },


                      style:ElevatedButton.styleFrom(backgroundColor: ColorsApp.textlightGreen,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))) ,
                      child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text( 'Established in Riyadh', style:StyleApp.smtext.copyWith(color: ColorsApp.secondaryGrey )),

              ],
            )),
      ),
    ];
    late List<PageViewModel> pages = onboardingData.map((item) {
      return PageViewModel(
        backgroundImage: item.background,
        titleWidget: item.title,
        bodyWidget: item.description,
        image: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Spacer(),
            Align(alignment: Alignment.topCenter,
                child: Image.asset(item.image,height: item.background   ==ImageApp.backGroundObbording?  180.h: 100.h)),
            Spacer(flex: 4),
          ],
        ),
        footer: item.footer,
      );
    }).toList();
    return IntroductionScreen(
      pages: pages,
      dotsDecorator: DotsDecorator(
        size: const Size(8, 8),
    activeSize: const Size(40, 6),

    activeShape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
    ),
    color: Colors.grey,
    activeColor: ColorsApp.textlightGreen,
    spacing: const EdgeInsets.symmetric(horizontal: 4),
    ),   showNextButton: false,
      showDoneButton: false,
      showSkipButton: false,

    );

  }

}
