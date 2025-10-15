// ignore_for_file: avoid_types_as_parameter_names

import 'package:cash_flow/core/either/either.dart';
import 'package:cash_flow/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Class to handle when useCase don't need params
class NoParams {}
