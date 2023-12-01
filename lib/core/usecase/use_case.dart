// coverage:ignore-file
import 'package:dartz/dartz.dart';
import 'package:jasset/core/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParam {}