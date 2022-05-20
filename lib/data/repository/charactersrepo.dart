import 'package:breakboint/data/api/characterapi.dart';
import 'package:breakboint/data/models/charactermodel.dart';

class CharactersRepository {
  final CharacterApi charactersapi;

  CharactersRepository(this.charactersapi);
  Future<List<CharacterModel>> getAllCharacters() async {
    final characters = await charactersapi.getAllCharacters();
    return characters.map((character) =>CharacterModel.fromJson(character)).toList();
  }
}
