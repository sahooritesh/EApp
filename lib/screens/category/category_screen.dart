import 'package:e_app_1/appColors/app_colors.dart';
import 'package:e_app_1/styles/category_screen_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {


  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  
  Widget buildAppBar(){
    return AppBar(
          elevation: 0,
          backgroundColor:Colors.transparent,
          centerTitle: true,
          title: Text("Welcome",
          style: CategoryScreenStyles.categoryAppBarTitleStyle,
          ),

        actions: [
          RotationTransition(
            turns: AlwaysStoppedAnimation(90/360),
            child: Image.asset("images/settings.png",width: 35,),
          ),
          IconButton(
            icon: Image.asset("images/search.png",width: 35,),
            onPressed: (){},
            color: AppColors.baseBlackColor,
            
          
          )
        ],

          bottom:TabBar(
            indicator: BoxDecoration(
              color: Colors.transparent,
            ),
            labelStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
            unselectedLabelColor: AppColors.baseBlackColor,
            labelColor: AppColors.baseDarkPinkColor,
            automaticIndicatorColorAdjustment: false,
            tabs: [
              Text("All"),
              Text("Men"),
              Text("Woman"),
              Text("Kids")
            ],
          )
        );
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            // All Place

            // Man Place

            // Woman Place

            // Kids Place
          ],
        ),
        
      ),
    );
  }
}