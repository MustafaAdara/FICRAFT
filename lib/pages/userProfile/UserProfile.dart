import 'package:flutter/material.dart';
import 'package:fortestpages/pages/userProfile/cubit/model_user_profile.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    late Profile info;

    return
      Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    color: const Color.fromRGBO(217, 173, 48, 1),
                  ),
                  height: 117.0,

                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.arrow_back_sharp,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 110.0,
                  top: 75.0,
                  child: Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.bottomEnd,
                        children:
                        [
                          const CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 35.0,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(''),
                              radius: 35.0,
                              backgroundColor: Colors.transparent,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(9)
                              ),
                              child: const Icon(
                                Icons.camera_alt,
                                size: 11,
                                color: Colors.white,
                              ),
                            ),
                          ),

                        ],
                      ),

                      const Text('',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: 18.0,
                        ),
                      ),
                      const Text('',
                        style: TextStyle(
                          color: Colors.grey,
                          height: 1.0,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 90),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: MaterialButton(onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  const [
                          Icon(
                            Icons.navigate_before_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                          Spacer(),
                          Text('معلومات شخصية',

                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w900,

                            ),
                          ),
                          SizedBox(width: 8,),
                          Icon(
                            Icons.person_rounded,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: MaterialButton(onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  const [
                          Icon(
                            Icons.navigate_before_outlined,
                            size:30,
                            color: Colors.grey,

                          ),
                          Spacer(),
                          Text('طلباتي',

                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w900,

                            ),
                          ),
                          SizedBox(width: 8,),
                          Icon(
                            Icons.account_box_outlined,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: MaterialButton(onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  const [
                          Icon(
                            Icons.navigate_before_outlined,
                            size: 30,
                            color: Colors.grey,

                          ),
                          Spacer(),
                          Text('الاشعارات',

                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w900,

                            ),
                          ),
                          SizedBox(width: 8,),
                          Icon(
                            Icons.notifications_none_outlined,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: MaterialButton(onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  const [
                          Text('تسجيل خروج',

                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w900,

                            ),
                          ),
                          SizedBox(width: 8,),
                          Icon(
                            Icons.login_outlined,
                            size: 18,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );

  }
}