import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class RegisterForm extends StatelessWidget {
  RegisterForm({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  String firstname = '';
  String lastname = '';
  String username = '';

  String location = '';

  String email = '';

  String password = '';

  String confirmP = '';

  String phonenum = '';
  String? value;
  String? value2;

  // DropDown 1
  final items = ['User', 'صنايعى'];

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
        ),
      );

  final special = ['نجار', 'تكيف', 'دهان', 'سباك', 'تلفزيونات'];

  DropdownMenuItem<String> buildMenuItem2(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
      ));

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Center(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: SingleChildScrollView(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(height: 10),
                          Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/Sign_up_img.png'),
                                    fit: BoxFit.cover)),
                            height: 170.0,
                            width: 350,
                          ),
                          const Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              // first name
                              Expanded(
                                  child: TextFormField(
                                validator: (firstName) {
                                  if (firstName!.isEmpty ||
                                      firstName.length < 6 ||
                                      firstName.length > 15) {
                                    return 'الاسم الاول يجب ان يكون بين حرفين حتى 8 احرف';
                                  }
                                },
                                onSaved: (value) {
                                  firstname = value!;
                                  print(firstname);
                                },
                                decoration: InputDecoration(
                                    hintText: 'First Name',
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(0.2),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 8),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              )),

                              const SizedBox(
                                width: 3.0,
                              ),
                              //Last name
                              Expanded(
                                  child: TextFormField(
                                validator: (lastName) {
                                  if (lastName!.isEmpty ||
                                      lastName.length < 6 ||
                                      lastName.length > 15) {
                                    return 'الاسم يجب ان لا يزيد عن 8 احرف';
                                  }
                                },
                                onSaved: (value) {
                                  lastname = value!;
                                  print(lastname);
                                },
                                decoration: InputDecoration(
                                    hintText: 'Last Name',
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(0.2),
                                    contentPadding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 8),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ))
                            ],
                          ),

                          const SizedBox(
                            height: 3,
                          ),
                          // User Name
                          TextFormField(
                            validator: (username) {
                              if (username!.isEmpty ||
                                  username.length < 6 ||
                                  username.length > 15) {
                                return 'Enter a username';
                              }
                            },
                            onSaved: (value) {
                              username = value!;
                              print(username);
                            },
                            decoration: InputDecoration(
                                hintText: 'User Name',
                                filled: true,
                                fillColor: Colors.black.withOpacity(0.2),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                          ),

                          const SizedBox(
                            height: 3,
                          ),
                          // Location
                          TextFormField(
                            validator: (location) {
                              if (location!.isEmpty ||
                                  location.length < 3 ||
                                  location.length > 15) {
                                return 'Enter vaild location';
                              }
                            },
                            onSaved: (value) {
                              location = value!;
                              print(location);
                            },
                            decoration: InputDecoration(
                                hintText: 'Location',
                                filled: true,
                                fillColor: Colors.black.withOpacity(0.2),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                          ),

                          const SizedBox(
                            height: 3,
                          ),
                          // email
                          TextFormField(
                            validator: (email) {
                              if (email!.isEmpty ||
                                  !email.contains('@') ||
                                  !email.contains('.com')) {
                                return 'Invalid E-mail';
                              }
                            },
                            onSaved: (value) {
                              email = value!;
                              print(email);
                            },
                            decoration: InputDecoration(
                                hintText: 'Email',
                                filled: true,
                                fillColor: Colors.black.withOpacity(0.2),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                          ),

                          const SizedBox(
                            height: 3,
                          ),
                          // PASSWORD
                          TextFormField(
                            obscureText: true,
                            validator: (password) {
                              if (password!.isEmpty || password.length < 6) {
                                return 'Password should be at least 6 char ';
                              }
                            },
                            onSaved: (value) {
                              password = value!;
                              print(password);
                            },
                            decoration: InputDecoration(
                                hintText: 'password',
                                filled: true,
                                fillColor: Colors.black.withOpacity(0.2),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                          ),

                          const SizedBox(
                            height: 3,
                          ),
                          //Confirm
                          TextFormField(
                            obscureText: true,
                            validator: (confirm) {
                              if (confirm!.isEmpty ||
                                  confirm.length <
                                      6 /*|| password != confirmP*/) {
                                return 'Password should be match ';
                              }
                            },
                            onSaved: (value) {
                              confirmP = value!;
                              print(confirmP);
                            },
                            decoration: InputDecoration(
                                hintText: 'confirm password',
                                filled: true,
                                fillColor: Colors.black.withOpacity(0.2),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                          ),

                          const SizedBox(
                            height: 3,
                          ),
                          // PHONE NUMBER
                          TextFormField(
                            obscureText: true,
                            validator: (phone) {
                              if (phone!.isEmpty ||
                                  RegExp(r'^01[0-2,5]{1}[0-9]{8}$')
                                      .hasMatch(phone!)) {
                                return 'phone number should be 12';
                              }
                            },
                            onSaved: (value) {
                              phonenum = value!;
                              print(phonenum);
                            },
                            decoration: InputDecoration(
                                hintText: 'phone number',
                                filled: true,
                                fillColor: Colors.black.withOpacity(0.2),
                                contentPadding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(10))),
                          ),


                          // DropDown 1
                          const SizedBox(height: 3),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 2, 0, 5),
                            padding: const EdgeInsets.only(left: 3),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.black12, width: 3),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButtonFormField(
                                value: value,
                                isExpanded: true,
                                iconSize: 36,
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.amber,
                                ),
                                items: items.map(buildMenuItem).toList(),
                                onChanged: (value) {
                                 // setState(() => this.value = value);
                                },
                                hint: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Who you are',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          //DropDown 2
                          const SizedBox(
                            height: 1,
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 2, 0, 5),
                            padding: const EdgeInsets.only(left: 3),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: Colors.black12, width: 3),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: value2,
                                isExpanded: true,
                                iconSize: 36,
                                icon: const Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.amber,
                                ),
                                items: special.map(buildMenuItem2).toList(),
                                onChanged: (value2) {
                                 // setState(() => this.value2 = value2);
                                },
                                hint: const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Specialist',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                          ),



                          const SizedBox(height: 20, width: 0),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              minimumSize: const Size(300, 40),
                              backgroundColor: Colors.amber, // background
                              onPrimary: Colors.black, // foreground
                            ),
                            onPressed: () {
                              final isValid = formKey.currentState!.validate();
                              if (isValid) {
                                formKey.currentState!.save();
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('You have registered')));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('invalid Credentials')));
                              }
                            },
                            child: const Text(
                              'تسجيل',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/google_icon.png'),
                              ),
                              Icon(
                                Icons.facebook,
                                color: Colors.blue,
                                size: 50.0,
                              ),
                              Icon(
                                Icons.apple,
                                size: 50.0,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                  onPressed: () {},
                                  child: const Text('تسجيل الدخول',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          decoration:
                                              TextDecoration.underline))),
                              const Text('لديك حساب؟'),
                            ],
                          ),
                        ],
                      ),
                    ),
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
