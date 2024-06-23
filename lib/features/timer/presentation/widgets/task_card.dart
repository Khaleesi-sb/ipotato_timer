import 'package:flutter/material.dart';

import 'stopwatch.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.taskTitle, required this.taskDescription});

  final String taskTitle;
  final String taskDescription;

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const Stopwatch(),
          Text(widget.taskTitle, style: const TextStyle(
            color: Color(0xff216C2E),
            fontSize: 22
          ),),
          Text(widget.taskDescription, style: const TextStyle(
              color: Color(0xff006782),
              fontSize: 14
          ),),
          ElevatedButton(onPressed: (){
            /// todo: mark complete functionality
          }, child: const Text(
            'MARK COMPLETE'
          ))
        ],
      ),
    );
  }
}
