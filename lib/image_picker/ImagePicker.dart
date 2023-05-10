import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/image_picker/cubit/cubit.dart';
import 'package:fortestpages/image_picker/cubit/states.dart';
import 'package:image_picker/image_picker.dart';

import 'package:fortestpages/image_picker/cubit/model.dart';

import '../customized/FormButton.dart';
import '../customized/ourButton.dart';
//import 'package:path/path.dart';

class ImagePicker extends StatelessWidget {

  final scaffoldState = GlobalKey<ScaffoldState>();

  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String name = "";
  String location = "";
  late int phoneNum;

  Info c = Info();

  ImagePicker({super.key});

  ImagePickerCubit cubit = ImagePickerCubit();

  @override
  Widget build(BuildContext context) {


    Widget bottomSheet(){
      return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(children: [
          const Text('Choose Profile photo', style: TextStyle(fontSize: 20.0),),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            TextButton.icon(onPressed: (){


              cubit.takePhoto(ImageSource.camera);


            }, icon: const Icon(Icons.camera), label: const Text('Camera')),
            TextButton.icon(onPressed: (){


              cubit.takePhoto(ImageSource.gallery);



            }, icon: const Icon(Icons.image), label: const Text('Gallery'))
          ],)
        ],),
      );
    }


    return BlocProvider(
      create: (BuildContext context) => ImagePickerCubit(),
      child: BlocConsumer<ImagePickerCubit, ImagePickerStates>(
        listener:(context, state){} ,
        builder:(context, state){
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromRGBO(217, 173, 48, 1),
              toolbarHeight: 100,
              elevation: 0,
              title: const Padding(
                padding: EdgeInsets.only(left: 26, right: 5),
                child: Text('Personal Information',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23, color: Colors.black),),
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
            ),
            body: Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: GestureDetector(
                onTap: (){
                  FocusScope.of(context).unfocus();
                },
                child: Column(
                  children: [
                    Center(
                      child: Stack(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            decoration: BoxDecoration(
                                border: Border.all(width: 4, color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    color: Colors.grey.withOpacity(0.5),
                                  )
                                ],
                              shape: BoxShape.circle,
                              image: cubit.image == null
                                  ? const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('assets/tefa.jpg'),
                              )
                                  : DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: FileImage(File(cubit.image?.path ?? '')),
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 4,
                                      color: Colors.white
                                  ),
                                  color: Colors.amber,
                                ),
                                child: InkWell(
                                  onTap: (){

                                    showModalBottomSheet(
                                      context: context,
                                      builder: ((builder)=> bottomSheet()),);

                                  },
                                  child: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(height:30),
                    const Text('to change your date press the field you want',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 17, color: Colors.black),),
                    Form(
                      key: formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [

                            const SizedBox(height: 12,),
                            //Name
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                validator: (name){
                                  if (name!.isEmpty ){
                                    return 'name';  }
                                  return 'well done'; },
                                onSaved: (value){
                                  name = value!;
                                  //print(email);
                                },
                                decoration: InputDecoration(
                                    hintText: c.name,
                                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(0.1),
                                    prefixIcon: IconButton(
                                      icon: const Icon(Icons.person_pin, color: Colors.grey,),
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
                                    hintText: c.email,
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
                            //phone number
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: TextFormField(
                                validator: (phoneNum){
                                  if(phoneNum!.isEmpty || phoneNum.length < 12 ){
                                    return 'Phone Number should be 12 char ';}
                                  return 'well done'; },
                                onSaved: (value){
                                  phoneNum = value! as int;
                                  //print(password);
                                },
                                decoration: InputDecoration(
                                    hintText: c.number,
                                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                                    filled: true,
                                    fillColor: Colors.black.withOpacity(0.1),
                                    prefixIcon: IconButton(
                                      icon: const Icon(Icons.phone, color: Colors.grey,),
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
                            //location
                            Padding(
                              padding: const EdgeInsets.only(left: 10, right: 10),
                              child: TextFormField(
                                validator: (location){
                                  if (location!.isEmpty ){
                                    return 'enter location';  }
                                  return 'well done'; },
                                onSaved: (value){
                                  location = value!;
                                  //print(email);
                                },
                                decoration: InputDecoration(
                                    hintText: c.location,
                                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),                                      filled: true,
                                    fillColor: Colors.black.withOpacity(0.1),
                                    prefixIcon: IconButton(
                                      icon: const Icon(Icons.location_on, color: Colors.grey,),
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

                            // Button
                            const SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Padding(
                                //   padding: const EdgeInsets.only(left: 30, right: 30),
                                //   child: FormButton(
                                //
                                //       gradient: LinearGradient(
                                //           colors: <Color>[const Color(0xffD9AD30) ,Colors.amber.shade200,]
                                //       ),
                                //       child: const Text('CANCEL', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.5),),
                                //       onPressed: (){
                                //         Navigator.pop(context);
                                //       }),
                                // ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30, right: 30),
                                  child: FormButton(
                                      gradient: LinearGradient(
                                          colors: <Color>[const Color(0xffD9AD30) ,Colors.amber.shade200,]
                                      ),
                                      child: const Text('Save Changes', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.5),),
                                      onPressed: (){
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
                                      }),
                                ),
                              ],
                            ),

                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 30, right: 30),
                              child: FormButton(
                                  gradient: LinearGradient(
                                      colors: <Color>[const Color(0xffD9AD30) ,Colors.amber.shade200,]
                                  ),
                                  child: const Text('Cancel', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.5),),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } ,
      ),
    );

  }
}