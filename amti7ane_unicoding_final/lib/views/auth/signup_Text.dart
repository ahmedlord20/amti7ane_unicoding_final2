

import 'package:amti7ane_unicoding/models/colors.dart';
import 'package:amti7ane_unicoding/views/auth/mainScreen/signUpScreen.dart';
import 'package:amti7ane_unicoding/views/auth/myTextButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children:  [
        Text("Don't have an account?",style: TextStyle(
            fontSize: 15,
            color: Colors.black
        ),),
        TextButton(
          onPressed: (){
            Get.to(()=> SingUpScreen());

          },
          style: TextButton.styleFrom(
            primary: MyColor.mainColor,
          ),
          child:  Text('Sign Up',
            style: TextStyle(
                color: MyColor.mainColor,
                fontSize: 16
            ),
          ),
        ),      ],
    );
  }
}
