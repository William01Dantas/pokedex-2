import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/core/infra/api.dart';
import 'package:pokedex/core/infra/api_endpoints.dart';

void main() {
  group('Api', () {
    test('should return correct URL for each endpoint', () {
      expect(Api.getUrl(ApiEndpoint.pokemon),
          'https://pokeapi.co/api/v2/pokemon/');
      expect(Api.getUrl(ApiEndpoint.pokemonSpecies),
          'https://pokeapi.co/api/v2/pokemon-species/');
      expect(Api.getUrl(ApiEndpoint.pokemonColor),
          'https://pokeapi.co/api/v2/pokemon-color/');
      expect(Api.getUrl(ApiEndpoint.pokemonForm),
          'https://pokeapi.co/api/v2/pokemon-form/');
      expect(Api.getUrl(ApiEndpoint.pokemonHabitat),
          'https://pokeapi.co/api/v2/pokemon-habitat/');
      expect(Api.getUrl(ApiEndpoint.pokemonShape),
          'https://pokeapi.co/api/v2/pokemon-shape/');
      expect(Api.getUrl(ApiEndpoint.pokemonType),
          'https://pokeapi.co/api/v2/type/');
      expect(Api.getUrl(ApiEndpoint.pokemonEggGroup),
          'https://pokeapi.co/api/v2/egg-group/');
      expect(Api.getUrl(ApiEndpoint.pokemonGrowthRate),
          'https://pokeapi.co/api/v2/growth-rate/');
      expect(Api.getUrl(ApiEndpoint.pokemonNature),
          'https://pokeapi.co/api/v2/nature/');
      expect(Api.getUrl(ApiEndpoint.pokemonMoveAilment),
          'https://pokeapi.co/api/v2/move-ailment/');
      expect(Api.getUrl(ApiEndpoint.pokemonMoveBattleStyle),
          'https://pokeapi.co/api/v2/move-battle-style/');
      expect(Api.getUrl(ApiEndpoint.pokemonMoveCategory),
          'https://pokeapi.co/api/v2/move-category/');
      expect(Api.getUrl(ApiEndpoint.pokemonMoveDamageClass),
          'https://pokeapi.co/api/v2/move-damage-class/');
      expect(Api.getUrl(ApiEndpoint.pokemonMoveLearnMethod),
          'https://pokeapi.co/api/v2/move-learn-method/');
      expect(Api.getUrl(ApiEndpoint.pokemonMoveTarget),
          'https://pokeapi.co/api/v2/move-target/');
      expect(Api.getUrl(ApiEndpoint.pokemonLocationArea),
          'https://pokeapi.co/api/v2/location-area/');
      expect(Api.getUrl(ApiEndpoint.pokemonLocation),
          'https://pokeapi.co/api/v2/location/');
      expect(Api.getUrl(ApiEndpoint.pokemonPalParkArea),
          'https://pokeapi.co/api/v2/pal-park-area/');
      expect(Api.getUrl(ApiEndpoint.pokemonRegion),
          'https://pokeapi.co/api/v2/region/');
      expect(Api.getUrl(ApiEndpoint.pokemonGeneration),
          'https://pokeapi.co/api/v2/generation/');
      expect(Api.getUrl(ApiEndpoint.pokemonVersion),
          'https://pokeapi.co/api/v2/version/');
      expect(Api.getUrl(ApiEndpoint.pokemonVersionGroup),
          'https://pokeapi.co/api/v2/version-group/');
      expect(Api.getUrl(ApiEndpoint.pokemonItem),
          'https://pokeapi.co/api/v2/item/');
      expect(Api.getUrl(ApiEndpoint.pokemonItemAttribute),
          'https://pokeapi.co/api/v2/item-attribute/');
      expect(Api.getUrl(ApiEndpoint.pokemonItemCategory),
          'https://pokeapi.co/api/v2/item-category/');
      expect(Api.getUrl(ApiEndpoint.pokemonItemFlingEffect),
          'https://pokeapi.co/api/v2/item-fling-effect/');
      expect(Api.getUrl(ApiEndpoint.pokemonItemPocket),
          'https://pokeapi.co/api/v2/item-pocket/');
      expect(Api.getUrl(ApiEndpoint.pokemonMachine),
          'https://pokeapi.co/api/v2/machine/');
      expect(Api.getUrl(ApiEndpoint.pokemonEncounterMethod),
          'https://pokeapi.co/api/v2/encounter-method/');
      expect(Api.getUrl(ApiEndpoint.ability),
          'https://pokeapi.co/api/v2/ability/');
    });
  });
}
