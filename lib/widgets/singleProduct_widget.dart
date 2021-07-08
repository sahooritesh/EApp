import 'package:e_app_1/appColors/app_colors.dart';
import 'package:e_app_1/models/singleProductModel.dart';
import 'package:flutter/material.dart';

class SingleProductWidget extends StatelessWidget {
  // const SingleProductWidget({ Key? key }) : super(key: key);
  final String productImage;
  final String productName;
  final String productmodel;
  final double productPrice;
  final double productOldPrice;
  final Function onPressed;

  SingleProductWidget({
    this.productImage,
    this.productName,
    this.productmodel,
    this.productOldPrice,
    this.productPrice,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(productImage)
                      )
                    ),
                    child: IconButton(
                      icon: Icon(Icons.favorite,size: 30,color: AppColors.baseDarkOrangeColor,),
                      onPressed: (){},
                    ),
                  ),
                ),

              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productName,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        productmodel,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: AppColors.baseDarkPinkColor
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$ $productPrice",
                              overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "\$ $productOldPrice",
                              overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )


              ],
            ),
        
      ),
    );
  }
}