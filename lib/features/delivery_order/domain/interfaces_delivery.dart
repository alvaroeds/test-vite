import 'package:dartz/dartz.dart';

typedef IGetCurrentUrl = String Function(String idUrl);

typedef ILaunchOrderUrl = Future<Either<Unit, Unit>> Function(String url);
