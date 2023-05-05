
import 'package:flutter/material.dart';
import 'package:fortestpages/pages/forget_password/ForgetPassword.dart';
import 'package:fortestpages/pages/catalog/Catalogs.dart';
import 'package:fortestpages/pages/Loading.dart';
import 'package:fortestpages/pages/rating/Rating.dart';
import 'package:fortestpages/pages/register/Register.dart';
import 'package:fortestpages/pages/send_code/Send_Code.dart';
import 'package:fortestpages/pages/send_request/Send_Request.dart';
import 'package:fortestpages/pages/signin/SignIn.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/signIn',
  routes:{
    '/loading':(context) => const Loading(),
    '/signIn':(context) => SignIn(),
    '/code':(context)=> const Code(),
    '/catalogs':(context)=> Catalogs(),
    '/request' :(context)=> Request(),
    '/register':(context)=> RegisterForm(),
    '/back_code':(context)=> const ForgetPassword(),
    '/rating':(context)=>  Rating(),
    //'/userProfile':(context)=> ,

        }
));

