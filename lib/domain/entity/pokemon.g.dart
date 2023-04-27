// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pokemon _$PokemonFromJson(Map<String, dynamic> json) => Pokemon(
      id: json['id'] as int?,
      name: json['name'] as String,
      baseExperience: json['base_experience'] as int?,
      height: json['height'] as int?,
      isDefault: json['is_default'] as bool,
      order: json['order'] as int?,
      weight: json['weight'] as int?,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => Abilitie.fromJson(e as Map<String, dynamic>))
          .toList(),
      forms: (json['forms'] as List<dynamic>)
          .map((e) => Form.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['game_indices'] as List<dynamic>)
          .map((e) => GameIndice.fromJson(e as Map<String, dynamic>))
          .toList(),
      heldItems: (json['held_items'] as List<dynamic>)
          .map((e) => HeldItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      locationAreaEncounters: json['location_area_encounters'] as String?,
      moves: (json['moves'] as List<dynamic>)
          .map((e) => Moves.fromJson(e as Map<String, dynamic>))
          .toList(),
      species: Species.fromJson(json['species'] as Map<String, dynamic>),
      sprites: Sprites.fromJson(json['sprites'] as Map<String, dynamic>),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => Stats.fromJson(e as Map<String, dynamic>))
          .toList(),
      types: (json['types'] as List<dynamic>)
          .map((e) => Types.fromJson(e as Map<String, dynamic>))
          .toList(),
      pastTypes: (json['past_types'] as List<dynamic>)
          .map((e) => PastType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonToJson(Pokemon instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'base_experience': instance.baseExperience,
      'height': instance.height,
      'is_default': instance.isDefault,
      'order': instance.order,
      'weight': instance.weight,
      'abilities': instance.abilities.map((e) => e.toJson()).toList(),
      'forms': instance.forms.map((e) => e.toJson()).toList(),
      'game_indices': instance.gameIndices.map((e) => e.toJson()).toList(),
      'held_items': instance.heldItems.map((e) => e.toJson()).toList(),
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves.map((e) => e.toJson()).toList(),
      'species': instance.species.toJson(),
      'sprites': instance.sprites.toJson(),
      'stats': instance.stats.map((e) => e.toJson()).toList(),
      'types': instance.types.map((e) => e.toJson()).toList(),
      'past_types': instance.pastTypes.map((e) => e.toJson()).toList(),
    };

Abilitie _$AbilitieFromJson(Map<String, dynamic> json) => Abilitie(
      isHidden: json['is_hidden'] as bool,
      slot: json['slot'] as int?,
      ability: Ability.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AbilitieToJson(Abilitie instance) => <String, dynamic>{
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
      'ability': instance.ability.toJson(),
    };

Ability _$AbilityFromJson(Map<String, dynamic> json) => Ability(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$AbilityToJson(Ability instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Form _$FormFromJson(Map<String, dynamic> json) => Form(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$FormToJson(Form instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

GameIndice _$GameIndiceFromJson(Map<String, dynamic> json) => GameIndice(
      gameIndex: json['game_index'] as int?,
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameIndiceToJson(GameIndice instance) =>
    <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.version.toJson(),
    };

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

HeldItem _$HeldItemFromJson(Map<String, dynamic> json) => HeldItem(
      item: Item.fromJson(json['item'] as Map<String, dynamic>),
      versionDetails: (json['version_details'] as List<dynamic>)
          .map((e) => VersionDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HeldItemToJson(HeldItem instance) => <String, dynamic>{
      'item': instance.item.toJson(),
      'version_details':
          instance.versionDetails.map((e) => e.toJson()).toList(),
    };

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionDetail _$VersionDetailFromJson(Map<String, dynamic> json) =>
    VersionDetail(
      rarity: json['rarity'] as int?,
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionDetailToJson(VersionDetail instance) =>
    <String, dynamic>{
      'rarity': instance.rarity,
      'version': instance.version.toJson(),
    };

Moves _$MovesFromJson(Map<String, dynamic> json) => Moves(
      move: Move.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>)
          .map((e) => VersionGroupDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovesToJson(Moves instance) => <String, dynamic>{
      'move': instance.move.toJson(),
      'version_group_details':
          instance.versionGroupDetails.map((e) => e.toJson()).toList(),
    };

Move _$MoveFromJson(Map<String, dynamic> json) => Move(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$MoveToJson(Move instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

VersionGroupDetail _$VersionGroupDetailFromJson(Map<String, dynamic> json) =>
    VersionGroupDetail(
      levelLearnedAt: json['level_learned_at'] as int?,
      versionGroup:
          VersionGroup.fromJson(json['version_group'] as Map<String, dynamic>),
      moveLearnMethod: MoveLearnMethod.fromJson(
          json['move_learn_method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionGroupDetailToJson(VersionGroupDetail instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'version_group': instance.versionGroup.toJson(),
      'move_learn_method': instance.moveLearnMethod.toJson(),
    };

VersionGroup _$VersionGroupFromJson(Map<String, dynamic> json) => VersionGroup(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$VersionGroupToJson(VersionGroup instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

MoveLearnMethod _$MoveLearnMethodFromJson(Map<String, dynamic> json) =>
    MoveLearnMethod(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$MoveLearnMethodToJson(MoveLearnMethod instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Species _$SpeciesFromJson(Map<String, dynamic> json) => Species(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$SpeciesToJson(Species instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Sprites _$SpritesFromJson(Map<String, dynamic> json) => Sprites(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
      other: Other.fromJson(json['other'] as Map<String, dynamic>),
      versions: Versions.fromJson(json['versions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpritesToJson(Sprites instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
      'other': instance.other.toJson(),
      'versions': instance.versions.toJson(),
    };

Other _$OtherFromJson(Map<String, dynamic> json) => Other(
      dreamWorld:
          DreamWorld.fromJson(json['dream_world'] as Map<String, dynamic>),
      home: Home.fromJson(json['home'] as Map<String, dynamic>),
      officialArtwork: OfficialArtwork.fromJson(
          json['official-artwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtherToJson(Other instance) => <String, dynamic>{
      'dream_world': instance.dreamWorld.toJson(),
      'home': instance.home.toJson(),
      'official-artwork': instance.officialArtwork.toJson(),
    };

DreamWorld _$DreamWorldFromJson(Map<String, dynamic> json) => DreamWorld(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
    );

Map<String, dynamic> _$DreamWorldToJson(DreamWorld instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
    };

Home _$HomeFromJson(Map<String, dynamic> json) => Home(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

OfficialArtwork _$OfficialArtworkFromJson(Map<String, dynamic> json) =>
    OfficialArtwork(
      frontDefault: json['front_default'] as String,
    );

Map<String, dynamic> _$OfficialArtworkToJson(OfficialArtwork instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
    };

Versions _$VersionsFromJson(Map<String, dynamic> json) => Versions(
      generationI:
          GenerationI.fromJson(json['generation-i'] as Map<String, dynamic>),
      generationII:
          GenerationII.fromJson(json['generation-ii'] as Map<String, dynamic>),
      generationIII: GenerationIII.fromJson(
          json['generation-iii'] as Map<String, dynamic>),
      generationIV:
          GenerationIV.fromJson(json['generation-iv'] as Map<String, dynamic>),
      generationV:
          GenerationV.fromJson(json['generation-v'] as Map<String, dynamic>),
      generationVi:
          GenerationVI.fromJson(json['generation-vi'] as Map<String, dynamic>),
      generationVii: GenerationVII.fromJson(
          json['generation-vii'] as Map<String, dynamic>),
      generationViii: GenerationVIII.fromJson(
          json['generation-viii'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionsToJson(Versions instance) => <String, dynamic>{
      'generation-i': instance.generationI.toJson(),
      'generation-ii': instance.generationII.toJson(),
      'generation-iii': instance.generationIII.toJson(),
      'generation-iv': instance.generationIV.toJson(),
      'generation-v': instance.generationV.toJson(),
      'generation-vi': instance.generationVi.toJson(),
      'generation-vii': instance.generationVii.toJson(),
      'generation-viii': instance.generationViii.toJson(),
    };

GenerationI _$GenerationIFromJson(Map<String, dynamic> json) => GenerationI(
      redBlue: RedBlue.fromJson(json['red-blue'] as Map<String, dynamic>),
      yellow: Yellow.fromJson(json['yellow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIToJson(GenerationI instance) =>
    <String, dynamic>{
      'red-blue': instance.redBlue.toJson(),
      'yellow': instance.yellow.toJson(),
    };

RedBlue _$RedBlueFromJson(Map<String, dynamic> json) => RedBlue(
      backDefault: json['back_default'] as String?,
      backGray: json['back_gray'] as String?,
      frontDefault: json['front_default'] as String?,
      frontGray: json['front_gray'] as String?,
    );

Map<String, dynamic> _$RedBlueToJson(RedBlue instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_gray': instance.backGray,
      'front_default': instance.frontDefault,
      'front_gray': instance.frontGray,
    };

Yellow _$YellowFromJson(Map<String, dynamic> json) => Yellow(
      backDefault: json['back_default'] as String?,
      backGray: json['back_gray'] as String?,
      frontDefault: json['front_default'] as String?,
      frontGray: json['front_gray'] as String?,
    );

Map<String, dynamic> _$YellowToJson(Yellow instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_gray': instance.backGray,
      'front_default': instance.frontDefault,
      'front_gray': instance.frontGray,
    };

GenerationII _$GenerationIIFromJson(Map<String, dynamic> json) => GenerationII(
      crystal: Crystal.fromJson(json['crystal'] as Map<String, dynamic>),
      gold: Gold.fromJson(json['gold'] as Map<String, dynamic>),
      silver: Silver.fromJson(json['silver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIIToJson(GenerationII instance) =>
    <String, dynamic>{
      'crystal': instance.crystal.toJson(),
      'gold': instance.gold.toJson(),
      'silver': instance.silver.toJson(),
    };

Crystal _$CrystalFromJson(Map<String, dynamic> json) => Crystal(
      backDefault: json['back_default'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

Map<String, dynamic> _$CrystalToJson(Crystal instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

Gold _$GoldFromJson(Map<String, dynamic> json) => Gold(
      backDefault: json['back_default'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

Map<String, dynamic> _$GoldToJson(Gold instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

Silver _$SilverFromJson(Map<String, dynamic> json) => Silver(
      backDefault: json['back_default'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

Map<String, dynamic> _$SilverToJson(Silver instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

GenerationIII _$GenerationIIIFromJson(Map<String, dynamic> json) =>
    GenerationIII(
      emerald: Emerald.fromJson(json['emerald'] as Map<String, dynamic>),
      fireredLeafgreen: FireredLeafgreen.fromJson(
          json['firered-leafgreen'] as Map<String, dynamic>),
      rubySapphire:
          RubySapphire.fromJson(json['ruby-sapphire'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIIIToJson(GenerationIII instance) =>
    <String, dynamic>{
      'emerald': instance.emerald.toJson(),
      'firered-leafgreen': instance.fireredLeafgreen.toJson(),
      'ruby-sapphire': instance.rubySapphire.toJson(),
    };

Emerald _$EmeraldFromJson(Map<String, dynamic> json) => Emerald(
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

Map<String, dynamic> _$EmeraldToJson(Emerald instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

FireredLeafgreen _$FireredLeafgreenFromJson(Map<String, dynamic> json) =>
    FireredLeafgreen(
      backDefault: json['back_default'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

Map<String, dynamic> _$FireredLeafgreenToJson(FireredLeafgreen instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

RubySapphire _$RubySapphireFromJson(Map<String, dynamic> json) => RubySapphire(
      backDefault: json['back_default'] as String?,
      backShiny: json['back_shiny'] as String?,
      frontDefault: json['front_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
    );

Map<String, dynamic> _$RubySapphireToJson(RubySapphire instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_shiny': instance.backShiny,
      'front_default': instance.frontDefault,
      'front_shiny': instance.frontShiny,
    };

GenerationIV _$GenerationIVFromJson(Map<String, dynamic> json) => GenerationIV(
      diamondPearl:
          DiamondPearl.fromJson(json['diamond-pearl'] as Map<String, dynamic>),
      heartgoldSoulsilver: HeartgoldSoulsilver.fromJson(
          json['heartgold-soulsilver'] as Map<String, dynamic>),
      platinum: Platinum.fromJson(json['platinum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationIVToJson(GenerationIV instance) =>
    <String, dynamic>{
      'diamond-pearl': instance.diamondPearl.toJson(),
      'heartgold-soulsilver': instance.heartgoldSoulsilver.toJson(),
      'platinum': instance.platinum.toJson(),
    };

DiamondPearl _$DiamondPearlFromJson(Map<String, dynamic> json) => DiamondPearl(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$DiamondPearlToJson(DiamondPearl instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

HeartgoldSoulsilver _$HeartgoldSoulsilverFromJson(Map<String, dynamic> json) =>
    HeartgoldSoulsilver(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$HeartgoldSoulsilverToJson(
        HeartgoldSoulsilver instance) =>
    <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

Platinum _$PlatinumFromJson(Map<String, dynamic> json) => Platinum(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$PlatinumToJson(Platinum instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

GenerationV _$GenerationVFromJson(Map<String, dynamic> json) => GenerationV(
      blackWhite:
          BlackWhite.fromJson(json['black-white'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationVToJson(GenerationV instance) =>
    <String, dynamic>{
      'black-white': instance.blackWhite.toJson(),
    };

BlackWhite _$BlackWhiteFromJson(Map<String, dynamic> json) => BlackWhite(
      animated: Animated.fromJson(json['animated'] as Map<String, dynamic>),
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$BlackWhiteToJson(BlackWhite instance) =>
    <String, dynamic>{
      'animated': instance.animated.toJson(),
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

Animated _$AnimatedFromJson(Map<String, dynamic> json) => Animated(
      backDefault: json['back_default'] as String?,
      backFemale: json['back_female'] as String?,
      backShiny: json['back_shiny'] as String?,
      backShinyFemale: json['back_shiny_female'] as String?,
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$AnimatedToJson(Animated instance) => <String, dynamic>{
      'back_default': instance.backDefault,
      'back_female': instance.backFemale,
      'back_shiny': instance.backShiny,
      'back_shiny_female': instance.backShinyFemale,
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

GenerationVI _$GenerationVIFromJson(Map<String, dynamic> json) => GenerationVI(
      omegarubyAlphasapphire: OmegarubyAlphasapphire.fromJson(
          json['omegaruby-alphasapphire'] as Map<String, dynamic>),
      xY: XY.fromJson(json['x-y'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationVIToJson(GenerationVI instance) =>
    <String, dynamic>{
      'omegaruby-alphasapphire': instance.omegarubyAlphasapphire.toJson(),
      'x-y': instance.xY.toJson(),
    };

OmegarubyAlphasapphire _$OmegarubyAlphasapphireFromJson(
        Map<String, dynamic> json) =>
    OmegarubyAlphasapphire(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$OmegarubyAlphasapphireToJson(
        OmegarubyAlphasapphire instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

XY _$XYFromJson(Map<String, dynamic> json) => XY(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$XYToJson(XY instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

GenerationVII _$GenerationVIIFromJson(Map<String, dynamic> json) =>
    GenerationVII(
      icons: Icons.fromJson(json['icons'] as Map<String, dynamic>),
      ultraSunUltraMoon: UltraSunUltraMoon.fromJson(
          json['ultra-sun-ultra-moon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationVIIToJson(GenerationVII instance) =>
    <String, dynamic>{
      'icons': instance.icons.toJson(),
      'ultra-sun-ultra-moon': instance.ultraSunUltraMoon.toJson(),
    };

Icons _$IconsFromJson(Map<String, dynamic> json) => Icons(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
    );

Map<String, dynamic> _$IconsToJson(Icons instance) => <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
    };

UltraSunUltraMoon _$UltraSunUltraMoonFromJson(Map<String, dynamic> json) =>
    UltraSunUltraMoon(
      frontDefault: json['front_default'] as String?,
      frontFemale: json['front_female'] as String?,
      frontShiny: json['front_shiny'] as String?,
      frontShinyFemale: json['front_shiny_female'] as String?,
    );

Map<String, dynamic> _$UltraSunUltraMoonToJson(UltraSunUltraMoon instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'front_female': instance.frontFemale,
      'front_shiny': instance.frontShiny,
      'front_shiny_female': instance.frontShinyFemale,
    };

GenerationVIII _$GenerationVIIIFromJson(Map<String, dynamic> json) =>
    GenerationVIII(
      icons: Icons.fromJson(json['icons'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GenerationVIIIToJson(GenerationVIII instance) =>
    <String, dynamic>{
      'icons': instance.icons.toJson(),
    };

Stats _$StatsFromJson(Map<String, dynamic> json) => Stats(
      baseStat: json['base_stat'] as int?,
      effort: json['effort'] as int?,
      stat: Stat.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat.toJson(),
    };

Stat _$StatFromJson(Map<String, dynamic> json) => Stat(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$StatToJson(Stat instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

Types _$TypesFromJson(Map<String, dynamic> json) => Types(
      slot: json['slot'] as int?,
      type: Type.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypesToJson(Types instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type.toJson(),
    };

Type _$TypeFromJson(Map<String, dynamic> json) => Type(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TypeToJson(Type instance) => <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

PastType _$PastTypeFromJson(Map<String, dynamic> json) => PastType(
      generation:
          Generation.fromJson(json['generation'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>)
          .map((e) => Type.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PastTypeToJson(PastType instance) => <String, dynamic>{
      'generation': instance.generation.toJson(),
      'types': instance.types.map((e) => e.toJson()).toList(),
    };

Generation _$GenerationFromJson(Map<String, dynamic> json) => Generation(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$GenerationToJson(Generation instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };
