import 'package:e_app_1/appColors/app_colors.dart';
import 'package:e_app_1/data/detail_screen_data.dart';
import 'package:e_app_1/data/home_page_data.dart';
import 'package:e_app_1/models/singleProductModel.dart';
import 'package:e_app_1/routes/routes.dart';
import 'package:e_app_1/styles/datail_screen_style.dart';
import 'package:e_app_1/widgets/drop_button_widget.dart';
import 'package:e_app_1/widgets/singleProduct_widget.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  // const DetailScreen({ Key? key }) : super(key: key);
  final SingleProductModel data;
  

  DetailScreen({this.data});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {

  String _ratingController;
  String _sizeController;

  PreferredSize buildAppbar(){
    return PreferredSize(
      preferredSize:Size.fromHeight(70),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Rebook",
          style: TextStyle(
            color: AppColors.baseBlackColor,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
            color: AppColors.baseBlackColor,
            semanticLabel: "Fave",
            size: 35,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              Icons.file_upload_outlined,
            color: AppColors.baseBlackColor,
            semanticLabel: "Fave",
            size: 35,
            ),
            onPressed: (){},
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("images/img1.jpg"),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productName,
                  style: DetailScreenStyles.companyTitleStyle,
                ),
                SizedBox(height: 5,),
                Text(
                  widget.data.productModel,
                  style: DetailScreenStyles.productModelStyle,
                )
              ],
            ),
            trailing: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.productPrice.toString(),
                  style: DetailScreenStyles.productPriceStyle,
                ),
                SizedBox(height: 5,),

                Text(
                  widget.data.productOldPrice.toString(),
                  style: DetailScreenStyles.productOldPriceStyle,
                ),

              ],
            ),
          ),
        
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(widget.data.productImage,fit: BoxFit.cover,),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 15,top: 15),
                      child: Image.network(widget.data.productSecondImage),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 15,top: 15),
                      child: Image.network(widget.data.productThirdImage),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 15,top: 15),
                      child: Image.network(widget.data.productFourImage),
                    ),
                  ),
                ],
              )
            ],
          ),
        
        ),
        
        Row(
          children: [
            Expanded(
              child: DropButton(
                hintText: "Color",
                item: ["red","Blue","White","Black","Pink"],
                ratingController: _ratingController,
              )
            ),

            Expanded(
              child: DropButton(
                hintText: "Size",
                item: ["25","30","35","40","45"],
                ratingController: _sizeController,
              )
            ),
          ],
        ),
        
        Padding(
          padding: EdgeInsets.all(16),
          child: MaterialButton(
            onPressed: (){},
            elevation: 0,
            height: 50,
            color: AppColors.baseDarkGreenColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide.none
            ),
            child: Text("Add to Cart",
            style: DetailScreenStyles.buttonTextStyle,
            ),
          ),
        ),
        ExpansionTile(
          title: Text("Description",
          style: DetailScreenStyles.descriptionTextStyle
          ),
          children: [
            ListTile(
              title: Wrap(
                children: [
                  Text("this woman\'s tank top is desighed to help you \nstay cool.It\'s made of stretchy and breathable \nfabric that moves away from your skin",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(".  Material",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                          Text("84% nylon",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("16% elastance",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(".   size",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                          Text("2XS,\tXS, \tS,\tM, \tL",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(".  \tGender",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                          Text("Woman",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(".   Province",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                          Text("Balochistan",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(".   Country",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                          Text("India",
                          style: TextStyle(
                            fontSize: 18.60
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      MaterialButton(
                        onPressed: (){},
                        height: 10,
                        elevation: 0,
                        child: Text(
                          "Size guide",
                          style: DetailScreenStyles.sizegruideTextStyle,
                        ),
                        minWidth: double.infinity,
                        color: Colors.white,
                      ),

                    ],
                  )
                ],
              ),
            )
          ],
        ),
        ListTile(
          leading: Text("You may also like",
          style:DetailScreenStyles.youmayalsoLikeTextStyle
          ), 
          trailing: Text("Show All",
          style: DetailScreenStyles.showAllTextStyle,
          ),
        ),
        Container(
          height: 260,
          child: GridView.builder(
                    shrinkWrap: true,
                    primary: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: detailScreenData.length ,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.5,
                    ),
                    itemBuilder: (context,index){
                      var data=detailScreenData[index];
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
        )

        ],
      ),
      
    );
  }
}