import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:pokedex/core/presenters/functions/functions.dart';
import 'package:pokedex/features/presentation/widgets/tag_widget.dart';

import '../../../core/presenters/theme/font_family_outlet.dart';
import '../../../core/presenters/theme/size_outlet.dart';
import '../data/models/pokemon_model.dart';

class CardPokemon extends StatefulWidget {
  final Function()? onTap;
  const CardPokemon({
    super.key,
    required this.pokemon,
    this.onTap,
  });

  final PokemonModel pokemon;

  @override
  State<CardPokemon> createState() => _CardPokemonState();
}

class _CardPokemonState extends State<CardPokemon> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: SizeOutlet.paddingSizeDefault),
      child: Observer(
        builder: (_) {
          return Container(
            decoration: BoxDecoration(
              color: Functions.colorCard(widget.pokemon.color),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Functions.colorCard(widget.pokemon.color),
                    Functions.colorCard(widget.pokemon.color),
                    Functions.colorCard(widget.pokemon.color).withOpacity(0.8),
                    Functions.colorCard(widget.pokemon.color).withOpacity(0.8),
                  ]),
              borderRadius: const BorderRadius.all(
                  Radius.circular(SizeOutlet.borderRadiusSizeNormal)),
            ),
            margin: const EdgeInsets.only(
                top: SizeOutlet.paddingSizeDefault,
                bottom: SizeOutlet.paddingSizeDefault),
            width: MediaQuery.of(context).size.width,
            height: 150,
            child: InkWell(
              onTap: widget.onTap,
              borderRadius: BorderRadius.circular(
                SizeOutlet.borderRadiusSizeNormal,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    left: MediaQuery.of(context).size.width * 0.8,
                    bottom: MediaQuery.of(context).size.height * 0.13,
                    child: Observer(builder: (context) {
                      return IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: Colors.red,
                        ),
                      );
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeOutlet.paddingSizeLarge,
                        vertical: SizeOutlet.paddingSizeMedium),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '#${widget.pokemon.id.toString().padLeft(3, '0')}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: SizeOutlet.textSizeMicro2,
                                fontFamily:
                                    FontFamilyOutlet.defaultFontFamilyRegular,
                              ),
                            ),
                            Text(
                              widget.pokemon.name[0].toUpperCase() +
                                  widget.pokemon.name.substring(1),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: SizeOutlet.textSizeSmall2,
                                fontFamily:
                                    FontFamilyOutlet.defaultFontFamilyMedium,
                              ),
                            ),
                            Row(
                              children: [
                                for (var type in widget.pokemon.types)
                                  TagWidget(text: type['type']['name'])
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    top: 0,
                    left: MediaQuery.of(context).size.width * 0.32,
                    child: Container(
                      constraints: const BoxConstraints(
                        maxHeight: SizeOutlet.imageSizeExtraLarge,
                        maxWidth: SizeOutlet.imageSizeExtraLarge,
                      ),
                      child: Hero(
                        transitionOnUserGestures: true,
                        tag: widget.pokemon.name,
                        child: SvgPicture.network(
                          widget.pokemon.sprite,
                          placeholderBuilder: (context) => Center(
                            child: Lottie.asset(
                              'assets/lottie/pokeball_loading.json',
                              width: SizeOutlet.imageSizeLarge,
                              height: SizeOutlet.imageSizeLarge,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
