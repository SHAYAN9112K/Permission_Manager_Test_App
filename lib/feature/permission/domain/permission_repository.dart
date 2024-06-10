import 'package:permission_handler/permission_handler.dart';
import 'package:sample_app/core/type_def/type_def.dart';
import 'package:sample_app/feature/permission/models/permission_model.dart';

import '../../../core/enums/permission_type_enum.dart';

abstract class IPermissionRepository {
  ResultFuture<PermissionStatus> requestPermission(PermissionType permission);
  ResultFuture<List<PermissionModel>> checkPermission();
}
