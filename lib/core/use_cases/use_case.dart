import 'package:dartz/dartz.dart';

import '../error/failure.dart';

abstract class UseCase<Type,Parm>{
  Future<Either<Failure,Type>> call([Parm parm]);
}
class NoParam{}