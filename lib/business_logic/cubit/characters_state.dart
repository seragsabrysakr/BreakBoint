part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {}
// initial state
class CharactersInitial extends CharactersState {}
//new state loaded
class CharactersLoaded extends CharactersState {
  final CharactersRepository charactersRepository;

  CharactersLoaded(this.charactersRepository);
}
