import 'package:auto_route/annotations.dart';
import 'package:cars_e_commerce/Features/discover/presenatation/screen/discovery_screen.dart';
import 'package:cars_e_commerce/Features/home/presentation/screen/home.dart';
import 'package:cars_e_commerce/core/resources/auto_router.gr.dart' hide HomeScreeen;
import 'package:cars_e_commerce/core/resources/colors_app.dart';
import 'package:cars_e_commerce/core/resources/images_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
@RoutePage()
class BottomNavgitorScreen extends StatefulWidget {
   BottomNavgitorScreen({super.key});

  @override
  State<BottomNavgitorScreen> createState() => _BottomNavgitorScreenState();
}

class _BottomNavgitorScreenState extends State<BottomNavgitorScreen> {
var activeIndex = 0;
List<Widget> pages = [HomeScreeen(), DiscoveryScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.shifting,
onTap: (value){
  activeIndex =value;
  setState(() {

  });
},

          items: [
        BottomNavigationBarItem(
      activeIcon:ImageIcon(AssetImage( IconApp.homeIc),color: ColorsApp.lightgreen,),

    icon:ImageIcon(AssetImage( IconApp.homeIc),color: ColorsApp.secondaryGrey,), label: 'Home')
,
        BottomNavigationBarItem(
       activeIcon:     ImageIcon(AssetImage( IconApp.searchIc),color: ColorsApp.lightgreen,),
            icon:ImageIcon(AssetImage( IconApp.searchIc),color: ColorsApp.secondaryGrey,), label: 'Home')
,
        BottomNavigationBarItem( activeIcon: ImageIcon(AssetImage( IconApp.chatIc),color: ColorsApp.lightgreen,),
    icon:ImageIcon(AssetImage( IconApp.chatIc),color: ColorsApp.secondaryGrey,), label: 'Home')
,
        BottomNavigationBarItem(
            activeIcon:        ImageIcon(AssetImage( IconApp.profileIc),color: ColorsApp.lightgreen,),
            icon:ImageIcon(AssetImage( IconApp.profileIc),color: ColorsApp.secondaryGrey,), label: 'Home')

      ]),
body: pages[activeIndex],
    );
  }
}
