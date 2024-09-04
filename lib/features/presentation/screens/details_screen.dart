import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:lottie/lottie.dart';

import '../../../core/controllers/pokedex_controller.dart';
import '../../../core/presenters/functions/functions.dart';
import '../../../core/presenters/theme/color_outlet.dart';
import '../../../core/presenters/theme/font_family_outlet.dart';
import '../../../core/presenters/theme/size_outlet.dart';
import '../widgets/pokedex_aba_select_widget.dart';
import '../widgets/pokedex_aba_stats_widget.dart';

class DetailsScreen extends StatefulWidget {
  final controller = GetIt.instance<PokedexController>();
  final pageController = GetIt.instance<PageController>();

   DetailsScreen({
    super.key,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.pageController.hasClients) {
        widget.pageController.jumpToPage(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final pokemon = widget.controller.pokemon;
        return Container(
          color: Functions.colorCard(pokemon.color),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.58,
                decoration: const BoxDecoration(
                  color: ColorOutlet.colorWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(SizeOutlet.borderRadiusizeHuge),
                    topRight: Radius.circular(SizeOutlet.borderRadiusizeHuge),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.11,
                child: Hero(
                  transitionOnUserGestures: true,
                  tag: 'pokemon-${pokemon.name}',
                  child: SvgPicture.network(
                    pokemon.sprite,
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.3,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.3,
                    placeholderBuilder: (context) =>
                        Center(
                          child: Lottie.asset(
                            'assets/lottie/pokeball_loading.json',
                            width: SizeOutlet.imageSizeLarge,
                            height: SizeOutlet.imageSizeLarge,
                          ),
                        ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.025,
                child: SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.9,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: ColorOutlet.colorWhite,
                          size: SizeOutlet.iconSizeMedium,
                        ),
                        onPressed: () {
                            Navigator.pop(context);
                        }
                      ),
                      Text(
                        Functions.upperCaseFirstLetter(pokemon.name),
                        style: const TextStyle(
                          fontSize: SizeOutlet.textSizeDefault,
                          fontFamily: FontFamilyOutlet.defaultFontFamilyMedium,
                          color: ColorOutlet.colorWhite,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height * 0.43,
                child: Column(
                  children: [
                    PokedexSelectAba(controller: widget.controller),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: SizeOutlet.paddingSizeLarge),
                      child: SizedBox(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 0.45,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.9,
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: widget.controller.pageControllerPokedex,
                          children: [
                            PokedexAbaStats(controller: widget.controller),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}