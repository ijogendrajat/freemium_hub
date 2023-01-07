import 'package:flutter/material.dart';
import 'package:freemium_hub/styles/colors.dart';

Future<void> setWallpaperDialogBox(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        title: const Text(
          'Set As Wallpaper',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          Container(
            height: 3,
            width: 3,
            decoration: BoxDecoration(
              color: DarkThemeColors.selectedIconColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 10),
          SimpleDialogOption(
            child: InkWell(
              child: Row(
                children: const [
                  Icon(Icons.crop),
                  SizedBox(width: 10),
                  Text('Crop and Set'),
                ],
              ),
            ),
            onPressed: () {
              // code to crop and set wallpaper
            },
          ),
          const Divider(
            thickness: 1.5,
          ),
          SimpleDialogOption(
            child: InkWell(
              child: Row(
                children: const [
                  Icon(Icons.phone_android),
                  SizedBox(width: 10),
                  Text('Apply with other app'),
                ],
              ),
            ),
            onPressed: () {
              // code to apply wallpaper with other app
            },
          ),
        ],
      );
    },
  );
}
