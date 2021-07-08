import 'dart:js';

import 'package:e_app_1/data/category_screen_data.dart';
import 'package:e_app_1/models/singleProductModel.dart';
import 'package:e_app_1/widgets/show_all_widget.dart';
import 'package:e_app_1/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

class CategoryAllTabBar extends StatelessWidget {
  
  Widget builderRender({List <SingleProductModel> singleProduct}){
    return Container(
      height: 250,
      child: GridView.builder(
        itemCount: singleProduct.length,
        shrinkWrap: true,
        primary: true,
        scrollDirection: Axis.horizontal,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 1.4
        ),
        itemBuilder: (context,index){
          var data=singleProduct[index];
          return SingleProductWidget(
            onPressed: (){},
            productImage: data.productImage,
            productmodel: data.productModel,
            productName: data.productName,
            productOldPrice: data.productOldPrice,
            productPrice: data.productPrice,
          );

        }
        ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children:[
        ShowAllWidget(
          leftText: "Clothing",
        ),
        builderRender(
          singleProduct: AllCategoryClothData
        ),

        ShowAllWidget(
          leftText: "Shoes",
        ),
      ]
      
    );
  }
}