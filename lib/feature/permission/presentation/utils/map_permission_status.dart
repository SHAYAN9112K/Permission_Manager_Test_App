import 'package:permission_handler/permission_handler.dart';

String mapPermissionStatus(PermissionStatus status) {
  switch (status) {
    case PermissionStatus.granted:
    case PermissionStatus.limited:
      return "Approved";
    case PermissionStatus.denied:
    case PermissionStatus.permanentlyDenied:
    case PermissionStatus.restricted:
    default:
      return "Missing";
  }
}
