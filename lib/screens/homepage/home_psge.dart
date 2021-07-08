import 'package:carousel_pro/carousel_pro.dart';
import 'package:e_app_1/appColors/app_colors.dart';
import 'package:e_app_1/data/home_page_data.dart';
import 'package:e_app_1/models/singleProductModel.dart';
import 'package:e_app_1/routes/routes.dart';
import 'package:e_app_1/screens/detailsScreen/detail_screen.dart';
import 'package:e_app_1/screens/tabbar/tabbar-data.dart';
import 'package:e_app_1/styles/homepage_style.dart';
import 'package:e_app_1/widgets/show_all_widget.dart';
import 'package:e_app_1/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key key }) : super(key: key);

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottom: TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 22),
        indicator: BoxDecoration(
          color: Colors.transparent
        ),
        isScrollable: true,
        indicatorSize: TabBarIndicatorSize.label,
        
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold
        ),
        unselectedLabelColor: AppColors.baseBlackColor,
        labelColor: AppColors.baseDarkPinkColor,
        tabs: [
          Text("All"),
          Text("Clothing"),
          Text("Shoes"),
          Text("Accesories")
        ],
      ),
      title: Column(
        children: [
          Text(
            "Welcome",
            style: HomeScreenStyles.appBarUpperTitleStyle,
          ),
          Text(
            "Shopping",
            style: HomeScreenStyles.appBarBottomTitleStyle,
          )
        ],
      ),
      centerTitle: true,
      actions: [    
        IconButton(
          icon: RotationTransition(
            turns: AlwaysStoppedAnimation(90/360),
            child: Image.asset("images/settings.png",width: 30)),
          onPressed: (){},
        ),
        IconButton(
          icon: Image.asset("images/search.png",width: 30,),
          // SvgPicture.asset(SvgImages.google,color: Colors.black ,width: 30,),
          onPressed: (){},
        ),
      ],
    );
  }


  Widget buildAdvertismentPlace(){
    return Padding(
      padding: EdgeInsets.all(18),
      child: Container(
        height: 170,
        child: Carousel(
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(microseconds: 1000),
          showIndicator: false,
          images: [
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/img8.jpg"),
                ),
                borderRadius: BorderRadius.circular(10)
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/img9.jpg"),
                ),
                borderRadius: BorderRadius.circular(10)
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTrendingProduct({String productImage,String productName,String productModel,double productPrice}){
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: 30,
        right: 20,
        bottom: 20
      ),
      height: 65,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(productImage),
              ),
            ),
          ),
           Expanded(
             flex: 2,
             child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(productName,
                    style: HomeScreenStyles.trendingProductNameStyle,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      productModel,
                      style: HomeScreenStyles.trendingProductModelStyle,
                    ),
                  ],
                ),
             ),
           ),
           Padding(
             padding: EdgeInsets.symmetric(horizontal: 30,),
             child: MaterialButton(
               elevation: 0,
               color: AppColors.baseLightPinkColor,
               height: 45,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(0.7),
                 side: BorderSide.none
               ),
               onPressed: (){},
               child: Text(
                 "\$ $productPrice",
                 style: HomeScreenStyles.trendingProductPriceStyle,
               ),
             ),
           )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
          child: Scaffold(
        appBar: buildAppBar(),
        body: TabBarView(
          children: [
            
            ListView(
              physics: BouncingScrollPhysics(),
              children: [


                buildAdvertismentPlace(),

                ShowAllWidget(
                  leftText: "New Arrival",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    itemCount: singleProductData.length ,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemBuilder: (context,index){
                      var data=singleProductData[index];
                      return SingleProductWidget(
                        onPressed: (){
                          PageRouting.goToNetPage(context: context,
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
                ),
              Divider(indent: 16,endIndent: 16,),
              ShowAllWidget( 
                leftText: "What\'s trending",
              ),
              buildTrendingProduct(
                productImage: "images/img6.jpg",
                productModel: "Food",
                productName: "Simple Food",
                productPrice: 12,

              ),

              buildTrendingProduct(
                productImage: "images/img1.jpg",
                productModel: "Food",
                productName: "Simple Food",
                productPrice: 12,

              ),

              buildTrendingProduct(
                productImage: "images/img2.jpg",
                productModel: "Food",
                productName: "Simple Food",
                productPrice: 12,

              ),

              ShowAllWidget( 
                leftText: "History",
              ),
              TabBarData(productData: singleProductData,)


              ],

            ),


            TabBarData(
              productData: clothData,
            ),
            TabBarData(productData: shoesData,),
            TabBarData(productData: accessoriesData,),

            
          ],
        )
        
      ),
    );
  }
}