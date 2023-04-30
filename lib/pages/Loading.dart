import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9AD30),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 10,bottom: 160),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Expanded(
                  flex: 9,
                  child: Image.asset('assets/ficraft-img.png')),

              const Expanded(
                flex: 1,
                child: Text(
                  'FICRAFT',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),

              TextButton.icon(
                onPressed: (){
                  Navigator.pushNamed(context, '/signIn');
                },
                icon: const Icon(Icons.add_alert),
                label: const Text('Go'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
