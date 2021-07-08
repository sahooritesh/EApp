import 'package:e_app_1/appColors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreenStyles{
  static const TextStyle companyTitleStyle=TextStyle(
    color: AppColors.baseBlackColor,
    fontWeight: FontWeight.w600,
    fontSize: 18
  );
  
  static const TextStyle productModelStyle=TextStyle(
    color: AppColors.baseDarkPinkColor,
  );

  static const TextStyle productPriceStyle=TextStyle(
    color: AppColors.baseDarkPinkColor,
    fontSize: 20,
    fontWeight: FontWeight.w600
  );

  static const TextStyle productOldPriceStyle=TextStyle(
    color: Colors.grey,
    fontSize: 16,
    decoration: TextDecoration.lineThrough,
    fontWeight: FontWeight.w600
  );

  static const TextStyle productDropDownValueStyle=TextStyle(
    color: Colors.grey,
    fontSize: 22,
    fontWeight: FontWeight.w600
  );

  static const TextStyle buttonTextStyle=TextStyle(
    color: Colors.white,
    fontSize: 20,
  );

  static const TextStyle descriptionTextStyle=TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.baseBlackColor
          );
  
   static const TextStyle sizegruideTextStyle=TextStyle(
            fontSize: 18,
            color: AppColors.baseBlackColor
          );
  
  static const TextStyle youmayalsoLikeTextStyle= TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.baseBlackColor,
          );
  
 static const TextStyle showAllTextStyle= TextStyle(
            fontSize: 18,
            color: AppColors.baseDarkPinkColor,
          );
  


}