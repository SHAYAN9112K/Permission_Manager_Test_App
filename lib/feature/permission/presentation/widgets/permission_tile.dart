import 'package:flutter/material.dart';
import 'package:sample_app/core/extensions/text_theme_extension.dart';

class PermissionTile extends StatelessWidget {
  const PermissionTile({
    super.key,
    required this.title,
    required this.icon,
    required this.permissionStatus,
    required this.description,
    required this.callback,
  });
  final String title;
  final String description;
  final IconData icon;
  final String permissionStatus;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Icon(icon),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: context.textTheme.titleLarge,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 120,
                    child: Text(
                      description,
                      softWrap: true,
                      style: context.textTheme.bodyLarge,
                    ),
                  ),
                  Text(
                    permissionStatus,
                    style: context.textTheme.titleLarge?.copyWith(
                        color: permissionStatus == "Approved"
                            ? Colors.green
                            : Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
