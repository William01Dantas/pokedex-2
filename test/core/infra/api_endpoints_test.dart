import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/core/infra/api_endpoints.dart';

void main() {
  group('ApiEndpoint', () {
    test('should return correct name for each endpoint', () {
      expect(ApiEndpoint.pokemon.name, 'pokemon');
      expect(ApiEndpoint.pokemonSpecies.name, 'pokemon-species');
      expect(ApiEndpoint.pokemonColor.name, 'pokemon-color');
      expect(ApiEndpoint.pokemonForm.name, 'pokemon-form');
      expect(ApiEndpoint.pokemonHabitat.name, 'pokemon-habitat');
      expect(ApiEndpoint.pokemonShape.name, 'pokemon-shape');
      expect(ApiEndpoint.pokemonType.name, 'type');
      expect(ApiEndpoint.pokemonEggGroup.name, 'egg-group');
      expect(ApiEndpoint.pokemonGrowthRate.name, 'growth-rate');
      expect(ApiEndpoint.pokemonNature.name, 'nature');
      expect(ApiEndpoint.pokemonMoveAilment.name, 'move-ailment');
      expect(ApiEndpoint.pokemonMoveBattleStyle.name, 'move-battle-style');
      expect(ApiEndpoint.pokemonMoveCategory.name, 'move-category');
      expect(ApiEndpoint.pokemonMoveDamageClass.name, 'move-damage-class');
      expect(ApiEndpoint.pokemonMoveLearnMethod.name, 'move-learn-method');
      expect(ApiEndpoint.pokemonMoveTarget.name, 'move-target');
      expect(ApiEndpoint.pokemonLocationArea.name, 'location-area');
      expect(ApiEndpoint.pokemonLocation.name, 'location');
      expect(ApiEndpoint.pokemonPalParkArea.name, 'pal-park-area');
      expect(ApiEndpoint.pokemonRegion.name, 'region');
      expect(ApiEndpoint.pokemonGeneration.name, 'generation');
      expect(ApiEndpoint.pokemonVersion.name, 'version');
      expect(ApiEndpoint.pokemonVersionGroup.name, 'version-group');
      expect(ApiEndpoint.pokemonItem.name, 'item');
      expect(ApiEndpoint.pokemonItemAttribute.name, 'item-attribute');
      expect(ApiEndpoint.pokemonItemCategory.name, 'item-category');
      expect(ApiEndpoint.pokemonItemFlingEffect.name, 'item-fling-effect');
      expect(ApiEndpoint.pokemonItemPocket.name, 'item-pocket');
      expect(ApiEndpoint.pokemonMachine.name, 'machine');
      expect(ApiEndpoint.pokemonEncounterMethod.name, 'encounter-method');
      expect(ApiEndpoint.ability.name, 'ability');
    });

    test('should cover all endpoints in the extension', () {
      const allEndpoints = ApiEndpoint.values;
      final names = allEndpoints.map((e) => e.name).toList();
      final expectedNames = [
        'pokemon',
        'pokemon-species',
        'pokemon-color',
        'pokemon-form',
        'pokemon-habitat',
        'pokemon-shape',
        'type',
        'egg-group',
        'growth-rate',
        'nature',
        'move-ailment',
        'move-battle-style',
        'move-category',
        'move-damage-class',
        'move-learn-method',
        'move-target',
        'location-area',
        'location',
        'pal-park-area',
        'region',
        'generation',
        'version',
        'version-group',
        'item',
        'item-attribute',
        'item-category',
        'item-fling-effect',
        'item-pocket',
        'machine',
        'encounter-method',
        'ability'
      ];
      expect(names, expectedNames);
    });
  });
}
