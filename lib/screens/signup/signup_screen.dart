import 'package:e_app_1/appColors/app_colors.dart';
import 'package:e_app_1/styles/signupscreen_style.dart';
import 'package:e_app_1/svg_images/svg_images.dart';
import 'package:e_app_1/widgets/my_button.dart';
import 'package:e_app_1/widgets/textFormsField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  // const SignupScreen({ Key? key }) : super(key: key);

  Widget buildTopPart(BuildContext context){
    return Column(
      children: [
        Image.asset("images/fb.jpg",
        height: MediaQuery.of(context).size.height*0.4,
        ),
        MyTextFormField(hintText: "Full Name",obscureText: false,),
        MyTextFormField(hintText: "E-mail",obscureText: false,),
        MyTextFormField(hintText: "Password",obscureText: true,),
        MyTextFormField(hintText: "Confirm Password",obscureText: true,),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: MyButton(
            onPress: (){},
            color: AppColors.baseDarkPinkColor,
            text: "Create An Account",
          ),
        ),
        SizedBox(height: 20,),
        RichText(
          text: TextSpan(
            text: "By Sigining up u agress to our \n",
            style: SignupScreenStyles.signInAgressStyle,
            children: <TextSpan>[
              TextSpan(
                text: "Terms",
                style: SignupScreenStyles.termsTextStyle,
              ),
              TextSpan(
                text: " and ",
                style: SignupScreenStyles.andTextStyle,
              ),
              TextSpan(
                text: "Condition Of Use\t",
                style: SignupScreenStyles.conditionTextStyle  ,
              )
            ]
          ),
        ),

      ],
    );
  }

  Widget buildSocialButton({Widget child,Function onPressed}){
    return MaterialButton(
      onPressed: onPressed,
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.5,
                      color: Colors.blueGrey
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: child,
                );
  }

  Widget buildBottomPart(){
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "or sign in with social networks",
            style: SignupScreenStyles.signInSocialTextStyle,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildSocialButton(
                  child:  SvgPicture.asset(SvgImages.facebook,width: 45,),
                  onPressed: (){}
                ),
                buildSocialButton(
                  child:  SvgPicture.asset(SvgImages.google,width: 45,),
                  onPressed: (){}
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: MaterialButton(
              
              onPressed: (){},
              height: 55,
              elevation: 0,
              child: Center(
                child: Text(
                  "Sign up",
                  style: SignupScreenStyles.signupButtomTextStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            buildTopPart(context),
            buildBottomPart(),
          ],
        ),
      ),
      
    );
  }
}