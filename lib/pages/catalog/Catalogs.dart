import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/pages/catalog/cubit/cubit.dart';
import 'package:fortestpages/pages/catalog/cubit/states.dart';

class Catalogs extends StatelessWidget {
  // var myInitialItem = 'your Location';
  // List<String> myItems= ['Cairo', 'Alex', 'Maddi', 'Giza', 'Aswan'];

  String? value;
  final items = ['Cairo', 'Alex', 'Maddi', 'Giza', 'Aswan'];

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
    ),);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CatalogCubit(),
      child: BlocConsumer<CatalogCubit, CatalogStates>(
        listener:(context, state){} ,
        builder: (context, state){
          return Scaffold(
            body: ListView(
              children: [
                Stack(
                  children: [
                    Container(
                        width: 700,
                        height: 100,
                        color: const Color(0xffD9AD30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: (){
                                    Navigator.of(context).pop();
                                  },
                                  icon: const Icon(Icons.arrow_back_outlined, color: Colors.black,)),
                            ])
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110, right: 110, top: 10),

                      child: DropdownButtonHideUnderline(
                        child: DropdownButtonFormField(
                          onTap: (){},
                          dropdownColor: Colors.amber[100],
                          focusColor: Colors.purple,
                          value: value,
                          iconSize: 36,
                          icon: const Icon(Icons.location_on_outlined, color: Colors.black, size: 30,),

                          items: items.map(buildMenuItem).toList(),
                          onChanged: (value){
                            //setState(() => this.value = value);
                            },
                          hint: const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Your Location',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                          ,),
                      ),

                    ),
                  ],
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 40, ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (39).png'),
                                  ),
                                ),
                                const Text('نجار',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (40).png'),
                                  ),
                                ),
                                const Text('سباك',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (41).png'),
                                  ),
                                ),
                                const Text('كهربائى',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (42).png'),
                                  ),
                                ),
                                const Text('نقاش',textAlign: TextAlign.center),
                              ]
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (43).png'),
                                  ),
                                ),
                                const Text('تعقيم و نظافة',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (44).png'),
                                  ),
                                ),
                                const Text('أرضيات',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (45).png'),
                                  ),
                                ),
                                const Text('ستائر',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (46).png'),
                                  ),
                                ),
                                const Text('بناء وجهات',textAlign: TextAlign.center),
                              ]
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (47).png'),
                                  ),
                                ),
                                const Text('حداد',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (48).png'),
                                  ),
                                ),
                                const Text('زجاج',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage('assets/ficraft (49).png'),
                                  ),
                                ),
                                const Text('محارة',textAlign: TextAlign.center),
                              ]
                          ),

                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundImage: ExactAssetImage('assets/ficraft (51).png',),
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                                const Text('الكترونيات',textAlign: TextAlign.center),
                              ]
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


              ],
            ),
          );
        },
      ),
    );

  }
}
