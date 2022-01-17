import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:handy_and_d/core/constants/margin.dart' as margin;
import 'package:handy_and_d/viewmodels/character_list_viewmodel.dart';
import 'package:handy_and_d/widgets/character_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    Provider.of<CharacterListViewModel>(context, listen: false)
        .getCharacterHeaders();
  }

  @override
  Widget build(BuildContext context) {
    var listenViewModel = Provider.of<CharacterListViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Handy&D"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: margin.MARGIN_M),
        child: ListView.separated(
          padding:
              const EdgeInsets.fromLTRB(0, margin.MARGIN_M, 0, margin.MARGIN_L),
          itemBuilder: (context, index) {
            return CharacterCard(
              characterViewModel: listenViewModel.characters[index],
            );
          },
          itemCount: listenViewModel.characters.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: margin.MARGIN_M);
          },
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
