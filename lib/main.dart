import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc.dart';
import 'states/state.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (BuildContext context)=>CounterCubit(),
        child: BlocConsumer<CounterCubit ,CounterStates>(
          listener: (BuildContext context,CounterStates state){},
          builder: (context,state){
            return Scaffold(
              appBar: AppBar(
                  title: const Text('Points Counter'),
                  backgroundColor: Colors.orange),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 500,
                        child: Column(children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 34),
                          ),
                          Text(
                            '${CounterCubit.get(context).teamAPoints}',
                            style: TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // teamAPoints++;
                              // setState(() {});
                              CounterCubit.get(context).incrementA1();
                            },
                            child:  Text(
                              'Add 1 Point',
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 55),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // teamAPoints += 2;
                              // setState(() {});
                              CounterCubit.get(context).incrementA2();
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange, minimumSize: Size(150, 55)),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // teamAPoints += 3;
                              // setState(() {});
                              CounterCubit.get(context).incrementA3();
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange, minimumSize: Size(150, 55)),
                          ),
                          const Spacer(
                            flex: 10,
                          ),
                        ]),
                      ),
                      Container(
                        height: 600,
                        child: VerticalDivider(
                          indent: 20,
                          endIndent: 100,
                          thickness: 2,
                          //color: Colors.grey,
                        ),
                      ),
                      Container(
                        height: 500,
                        child: Column(children: [
                          const Text(
                            'Team B',
                            style: TextStyle(fontSize: 34),
                          ),
                          Text(
                            '${CounterCubit.get(context).teamBPoints}',
                            style: TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // teamBPoints++;
                              // setState(() {});
                              CounterCubit.get(context).incrementB1();
                            },
                            child: Text(
                              'Add 1 Point',
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 55),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // teamBPoints += 2;
                              // setState(() {});
                              CounterCubit.get(context).incrementB2();
                            },
                            child: Text(
                              'Add 2 Point',
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange, minimumSize: Size(150, 55)),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // teamBPoints += 3;
                              // setState(() {});
                              CounterCubit.get(context).incrementB3();
                            },
                            child: Text(
                              'Add 3 Point',
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange, minimumSize: Size(150, 55)),
                          ),
                          Spacer(
                            flex: 10,
                          )
                        ]),
                      ),
                    ],
                  ),
                  Container(
                    child: ElevatedButton(
                        onPressed: () {
                          // teamAPoints = teamBPoints = 0;
                          // setState(() {}
                          // );
                    CounterCubit.get(context).Reset();
                        },
                        child: const Text('Reset',
                            style: TextStyle(fontSize: 20, color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: Size(150, 55),
                        )),
                  )
                ],
              ),
            );
          }



        ),
      ),
    );
  }
}
