import 'package:get/get.dart';
import 'package:collection/collection.dart';

class QuestionController extends GetxController {
  List<String> options = [];
  List<String> correctOrder = [];
  List<String> answer = [];
  List<String> answerPieces = [];

  // RxInt score = 0.obs;
  var progress = 0.0.obs;
  var isLessonCompleted = false.obs;

  @override
  void onInit() {
    super.onInit();
    updateNewQuestion();
  }

  void updateNewQuestion() {
    // Implement your logic to update options and correctOrder here
    // For example:
    options = ['This', 'a', 'is', 'sentence', 'sample'];
    correctOrder = ['This', 'is', 'a', 'sample', 'sentence'];
    answer.clear();
    answerPieces = List.from(options); // Initialize answerPieces with options
    progress.value += 0.1;
    if (progress.value >= 1.0) {
      isLessonCompleted.value = true; // Mark lesson as completed
    }
  }

  void toggleAnswerPiece(String piece) {
    if (answer.contains(piece)) {
      answer.remove(piece);
      answerPieces.add(piece);
    } else if (answerPieces.contains(piece)) {
      answerPieces.remove(piece);
      answer.add(piece);
    }
  }

  bool isAnswerCorrect() {
    return const ListEquality().equals(answer, correctOrder);
  }
}
