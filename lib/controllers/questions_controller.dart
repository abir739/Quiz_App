import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
// GetX est un gestionnaire d'état pour Flutter qui offre une gestion d'état simple,
//  rapide et réactive pour vos applications.
//  Il offre des fonctionnalités telles que la gestion
// de l'état global, la gestion de la navigation, la gestion des dépendances, etc.

class questionController extends GetxController {
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => this._animation;

  @override
  void onInit(){
    super.onInit();
  }
}
