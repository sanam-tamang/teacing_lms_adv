import 'package:dartz/dartz.dart';
import 'package:teaching_lms_adv/core/error/failure.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
