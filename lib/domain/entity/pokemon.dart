import 'package:json_annotation/json_annotation.dart';

part 'pokemon.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Pokemon {
  final int? id;
  final String name;
  final int? baseExperience;
  final int? height;
  final bool isDefault;
  final int? order;
  final int? weight;
  final List<Abilitie> abilities;
  final List<Form> forms;
  final List<GameIndice> gameIndices;
  final List<HeldItem> heldItems;
  final String? locationAreaEncounters;
  final List<Moves> moves;
  final Species species;
  final Sprites sprites;
  final List<Stats> stats;
  final List<Types> types;
  final List<PastType> pastTypes;
  Pokemon({
    required this.id,
    required this.name,
    required this.baseExperience,
    required this.height,
    required this.isDefault,
    required this.order,
    required this.weight,
    required this.abilities,
    required this.forms,
    required this.gameIndices,
    required this.heldItems,
    required this.locationAreaEncounters,
    required this.moves,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.pastTypes,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Abilitie {
  final bool isHidden;
  final int? slot;
  final Ability ability;
  Abilitie({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  factory Abilitie.fromJson(Map<String, dynamic> json) =>
      _$AbilitieFromJson(json);
  Map<String, dynamic> toJson() => _$AbilitieToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Ability {
  final String? name;
  final String? url;
  Ability({
    required this.name,
    required this.url,
  });

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
  Map<String, dynamic> toJson() => _$AbilityToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Form {
  final String name;
  final String url;
  Form({
    required this.name,
    required this.url,
  });

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);
  Map<String, dynamic> toJson() => _$FormToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GameIndice {
  final int? gameIndex;
  final Version version;
  GameIndice({
    required this.gameIndex,
    required this.version,
  });

  factory GameIndice.fromJson(Map<String, dynamic> json) =>
      _$GameIndiceFromJson(json);
  Map<String, dynamic> toJson() => _$GameIndiceToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Version {
  final String name;
  final String url;
  Version({
    required this.name,
    required this.url,
  });

  factory Version.fromJson(Map<String, dynamic> json) =>
      _$VersionFromJson(json);
  Map<String, dynamic> toJson() => _$VersionToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class HeldItem {
  final Item item;
  final List<VersionDetail> versionDetails;
  HeldItem({
    required this.item,
    required this.versionDetails,
  });

  factory HeldItem.fromJson(Map<String, dynamic> json) =>
      _$HeldItemFromJson(json);
  Map<String, dynamic> toJson() => _$HeldItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Item {
  final String name;
  final String url;
  Item({
    required this.name,
    required this.url,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class VersionDetail {
  final int? rarity;
  final Version version;
  VersionDetail({
    required this.rarity,
    required this.version,
  });

  factory VersionDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailFromJson(json);
  Map<String, dynamic> toJson() => _$VersionDetailToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Moves {
  final Move move;
  final List<VersionGroupDetail> versionGroupDetails;
  Moves({
    required this.move,
    required this.versionGroupDetails,
  });

  factory Moves.fromJson(Map<String, dynamic> json) => _$MovesFromJson(json);
  Map<String, dynamic> toJson() => _$MovesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Move {
  final String name;
  final String url;
  Move({
    required this.name,
    required this.url,
  });

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
  Map<String, dynamic> toJson() => _$MoveToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class VersionGroupDetail {
  final int? levelLearnedAt;
  final VersionGroup versionGroup;
  final MoveLearnMethod moveLearnMethod;
  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.versionGroup,
    required this.moveLearnMethod,
  });

  factory VersionGroupDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailFromJson(json);
  Map<String, dynamic> toJson() => _$VersionGroupDetailToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class VersionGroup {
  final String name;
  final String url;
  VersionGroup({
    required this.name,
    required this.url,
  });

  factory VersionGroup.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupFromJson(json);
  Map<String, dynamic> toJson() => _$VersionGroupToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class MoveLearnMethod {
  final String name;
  final String url;
  MoveLearnMethod({
    required this.name,
    required this.url,
  });

  factory MoveLearnMethod.fromJson(Map<String, dynamic> json) =>
      _$MoveLearnMethodFromJson(json);
  Map<String, dynamic> toJson() => _$MoveLearnMethodToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Species {
  final String name;
  final String url;
  Species({
    required this.name,
    required this.url,
  });

  factory Species.fromJson(Map<String, dynamic> json) =>
      _$SpeciesFromJson(json);
  Map<String, dynamic> toJson() => _$SpeciesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Sprites {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  final Other other;
  final Versions versions;
  Sprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    required this.other,
    required this.versions,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
  Map<String, dynamic> toJson() => _$SpritesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Other {
  final DreamWorld dreamWorld;
  final Home home;
  @JsonKey(name: 'official-artwork')
  final OfficialArtwork officialArtwork;
  Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
  });

  factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);
  Map<String, dynamic> toJson() => _$OtherToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class DreamWorld {
  final String? frontDefault;
  final String? frontFemale;
  DreamWorld({
    required this.frontDefault,
    required this.frontFemale,
  });

  factory DreamWorld.fromJson(Map<String, dynamic> json) =>
      _$DreamWorldFromJson(json);
  Map<String, dynamic> toJson() => _$DreamWorldToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Home {
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  Home({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
  Map<String, dynamic> toJson() => _$HomeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class OfficialArtwork {
  final String frontDefault;
  OfficialArtwork({
    required this.frontDefault,
  });

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkFromJson(json);
  Map<String, dynamic> toJson() => _$OfficialArtworkToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Versions {
  @JsonKey(name: 'generation-i')
  final GenerationI generationI;
  @JsonKey(name: 'generation-ii')
  final GenerationII generationII;
  @JsonKey(name: 'generation-iii')
  final GenerationIII generationIII;
  @JsonKey(name: 'generation-iv')
  final GenerationIV generationIV;
  @JsonKey(name: 'generation-v')
  final GenerationV generationV;
  @JsonKey(name: 'generation-vi')
  final GenerationVI generationVi;
  @JsonKey(name: 'generation-vii')
  final GenerationVII generationVii;
  @JsonKey(name: 'generation-viii')
  final GenerationVIII generationViii;
  Versions({
    required this.generationI,
    required this.generationII,
    required this.generationIII,
    required this.generationIV,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  factory Versions.fromJson(Map<String, dynamic> json) =>
      _$VersionsFromJson(json);
  Map<String, dynamic> toJson() => _$VersionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenerationI {
  @JsonKey(name: 'red-blue')
  final RedBlue redBlue;
  final Yellow yellow;
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  factory GenerationI.fromJson(Map<String, dynamic> json) =>
      _$GenerationIFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationIToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class RedBlue {
  final String? backDefault;
  final String? backGray;
  final String? frontDefault;
  final String? frontGray;
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.frontDefault,
    required this.frontGray,
  });

  factory RedBlue.fromJson(Map<String, dynamic> json) =>
      _$RedBlueFromJson(json);
  Map<String, dynamic> toJson() => _$RedBlueToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Yellow {
  final String? backDefault;
  final String? backGray;
  final String? frontDefault;
  final String? frontGray;
  Yellow({
    required this.backDefault,
    required this.backGray,
    required this.frontDefault,
    required this.frontGray,
  });

  factory Yellow.fromJson(Map<String, dynamic> json) => _$YellowFromJson(json);
  Map<String, dynamic> toJson() => _$YellowToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenerationII {
  final Crystal crystal;
  final Gold gold;
  final Silver silver;
  GenerationII({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  factory GenerationII.fromJson(Map<String, dynamic> json) =>
      _$GenerationIIFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationIIToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Crystal {
  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  factory Crystal.fromJson(Map<String, dynamic> json) =>
      _$CrystalFromJson(json);
  Map<String, dynamic> toJson() => _$CrystalToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Gold {
  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  factory Gold.fromJson(Map<String, dynamic> json) => _$GoldFromJson(json);
  Map<String, dynamic> toJson() => _$GoldToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Silver {
  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;
  Silver({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  factory Silver.fromJson(Map<String, dynamic> json) => _$SilverFromJson(json);
  Map<String, dynamic> toJson() => _$SilverToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenerationIII {
  final Emerald emerald;
  @JsonKey(name: 'firered-leafgreen')
  final FireredLeafgreen fireredLeafgreen;

  @JsonKey(name: 'ruby-sapphire')
  final RubySapphire rubySapphire;
  GenerationIII({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  factory GenerationIII.fromJson(Map<String, dynamic> json) =>
      _$GenerationIIIFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationIIIToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Emerald {
  final String? frontDefault;
  final String? frontShiny;
  Emerald({
    required this.frontDefault,
    required this.frontShiny,
  });

  factory Emerald.fromJson(Map<String, dynamic> json) =>
      _$EmeraldFromJson(json);
  Map<String, dynamic> toJson() => _$EmeraldToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class FireredLeafgreen {
  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;
  FireredLeafgreen({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  factory FireredLeafgreen.fromJson(Map<String, dynamic> json) =>
      _$FireredLeafgreenFromJson(json);
  Map<String, dynamic> toJson() => _$FireredLeafgreenToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class RubySapphire {
  final String? backDefault;
  final String? backShiny;
  final String? frontDefault;
  final String? frontShiny;
  RubySapphire({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
  });

  factory RubySapphire.fromJson(Map<String, dynamic> json) =>
      _$RubySapphireFromJson(json);
  Map<String, dynamic> toJson() => _$RubySapphireToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenerationIV {
  @JsonKey(name: 'diamond-pearl')
  final DiamondPearl diamondPearl;
  @JsonKey(name: 'heartgold-soulsilver')
  final HeartgoldSoulsilver heartgoldSoulsilver;
  final Platinum platinum;
  GenerationIV({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  factory GenerationIV.fromJson(Map<String, dynamic> json) =>
      _$GenerationIVFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationIVToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class DiamondPearl {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  DiamondPearl({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory DiamondPearl.fromJson(Map<String, dynamic> json) =>
      _$DiamondPearlFromJson(json);
  Map<String, dynamic> toJson() => _$DiamondPearlToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class HeartgoldSoulsilver {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  HeartgoldSoulsilver({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory HeartgoldSoulsilver.fromJson(Map<String, dynamic> json) =>
      _$HeartgoldSoulsilverFromJson(json);
  Map<String, dynamic> toJson() => _$HeartgoldSoulsilverToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Platinum {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  Platinum({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Platinum.fromJson(Map<String, dynamic> json) =>
      _$PlatinumFromJson(json);
  Map<String, dynamic> toJson() => _$PlatinumToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenerationV {
  @JsonKey(name: 'black-white')
  final BlackWhite blackWhite;
  GenerationV({
    required this.blackWhite,
  });

  factory GenerationV.fromJson(Map<String, dynamic> json) =>
      _$GenerationVFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationVToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class BlackWhite {
  final Animated animated;
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  BlackWhite({
    required this.animated,
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory BlackWhite.fromJson(Map<String, dynamic> json) =>
      _$BlackWhiteFromJson(json);
  Map<String, dynamic> toJson() => _$BlackWhiteToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Animated {
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  Animated({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory Animated.fromJson(Map<String, dynamic> json) =>
      _$AnimatedFromJson(json);
  Map<String, dynamic> toJson() => _$AnimatedToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenerationVI {
  @JsonKey(name: 'omegaruby-alphasapphire')
  final OmegarubyAlphasapphire omegarubyAlphasapphire;
  @JsonKey(name: 'x-y')
  final XY xY;
  GenerationVI({
    required this.omegarubyAlphasapphire,
    required this.xY,
  });

  factory GenerationVI.fromJson(Map<String, dynamic> json) =>
      _$GenerationVIFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationVIToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class OmegarubyAlphasapphire {
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  OmegarubyAlphasapphire({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory OmegarubyAlphasapphire.fromJson(Map<String, dynamic> json) =>
      _$OmegarubyAlphasapphireFromJson(json);
  Map<String, dynamic> toJson() => _$OmegarubyAlphasapphireToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class XY {
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  XY({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory XY.fromJson(Map<String, dynamic> json) => _$XYFromJson(json);
  Map<String, dynamic> toJson() => _$XYToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenerationVII {
  final Icons icons;
  @JsonKey(name: 'ultra-sun-ultra-moon')
  final UltraSunUltraMoon ultraSunUltraMoon;
  GenerationVII({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  factory GenerationVII.fromJson(Map<String, dynamic> json) =>
      _$GenerationVIIFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationVIIToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Icons {
  final String? frontDefault;
  final String? frontFemale;
  Icons({
    required this.frontDefault,
    required this.frontFemale,
  });

  factory Icons.fromJson(Map<String, dynamic> json) => _$IconsFromJson(json);
  Map<String, dynamic> toJson() => _$IconsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class UltraSunUltraMoon {
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  UltraSunUltraMoon({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  factory UltraSunUltraMoon.fromJson(Map<String, dynamic> json) =>
      _$UltraSunUltraMoonFromJson(json);
  Map<String, dynamic> toJson() => _$UltraSunUltraMoonToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class GenerationVIII {
  final Icons icons;
  GenerationVIII({
    required this.icons,
  });

  factory GenerationVIII.fromJson(Map<String, dynamic> json) =>
      _$GenerationVIIIFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationVIIIToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Stats {
  final int? baseStat;
  final int? effort;
  final Stat stat;
  Stats({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });
  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Stat {
  final String name;
  final String url;
  Stat({
    required this.name,
    required this.url,
  });
  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
  Map<String, dynamic> toJson() => _$StatToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Types {
  final int? slot;
  final Type type;
  Types({
    required this.slot,
    required this.type,
  });
  factory Types.fromJson(Map<String, dynamic> json) => _$TypesFromJson(json);
  Map<String, dynamic> toJson() => _$TypesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Type {
  final String name;
  final String url;
  Type({
    required this.name,
    required this.url,
  });
  factory Type.fromJson(Map<String, dynamic> json) => _$TypeFromJson(json);
  Map<String, dynamic> toJson() => _$TypeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class PastType {
  final Generation generation;
  final List<Type> types;
  PastType({
    required this.generation,
    required this.types,
  });

  factory PastType.fromJson(Map<String, dynamic> json) =>
      _$PastTypeFromJson(json);
  Map<String, dynamic> toJson() => _$PastTypeToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Generation {
  final String name;
  final String url;
  Generation({
    required this.name,
    required this.url,
  });
  factory Generation.fromJson(Map<String, dynamic> json) =>
      _$GenerationFromJson(json);
  Map<String, dynamic> toJson() => _$GenerationToJson(this);
}
