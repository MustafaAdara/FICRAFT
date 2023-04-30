import 'package:flutter/material.dart';
import 'package:fortestpages/customized/FormButton.dart';

class Request extends StatefulWidget {
  const Request({Key? key}) : super(key: key);

  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                    width: 700,
                    height: 140,
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

                Positioned(

                  bottom: -100,
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Image.asset('assets/Request.png', fit: BoxFit.cover,),

                  ),
                )

              ],
            ),
            const SizedBox(height: 100,),
            const Text('انشاء طلب',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            const SizedBox(height: 50,),
            const Padding(
              padding: EdgeInsets.only(left: 250),
              child: Text('وصف المهمة المطلوبة',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15 , right: 15),
              child: TextFormField(
                textAlign: TextAlign.left,
                // validator: (email){
                //   if (email!.isEmpty || !email.contains('@') || !email.contains('.com')){
                //     return 'Invalid E-mail';  } },
                // onSaved: (value){
                //   email = value!;
                //   print(email);
                // },
                decoration: InputDecoration(
                    hintText: 'Send FeedBack',
                    hintStyle: const TextStyle(color: Colors.black45),
                    filled: true,
                    fillColor: Colors.black.withOpacity(0.2),
                    contentPadding: const EdgeInsets.symmetric(vertical:50 ,horizontal:10 ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(5)
                    )
                ),
              ),
            ),

            const SizedBox(height: 25,),
            // the button
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: FormButton(
                  gradient: LinearGradient(
                      colors: <Color>[const Color(0xffD9AD30),Colors.amber.shade200,]
                  ),
                  onPressed: (){

                  },
                  child:
                  const Text('ارسال طلب', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
            ),
            

          ]
        ),
      ),
    );
  }
}
//child: Image.asset('assets/Request.png', fit: BoxFit.fill,),
