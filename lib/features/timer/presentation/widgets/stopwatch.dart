import 'package:flutter/material.dart';

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
            '00:02:12'
        ),
        InkWell(
          onTap: (){
            /// todo: play functionality
          },
            child: Image.asset('assets/images/play.png', height: 24, width: 24,)),
        InkWell(
            onTap: (){
              /// todo: pause functionality
            },
            child: Image.asset('assets/images/pause.png', height: 24, width: 24,)),
      ],
    );
  }
}
