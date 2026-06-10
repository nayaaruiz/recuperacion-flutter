import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_recuperacion/core/services/character_list_service.dart';
import 'package:flutter_recuperacion/features/bloc/character_list/character_list_bloc.dart';

class CharacterListPage extends StatefulWidget {
  const CharacterListPage({super.key});

  @override
  State<CharacterListPage> createState() => _CharacterListPageState();
}

class _CharacterListPageState extends State<CharacterListPage> {

  late CharacterListBloc characterListBloc;

  @override
  void initState() {
    super.initState();
    characterListBloc = CharacterListBloc(CharacterListService())
      ..add(CharacterListFetchAll());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CharacterListBloc, CharacterListState>(
        bloc: characterListBloc,
        builder: (context, state) {
          if (state is CharacterListLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CharacterListSuccess) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.characters.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(state.characters[index].name),);
                }
              ),
            );
          } else if (state is CharacterListError) {
            return Center(child: Text(state.message),);
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

}