import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/color_outlet.dart';
import '../theme/font_family_outlet.dart';
import '../theme/size_outlet.dart';

alertDialogPattern(context, String title, String content,
    {bool? exitMode = false, bool confirmMode = false, ValueNotifier<bool>? isConfirmed}) {
  return showGeneralDialog(
    context: context,
    pageBuilder: (context, animation, secondaryAnimation) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;
      final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(
        position: animation.drive(tween),
        child: AlertDialog(
          backgroundColor: ColorOutlet.colorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeOutlet.borderRadiusSizeMedium),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: FontFamilyOutlet.defaultFontFamilyMedium,
            ),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content,
                style: const TextStyle(
                  fontFamily: FontFamilyOutlet.defaultFontFamilyRegular,
                ),
              ),
            ],
          ),
          actions: [
            Visibility(
              visible: !confirmMode,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancelar',
                  style: TextStyle(
                    color: ColorOutlet.colorPrimary,
                    fontFamily: FontFamilyOutlet.defaultFontFamilyMedium,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: !confirmMode,
              child: TextButton(
                onPressed: () async {
                  exitMode! ? SystemNavigator.pop() : null;
                  isConfirmed != null ? isConfirmed.value = true : null;
                },
                child: const Text(
                  'Confirmar',
                  style: TextStyle(
                    color: ColorOutlet.colorPrimary,
                    fontFamily: FontFamilyOutlet.defaultFontFamilyMedium,
                  ),
                ),
              ),
            ),
            Visibility(
              visible: confirmMode,
              child: TextButton(
                onPressed: () async {
                  exitMode! ? SystemNavigator.pop() : null;
                  Navigator.pop(context);
                },
                child: const Text(
                  'OK',
                  style: TextStyle(
                    color: ColorOutlet.colorPrimary,
                    fontFamily: FontFamilyOutlet.defaultFontFamilyMedium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}