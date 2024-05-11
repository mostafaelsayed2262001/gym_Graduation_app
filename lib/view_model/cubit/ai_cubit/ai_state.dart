import 'package:flutter/cupertino.dart';

@immutable
abstract class AIState {}

class AIInitial extends AIState {}

class AILoader extends AIState {}
class AIGetData extends AIState {}
class AIError extends AIState {}

class AIVisiable extends AIState {}
