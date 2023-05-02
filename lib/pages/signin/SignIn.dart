
////////////////////////////////////////// SIGN IN PAGE //////////////////////////////////////

import 'package:flutter/material.dart';
import 'package:fortestpages/customized/FormButton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/pages/signin/cubit/cubit.dart';
import 'package:fortestpages/pages/signin/cubit/states.dart';


class SignIn extends StatelessWidget {
   SignIn({Key? key}) : super(key: key);

  bool isObscurePassword = true;
  String email = "";
  String password = "";

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SignInCubit(),
      child: BlocConsumer<SignInCubit, SignInStates>(
        listener:(context, state){},
        builder: (context, state)
        {
          return Scaffold(
            body: Container(
              color: Colors.grey.shade300,
              padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
              child: Form(
                key: formKey,
                child: GestureDetector(
                  onTap: (){
                    FocusScope.of(context).unfocus();
                  },
                  child: ListView(
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              width: 130,
                              height: 130,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 4, color: Colors.white),
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/og-sign-in.png'),
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30,),
                      const Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle( fontWeight: FontWeight.bold, fontSize: 30 ),)),
                      const SizedBox(height: 60,),
                      // email
                      TextFormField(
                        validator: (email){
                          if (email!.isEmpty || !email.contains('@') || !email.contains('.com')){
                            return 'Invalid E-mail';  } },
                        onSaved: (value){
                          email = value!;
                          print(email);
                        },
                        decoration: InputDecoration(
                            hintText: 'Email',
                            hintStyle: const TextStyle(color: Colors.white),
                            filled: true,
                            fillColor: Colors.black.withOpacity(0.2),
                            contentPadding: const EdgeInsets.symmetric(vertical:20 ,horizontal:10 ),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      // password
                      TextFormField(
                        obscureText: true,
                        validator: (password){
                          if(password!.isEmpty || password.length < 6 ){
                            return 'Password should be at least 6 char ';}},
                        onSaved: (value){
                          password = value!;
                          print(password);
                        },
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.remove_red_eye_outlined, color: Colors.grey,),
                            onPressed: (){
                              // setState(() {
                              //   isObscurePassword = !isObscurePassword ;
                              // }
                             // );
                            },
                          ),
                          hintText: 'password',
                          hintStyle: const TextStyle(color: Colors.white),
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.2),
                          contentPadding: const EdgeInsets.symmetric(vertical:20 ,horizontal:10 ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                      ),
                      const SizedBox(height: 60,),
                      FormButton(
                          gradient: LinearGradient(
                              colors: <Color>[ Colors.amberAccent.shade100 ,Colors.amber.shade300,]
                          ),
                          onPressed: (){
                            final isValid = formKey.currentState!.validate();
                            if(isValid){
                              formKey.currentState!.save();
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Text('You have registered')));
                            }else{
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                  content: Text('invalid Credentials')));
                            }
                          },
                          child:
                          const Text('تسجيل', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                      ),

                      const SizedBox(height: 4,),
                      TextButton(
                        onPressed: (){},
                        child: const Text('Forget password ?', style: TextStyle(fontSize: 16, color: Colors.black,decoration: TextDecoration.underline),),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const Text('Have account?'),
                          TextButton(
                            onPressed: (){},
                            child: const Text('Make new account', style: TextStyle(fontSize: 14, color: Colors.black,decoration: TextDecoration.underline),),
                          ),
                        ],
                      )


                    ],
                  ),

                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

