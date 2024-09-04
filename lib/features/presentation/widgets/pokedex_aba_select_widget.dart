import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex/features/presentation/widgets/toggle_option_widget.dart';

import '../../../../core/presenters/functions/functions.dart';
import '../../../core/controllers/pokedex_controller.dart';


class PokedexSelectAba extends StatelessWidget {
  final PokedexController controller;
  const PokedexSelectAba({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Observer(
        builder: (_) => ListView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: [
            ToggleOptionText(
              title: 'Stats',
              isSelected: controller.basePageIndexPokedex == 1,
              onTap: () {
                controller.setBasePageIndex(1);
                controller.pageControllerPokedex.jumpToPage(1);
              },
              color: Functions.colorCard(controller.pokemon.color),
            ),
          ],
        ),
      ),
    );
  }
}
