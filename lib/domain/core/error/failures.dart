// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

// General failures
class ServerFailure extends Failure {}

class TimeoutFailure extends Failure {
  final String errorMessage;

  TimeoutFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}

class APIServiceFailure extends Failure {
  final String errorMessage;

  APIServiceFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}

class DatabaseFailure extends Failure {
  final String errorMessage;

  DatabaseFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}

class DatabaseNotFound extends Failure {}

class InternetFailure extends Failure {}
