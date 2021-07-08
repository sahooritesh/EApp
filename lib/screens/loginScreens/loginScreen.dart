import 'package:e_app_1/appColors/app_colors.dart';
import 'package:e_app_1/routes/routes.dart';
import 'package:e_app_1/screens/homepage/home_psge.dart';
import 'package:e_app_1/screens/signup/signup_screen.dart';
import 'package:e_app_1/styles/login_screen_style.dart';
import 'package:e_app_1/svg_images/svg_images.dart';
import 'package:e_app_1/widgets/my_button.dart';
import 'package:e_app_1/widgets/textFormsField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Widget buildTopPart(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
       children: [
         Image.asset("images/img1.jpg",
         height: 150,
         ),
         Column(
           children: [
             MyTextFormField(hintText: "E-mail",obscureText: false,),
             MyTextFormField(hintText: "Password",obscureText:true,),
           ],
         ),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Expanded(
                 child: MyButton(onPress: (){
                   PageRouting.goToNetPage(
                    context: context,
                    navigateTo: HomePage()
                  );
                 },
                 color: AppColors.baseBlackColor,
                 text: "Sign in",
                 ),
               ),
               SizedBox(width: 20,),
                Expanded(
                 child: MyButton(
                   onPress: (){
                     PageRouting.goToNetPage(
                       context: context,
                       navigateTo: SignupScreen()
                     );
                   },
                 color: AppColors.baseDarkPinkColor,
                 text: "Sign Up",
                 ),
               ),
             ],
           ),
         ),
         SizedBox(height: 20,),
         Text("Forgot Password?",
         style: LoginScreenStyles.forgotPasswordStyle,
         )
       ], 
      ),
    );
  }

  Widget buildBottomPart(){
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("or sign in with social networks",
          style: LoginScreenStyles.signInSocialStyle,
          ),
          SizedBox(height: 5,),
          Padding(padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                onPressed: (){},
                shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.blueGrey
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SvgPicture.asset(
                  SvgImages.facebook,
                  // color: AppColors.baseBlackColor,
                  width: 45,

                ),
              ),
              SizedBox(width: 10,),

              MaterialButton(
                onPressed: (){},
                shape: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.blueGrey
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: SvgPicture.asset(
                  SvgImages.google,
                  // color: AppColors.baseBlackColor,
                  width: 45,

                ),
              ),

            
            ],
          ),
          
          ),
          SizedBox(height: 10,),
          MaterialButton(
                onPressed: (){
                  PageRouting.goToNetPage(
                    context: context,
                    navigateTo: SignupScreen()
                  );
                },
                // shape: OutlineInputBorder(
                //   borderSide: BorderSide(
                //     width: 0.5,
                //     color: Colors.blueGrey
                //   ),
                //   borderRadius: BorderRadius.circular(5),
                // ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: AppColors.baseDarkPinkColor,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  buildTopPart(context),
                  buildBottomPart()
                ],
              )
            ],
          ),
        ),
      ),
      
    );
  }
}