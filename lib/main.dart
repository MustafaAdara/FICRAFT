
import 'package:flutter/material.dart';
import 'package:fortestpages/pages/BackCode.dart';
import 'package:fortestpages/pages/Catalogs.dart';
import 'package:fortestpages/pages/Loading.dart';
import 'package:fortestpages/pages/Rating.dart';
import 'package:fortestpages/pages/Register.dart';
import 'package:fortestpages/pages/Send_Code.dart';
import 'package:fortestpages/pages/Send_Request.dart';
import 'package:fortestpages/pages/signin/SignIn.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/testing',
  routes:{
    '/loading':(context) => const Loading(),
    '/signIn':(context) => SignIn(),
    '/code':(context)=> const Code(),
    '/catalogs':(context)=> const Catalogs(),
    '/request':(context)=> const Request(),
    '/register':(context)=> const RegisterForm(),
    '/back_code':(context)=> const BackCode(),
      '/rating':(context)=> const Rating(),

        }
));

