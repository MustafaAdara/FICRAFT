

import 'package:flutter/material.dart';
import 'package:fortestpages/image_picker/ImagePicker.dart';
import 'package:fortestpages/pages/change_password/ChangePassword.dart';
import 'package:fortestpages/pages/forget_password/ForgetPassword.dart';
import 'package:fortestpages/pages/catalog/Catalogs.dart';
import 'package:fortestpages/pages/Loading.dart';
import 'package:fortestpages/pages/rating/Rating.dart';
import 'package:fortestpages/pages/register/Register.dart';
import 'package:fortestpages/pages/send_code/Send_Code.dart';
import 'package:fortestpages/pages/send_request/Send_Request.dart';
import 'package:fortestpages/pages/signin/SignIn.dart';
import 'package:fortestpages/pages/userProfile/UserProfile.dart';
import 'package:fortestpages/pages/ztest.dart';
import 'package:fortestpages/pages/counter/Counter.dart';
import 'package:path/path.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/img',
  routes:{
    '/loading':(context) => const Loading(),
    '/signIn':(context) => SignIn(),
    '/code':(context)=> const Code(),
    '/catalogs':(context)=> Catalogs(),
    '/request' :(context)=> Request(),
    '/register':(context)=> RegisterForm(),
    '/back_code':(context)=> const ForgetPassword(),
    '/rating':(context)=>  Rating(),
    // '/personal_info':(context)=> ,
    '/counter':(context)=> Counter(),
      '/img':(context)=> ImagePicker(),
      '/userprofile':(context)=> UserProfile(),
    '/change-password':(context)=> ChangePassword(),
    '/ztest':(context)=> SwipeToDelete()


  }
));

//Color.fromRGBO(217, 173, 48, 1)