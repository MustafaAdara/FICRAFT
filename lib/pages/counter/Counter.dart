import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortestpages/pages/counter/cubit/cubit.dart';
import 'package:fortestpages/pages/counter/cubit/states.dart';


class Counter extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return BlocProvider(create: (BuildContext context) => CounterCubit(),
    child: BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state){
        if(state is CounterChangeState) print('change State');

      },
      builder: (context, state){

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Counter',
            )
          ),
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).minus();
                    },
                    child: const Text(
                      'Minus',
                    )),
                Padding(
                    padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                  child: Text(
                    '${CounterCubit.get(context).counter}',
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900
                  ),
                  ),
                ),
                TextButton(
                    onPressed: ()
                    {
                      CounterCubit.get(context).plus();
                    },
                    child: const Text(
                      'Plus',
                    )),
              ],
            ),
          ),
        );
      },
    ),);
  }
}
