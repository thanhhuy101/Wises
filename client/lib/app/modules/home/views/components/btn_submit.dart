import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wises/app/modules/home/controllers/question_controller.dart';

class BtnSubmit extends GetWidget<QuestionController> {
  BtnSubmit({Key? key}) : super(key: key);
  final QuestionController _controller = Get.put(QuestionController());
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Container(
          //   padding: const EdgeInsets.all(16.0),
          //   child: const Text(
          //     'Translate the following sentence:',
          //     style: TextStyle(fontSize: 18.0),
          //   ),
          // ),
          // Container(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Text(
          //     _controller.options.join(' '),
          //     style:
          //         const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          //   ),
          // ),
          // const SizedBox(height: 20.0),
          // Wrap(
          //   spacing: 8.0,
          //   runSpacing: 8.0,
          //   children: [
          //     for (var option in controller.options)
          //       GestureDetector(
          //         onTap: () {
          //           _controller.toggleAnswerPiece(option);
          //         },
          //         child: Chip(
          //           label: Text(option),
          //           backgroundColor: _controller.answerPieces.contains(option)
          //               ? Colors.blue
          //               : Colors.grey,
          //         ),
          //       ),
          //   ],
          // ),
          //const Divider(), // Divider to separate answer area and answer pieces
          // Container(
          //   padding: const EdgeInsets.all(16.0),
          //   child: Wrap(
          //     spacing: 8.0,
          //     runSpacing: 8.0,
          //     children: [
          //       for (var option in _controller.answer)
          //         GestureDetector(
          //           onTap: () {
          //             _controller.toggleAnswerPiece(option);
          //           },
          //           child: Chip(
          //             label: Text(option),
          //             backgroundColor: Colors.blue,
          //           ),
          //         ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              _controller.updateNewQuestion();
            },
            child: const Text('Next Question'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_controller.isAnswerCorrect()) {
                // Handle correct answer logic
              }
            },
            style: ElevatedButton.styleFrom(
              primary:
                  _controller.isAnswerCorrect() ? Colors.green : Colors.red,
            ),
            child: const Text('Check Answer'),
          ),
        ],
      ),
    );
  }
}
