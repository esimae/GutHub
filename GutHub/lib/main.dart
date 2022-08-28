
import 'package:flutter/material.dart';
import 'package:cookbook/app.dart';
import 'package:cookbook/state_widget.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() {
  StateWidget stateWidget = new StateWidget(child:new RecipesApp());
  runApp(stateWidget);
}