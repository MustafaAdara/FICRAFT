import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/pages/change_password/cubit/states.dart';
import 'package:fortestpages/pages/change_password/cubit/cubit.dart';

import '../../customized/FormButton.dart';
import '../../customized/ourButton.dart';
class ChangePassword extends StatelessWidget {
   ChangePassword({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
   String email = "";
   String password = "";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (BuildContext context) => ChangePasswordCubit(),
    child: BlocConsumer<ChangePasswordCubit, ChangePasswordStates>(
      listener: (context, state){},
        builder: (context, state){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(217, 173, 48, 1),
            toolbarHeight: 100,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          body: Column(
            children: [
              const SizedBox(height:30),
              Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text('Personal Information',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),),
                      const SizedBox(height: 12,),
                      //email
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: TextFormField(
                          validator: (email){
                            if (email!.isEmpty || !email.contains('@') || !email.contains('.com')){
                              return 'Invalid E-mail';  }
                            return 'well done'; },
                          onSaved: (value){
                            email = value!;
                            //print(email);
                          },
                          decoration: InputDecoration(
                              hintText: 'E-mail',
                              hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.1),
                              prefixIcon: IconButton(
                                icon: const Icon(Icons.email_rounded, color: Colors.grey,),
                                onPressed: (){
                                  //setState(() {});
                                },
                              ),
                              contentPadding: const EdgeInsets.symmetric(vertical:20 ,horizontal:10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      const Text('Change Password', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                      const SizedBox(height: 10,),
                      //password
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: TextFormField(
                          obscureText: true,
                          validator: (password){
                            if(password!.isEmpty || password.length < 6 ){
                              return 'Password should be at least 6 char ';}
                            return 'well done'; },
                          onSaved: (value){
                            password = value!;
                            //print(password);
                          },
                          decoration: InputDecoration(
                              hintText: 'password',
                              filled: true,
                              fillColor: Colors.black.withOpacity(0.1),
                              hintStyle: const TextStyle(color: Colors.black26),
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.remove_red_eye, color: Colors.grey,),
                                onPressed: (){
                                  //setState(() {});
                                },
                              ),
                              contentPadding: const EdgeInsets.symmetric(vertical:20 ,horizontal:10 ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      // Button
                      const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left: 50, right: 50),
                        child: FormButton(
                            gradient: LinearGradient(
                                colors: <Color>[const Color(0xffD9AD30) ,Colors.amber.shade200,]
                            ),
                            child: const Text('Save Changes', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.5),),
                            onPressed: (){
                            }),
                      ),

                      DefaultButton(onPress: () {  }, text: 'Hell'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
        },
         )
    );
  }
}
