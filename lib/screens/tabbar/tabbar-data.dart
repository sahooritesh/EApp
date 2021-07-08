import 'package:e_app_1/data/home_page_data.dart';
import 'package:e_app_1/models/singleProductModel.dart';
import 'package:e_app_1/routes/routes.dart';
import 'package:e_app_1/screens/detailsScreen/detail_screen.dart';
import 'package:e_app_1/styles/datail_screen_style.dart';
import 'package:e_app_1/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

class TabBarData extends StatelessWidget {
  // const TabBar({ Key? key }) : super(key: key);
  final List<SingleProductModel> productData;
  TabBarData({@required this.productData});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 250,
                child: GridView.builder(
                  // scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  primary: true,
                  itemCount: productData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    
                  ),
                  itemBuilder: (context,index){
                     var data=productData[index];
                      return SingleProductWidget(
                        onPressed: (){
                          PageRouting.goToNetPage(
                            context: context,
                            navigateTo: DetailScreen(data: data,)
                          );
                        },
                        productImage: data.productImage,
                        productmodel: data.productModel,
                        productName: data.productName,
                        productOldPrice: data.productOldPrice,
                        productPrice: data.productPrice,
                      );
                    
                  },
                ),
              );
  }
}