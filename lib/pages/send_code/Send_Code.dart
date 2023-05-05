import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fortestpages/customized/FormButton.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {

  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String currentText = '';
  var requiredValue = '123456';

  @override
  Widget build(BuildContext context) {
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
                      hintText: 'Email',
                      hintStyle: const TextStyle(color: Colors.black26),
                      filled: true,
                      fillColor: Colors.black.withOpacity(0.1),
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.email_rounded, color: Colors.grey,),
                        onPressed: (){
                          setState(() {
                          });
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
                          setState(() {
                          });
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
              const SizedBox(height: 20,),
              const Text('Enter the sent code',
                textAlign: TextAlign.center ,style: TextStyle(fontSize: 20),),
              const SizedBox(height: 10,),
              // Code Style
              Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    color: Colors.green.shade600,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 6,
                  obscuringCharacter: '*',
                  obscuringWidget: const FlutterLogo(
                    size: 24,
                  ),
                  blinkWhenObscuring: true,
                  animationType: AnimationType.fade,
                  validator: (v) {
                    if (v!.length < 3) {
                      return "I'm from validator";
                    } else {
                      return null;
                    }
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 45,
                    inactiveColor: Colors.grey,
                    activeColor: Colors.greenAccent,
                    selectedColor: Colors.amberAccent,
                    inactiveFillColor: Colors.amber,
                    activeFillColor: Colors.purple

                  ),
                  onCompleted: (value){
                    if(value == requiredValue){
                      formKey.currentState!.validate();
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Code is right')));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('invalid Code')));
                    }
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(6),
                    FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9!]')),
                    FilteringTextInputFormatter.deny(RegExp(r'[/\\!@#^&*()_+$]'))],
                  onChanged: (value) {
                    debugPrint(value);
                    setState(() {
                      currentText = value;
                    });
                  },),
              ),

              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: FormButton(
                    gradient: LinearGradient(
                        colors: <Color>[ Colors.amber.shade600 ,Colors.amber.shade200,]
                    ),
                    child: const Text('Send', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    onPressed: (){
                    }),
              ),



              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't receive the code? ",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "RESEND",
                      style: TextStyle(
                          color: Color(0xFF91D3B3),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}