import 'package:dartz/dartz.dart';
import 'package:plan_manager/core/error/failure.dart';
import 'package:plan_manager/core/usecase/base_usecase.dart';
import 'package:plan_manager/my_plan/domain/entities/plan_entites.dart';
import 'package:plan_manager/my_plan/domain/repositories/plan_repository_imp.dart';

class DeleteAllTaskUsecase
    extends BaseUseCase<List<TaskEntites>, NoParameters> {
  final BaseTaskRepositoryImp repository;

  DeleteAllTaskUsecase(this.repository);

  @override
  Future<Either<Failure, List<TaskEntites>>> call(NoParameters p) async {
    return await repository.deleteAllTasks();
  }
}