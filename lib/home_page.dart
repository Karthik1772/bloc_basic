import 'package:demo/bloc/demo_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(Homee());
}

class Homee extends StatefulWidget {
  Homee({super.key});
  int number = 0;
  @override
  State<Homee> createState() => _MyAppState();
}

class _MyAppState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DemoBlocBloc,DemoBlocState>(
      listener: (context, state) {
        if(state is updatedState){
          widget.number = state.number;
        }
      },
      builder: (context, state) {
        return MaterialApp(
          home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.blue,
                title: Text(
                  "HOME",
                  style: TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "${widget.number}",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        BlocProvider.of<DemoBlocBloc>(context).add(
                          IncrementEvent(),
                        );
                      }, 
                      child: Text("+",style: TextStyle(fontSize: 50),)
                      ),
                      SizedBox(width:10),
                       ElevatedButton(onPressed: (){
                        BlocProvider.of<DemoBlocBloc>(context).add(
                          DecrementEvent(),
                        );
                      }, 
                      child: Text("-",style: TextStyle(fontSize: 50),)
                      ),
                    ],
                  )
                ],
              )),
        );
      },
    );
  }
}
