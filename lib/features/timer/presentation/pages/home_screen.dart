import 'package:flutter/material.dart';
import 'package:potato_timer/features/timer/presentation/widgets/empty_state_body.dart';

import '../widgets/add_task_dialog.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Potato Timer', style: TextStyle(
          fontSize: 32,
          color: Colors.white
        ),),
        backgroundColor: const Color(0xff216C2E),
      ),
      body: const Stack(
        children: <Widget>[
          Positioned(
            bottom: 80,
              child: EmptyStateBody())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddTaskDialog(
                // onConfirm: (String text1, String text2) {
                //   print('Text Field 1: $text1, Text Field 2: $text2');
                //   // Perform actions based on confirmation
                // },
              );
            },
          );
        },
        backgroundColor: const Color(0xffB6EAFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('assets/images/floating_icon.png'),
        ),
      ),
    );
  }
}
