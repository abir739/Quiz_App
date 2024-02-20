import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:quiz_app/models/questions.dart';
// GetX est un gestionnaire d'état pour Flutter qui offre une gestion d'état simple,
//  rapide et réactive pour vos applications.
//  Il offre des fonctionnalités telles que la gestion
// de l'état global, la gestion de la navigation, la gestion des dépendances, etc.

class QuestionController extends GetxController
    // ignore: deprecated_member_use
    with
        SingleGetTickerProviderMixin {
  late AnimationController
      _animationController; // responsible for controlling the animation
  late Animation<double> _animation; // object that represents the animation

  Animation<double> get animation => _animation; 
  // Getter for accessing the animation
late PageController _pageController;
PageController get pageController => this._pageController;

  final List<QuestionModel> _questions =
      example_data //objects initialized from example_data
          .map(
            (question) => QuestionModel(
                id: question['id'],
                question: question['question'],
                options: question['options'],
                answer: question['answer_index']),
          )
          .toList();
  

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  // for more about obs please check documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  List<QuestionModel> get questions =>
      _questions; //Getter for accessing the list of questions
  @override
  void onInit() {
    _animationController = AnimationController(
      //Initialize _animationController with a duration of 60 seconds
      duration: const Duration(seconds: 60),
      vsync: this, // Use the TickerProvider from the mixin
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
        _animationController) //Initialize _animation using Tween to animate values from 0 to 1 over the duration of _animationController
      ..addListener(() {
        update();
      });
    // Start the animation by calling _animationController.forward()
    _animationController.forward();
    super.onInit(); // Call super.onInit() to execute the superclass's initialization logic
    _pageController = PageController();
  }

  @override
  void onClose() {
    _animationController.dispose(); // Dispose of _animationController when the controller is closed.
    super.onClose(); // execute the superclass's cleanup logic
    _pageController.dispose();
  }

    void checkAns(QuestionModel question, int selectedIndex) {
    // because once user press any option then it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // It will stop the counter
    _animationController.stop();
    update();

    // Once user select an ans after 3s it will go to the next qn
    Future.delayed(Duration(seconds: 3), () {
      nextQuestion();
    });
  }

   void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once timer is finish go to the next qn
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provide us simple way to naviigate another page
      // Get.to(ScoreScreen());
    }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

}
