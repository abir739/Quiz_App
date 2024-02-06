import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_ticket_provider_mixin.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:quiz_app/models/questions.dart';
// GetX est un gestionnaire d'état pour Flutter qui offre une gestion d'état simple,
//  rapide et réactive pour vos applications.
//  Il offre des fonctionnalités telles que la gestion
// de l'état global, la gestion de la navigation, la gestion des dépendances, etc.

class QuestionController extends GetxController
    // ignore: deprecated_member_use
    with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  Animation<double> get animation => _animation;

  final List<QuestionModel> _questions = sample_data
      .map(
        (question) => QuestionModel(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index']),
      )
      .toList();

   List<QuestionModel> get questions => _questions;
  @override
  void onInit() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 60),
      vsync: this, // Use the TickerProvider from the mixin
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });
    // start the animation
    _animationController.forward();
    super.onInit();
  }

  @override
  void onClose() {
    _animationController
        .dispose(); // Dispose the controller when the controller is closed.
    super.onClose();
  }
}
