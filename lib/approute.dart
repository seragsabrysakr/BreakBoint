import 'package:breakboint/business_logic/cubit/characters_cubit.dart';
import 'package:breakboint/constants/strings.dart';
import 'package:breakboint/data/api/characterapi.dart';
import 'package:breakboint/data/repository/charactersrepo.dart';
import 'package:breakboint/presentation/screens/charactersdetails.dart';
import 'package:breakboint/presentation/screens/charactersscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharactersRepository charactersRepository;
  late CharactersCubit charactersCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharacterApi());
    charactersCubit = CharactersCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case characterscreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (BuildContext context) =>
                      CharactersCubit(charactersRepository),
                  child: const CharactersScreen(),
                ));
      case characterdetails:
        return MaterialPageRoute(
          builder: (_) => const CharactersDetails(),
        );
    }
    return null;
  }
}
