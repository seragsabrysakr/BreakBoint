import 'package:bloc/bloc.dart';
import 'package:breakboint/data/models/charactermodel.dart';
import 'package:breakboint/data/repository/charactersrepo.dart';
import 'package:meta/meta.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  late List<CharacterModel> characters;
  //source of data 
  final CharactersRepository charactersRepository;
  //required in constructor
  CharactersCubit(this.charactersRepository) : super(CharactersInitial());
  List<CharacterModel> allCharacters() {

    charactersRepository.getAllCharacters().then((character) {
      //characters loaded
      emit(CharactersLoaded(charactersRepository));
    });
    characters = allCharacters();
    return characters;
  }
}
