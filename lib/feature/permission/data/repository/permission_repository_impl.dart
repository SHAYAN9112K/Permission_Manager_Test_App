import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sample_app/core/enums/permission_type_enum.dart';
import 'package:sample_app/core/failure/failure.dart';
import 'package:sample_app/core/type_def/type_def.dart';
import 'package:sample_app/core/utils/device_info.dart';
import 'package:sample_app/feature/permission/domain/permission_repository.dart';
import 'package:sample_app/feature/permission/models/permission_model.dart';
import 'package:sample_app/feature/permission/presentation/utils/map_permission_status.dart';

final class PermissionRepository implements IPermissionRepository {
  // final Permission permission;

  PermissionRepository();

  @override
  ResultFuture<List<PermissionModel>> checkPermission() async {
    try {
      PermissionStatus cameraStatus = await Permission.camera.status;
      PermissionStatus storageStatus = await Permission.storage.status;
      PermissionStatus microphoneStatus = await Permission.microphone.status;
      PermissionStatus notificationStatus =
          await Permission.notification.status;

      final List<PermissionModel> listOfPermissions = [
        PermissionModel(
            status: mapPermissionStatus(cameraStatus),
            type: PermissionType.camera),
        PermissionModel(
            status: mapPermissionStatus(storageStatus),
            type: PermissionType.storage),
        PermissionModel(
            status: mapPermissionStatus(microphoneStatus),
            type: PermissionType.microphone),
        PermissionModel(
            status: mapPermissionStatus(notificationStatus),
            type: PermissionType.notification),
      ];

      return right(listOfPermissions);
    } catch (e) {
      return const Left(
          Failure.permissionError(message: "Error while getting permission"));
    }
  }

  @override
  ResultFuture<PermissionStatus> requestPermission(
      PermissionType permission) async {
    try {
      late PermissionStatus status;
      switch (permission) {
        case PermissionType.camera:
          status = await askForPermissionIfDenied(Permission.camera);
          break;
        case PermissionType.storage:

          /// check if android version is 13 or greater than 13
          /// then we have to take we have to photos,videos permission instead of storage
          if (await AndroidVersionChecker.getAndroidSdkVersion() != -1 &&
              await AndroidVersionChecker.getAndroidSdkVersion() <= 32) {
            status = await askForPermissionIfDenied(Permission.storage);
          } else {
            status = await Permission.photos.request();
          }
          break;
        case PermissionType.microphone:
          status = await askForPermissionIfDenied(Permission.microphone);
          break;
        case PermissionType.notification:
          status = await askForPermissionIfDenied(Permission.notification);
          break;
        default:
          status = PermissionStatus.denied;
      }

      // Check if permission is permanently denied
      if (status.isPermanentlyDenied) {
        // Navigate user to app settings
        await openAppSettings();
      }

      return right(status);
    } catch (e) {
      return const Left(
          Failure.permissionError(message: "Error while getting permission"));
    }
  }

  Future<PermissionStatus> askForPermissionIfDenied(
      Permission permission) async {
    PermissionStatus status = await permission.status;
    if (status.isDenied || status.isRestricted || status.isPermanentlyDenied) {
      // If the permission is denied, restricted, or permanently denied, request it

      status = await permission.request();

      return status;
    } else if (status.isPermanentlyDenied) {
      // If the permission is permanently denied, open app settings
      await openAppSettings();
      status = await permission.status;
      return status;
    } else {
      // If the permission is already granted, return the current status
      return status;
    }
  }
}
