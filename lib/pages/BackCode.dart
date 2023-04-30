import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fortestpages/customized/FormButton.dart';


class BackCode extends StatelessWidget {
  const BackCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormState>();
    String email = '';
    String password = '';


    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Container(
                width: 400,
                height: 200,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/Sign-In.png'))
                ),
              ),

              const Text('Forget Password',
                textAlign: TextAlign.center ,style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              const SizedBox(height: 60,),
              //email
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  validator: (email){
                    if (email!.isEmpty || !email.contains('@') || !email.contains('.com')){
                      return 'Invalid E-mail';  } },
                  onSaved: (value){
                    email = value!;
                    print(email);
                  },
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.1),
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.email_rounded, color: Colors.grey,),
                        onPressed: (){
                         // setState(() {
                         // });
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

              //password
              const SizedBox(height: 20,),

              // Button
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: FormButton(
                    gradient: LinearGradient(
                        colors: <Color>[ Colors.amber.shade600 ,Colors.amber.shade200,]
                    ),
                    child: const Text('Send Code', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),),
                    onPressed: (){
                    }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
