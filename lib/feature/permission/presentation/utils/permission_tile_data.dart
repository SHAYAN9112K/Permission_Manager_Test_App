import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<PermissionTileData> permissionTileData = [
  PermissionTileData(
      title: "Camera",
      description: "Require so that you can make video call with the app",
      icon: Icons.camera,
      status: "Missing"),
  PermissionTileData(
      title: "Filesystem",
      description:
          "Require so that you can add profile photos from your file system",
      icon: Icons.menu,
      status: "Missing"),
  PermissionTileData(
      title: "Microphone",
      description: "Require to talk with Talkila",
      icon: Icons.mic,
      status: "Missing"),
  PermissionTileData(
      title: "Notifications",
      description: "Require to receive notifications from Talkila",
      icon: Icons.notifications,
      status: "Missing"),
];

final class PermissionTileData {
  final String title;
  final String description;
  final IconData icon;
  final String status;

  PermissionTileData(
      {required this.title,
      required this.description,
      required this.icon,
      required this.status});
}
