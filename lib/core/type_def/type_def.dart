import 'package:dartz/dartz.dart';
import 'package:sample_app/core/failure/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef ResultVoid = Future<Either<Failure, void>>;
