

import 'package:flutter/material.dart';

class MyTextFiledName extends StatelessWidget {
  const MyTextFiledName({Key? key, required this.text, required this.myPrefixIcon,  this.mySuffixIcon}) : super(key: key);
  final String text;
  final IconData myPrefixIcon;
  final IconData? mySuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25,left: 57,right: 57),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,style: const TextStyle(
              color: Colors.black,
              fontSize: 15
          ),),
          const SizedBox(height: 10,),
          TextFormField(
            validator: (value){
              if(value!.isEmpty || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)){
                return " Enter Correct name";
              }else{
                return null;
              }
            },

            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              contentPadding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              constraints: BoxConstraints(maxHeight: 50),
              enabledBorder: OutlineInputBorder(
                borderSide:const BorderSide(
                  width: 1,
                  color: Color(0xffC4C4C4),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  width: 1,
                  color: Color(0xff870DFF),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              errorBorder: OutlineInputBorder(
                borderSide:const BorderSide(
                  width: 1,
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              prefixIcon: Icon(myPrefixIcon,size: 20,color:const Color(0xff555555),),

              hintText: 'ali ahmed',
              hintStyle:const TextStyle(
                  color: Color(0xff555555),
                  fontSize: 12
              ),

            ),
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

