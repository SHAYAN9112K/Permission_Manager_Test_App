import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_app/core/enums/permission_type_enum.dart';
import 'package:sample_app/core/extensions/text_theme_extension.dart';
import 'package:sample_app/feature/permission/presentation/bloc/permission_bloc.dart';
import 'package:sample_app/feature/permission/presentation/bloc/permission_event.dart';
import 'package:sample_app/feature/permission/presentation/bloc/permission_state.dart';
import 'package:sample_app/feature/permission/presentation/utils/permission_tile_data.dart';

import '../../../injection_container.dart';
import '../../models/permission_model.dart';
import '../widgets/permission_tile.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pBloc = context.read<PermissionBloc>();
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Text(
                "Permissions",
                textAlign: TextAlign.center,
                style: context.textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "Permission missing",
                          textAlign: TextAlign.center,
                          style: context.textTheme.titleLarge,
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 15),
                      child: Text(
                        "The app requires various permissions so that you can make calls with Takila without any worries.",
                        textAlign: TextAlign.start,
                        style: context.textTheme.bodyLarge,
                      ),
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Name",
                            style: context.textTheme.bodyLarge,
                          ),
                          Text(
                            "Status",
                            style: context.textTheme.bodyLarge,
                          )
                        ],
                      ),
                    ),
                    BlocBuilder<PermissionBloc, PermissionState>(
                      builder: (context, state) {
                        return state.when(
                            initial: () => buildPermissionTiles(pBloc),
                            error: (e) => buildPermissionTiles(pBloc),
                            loaded: (permissions) =>
                                buildPermissionTiles(pBloc, permissions));
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Column buildPermissionTiles(PermissionBloc pBloc,
      [List<PermissionModel>? permissionList]) {
    return Column(
      children: List.generate(
        permissionList?.length ?? permissionTileData.length,
        (index) => PermissionTile(
          title: permissionTileData[index].title,
          description: permissionTileData[index].description,
          icon: permissionTileData[index].icon,
          permissionStatus: permissionList != null
              ? permissionList[index].status.toString()
              : "Missing",
          callback: () {
            _onPermissionRequest(PermissionType.values.elementAt(index),
                permissionList ?? [], pBloc);
          },
        ),
      ),
    );
  }

  void _onPermissionRequest(PermissionType type,
      List<PermissionModel> permissions, PermissionBloc pBloc) {
    pBloc.add(PermissionEvent.requestPermission(permissions, type));
  }
}
