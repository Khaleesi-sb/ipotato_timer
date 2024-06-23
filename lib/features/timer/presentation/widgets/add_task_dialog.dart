import 'package:flutter/material.dart';
import 'package:potato_timer/features/timer/presentation/widgets/custom_text_field.dart';
import 'package:potato_timer/features/timer/presentation/widgets/duration_input.dart';

class AddTaskDialog extends StatefulWidget {
  const AddTaskDialog({super.key});

  @override
  State<AddTaskDialog> createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0xffFBFCFE),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'Add Task',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomTextField(
              textEditingController: title,
              labelText: 'Title',
              hintText: 'Title',
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomTextField(
              textEditingController: description,
              maxLine: 5,
              labelText: 'Description',
              hintText: 'e.g. john@gmail.com',
            ),
          ),
          // const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
            child: DurationInput(),
          ),
          // const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xffE1DFFF), // background (button) color
                foregroundColor:
                    const Color(0xff181837), // foreground (text) color
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20.0),
                  ),
                ),
              ),
              onPressed: () {
                /// todo:
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Add Task',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
