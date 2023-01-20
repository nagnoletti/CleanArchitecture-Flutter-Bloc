import 'package:bloc_template/utils/localizables.dart';
import 'package:bloc_template/utils/routing.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:go_router/go_router.dart';

class AnimePage extends StatelessWidget {
  const AnimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final changeThemeOnAnimeListUpdate = ChangeThemeOnAnimeListUpdateUC(context.read(), context.read());

    return MultiBlocListener(
      listeners: [
        BlocListener<AnimeListCubit, AnimeListCubitState>(
          listener: (context, state) {
            state.whenOrNull(
              error: () => showDialog(
                context: context,
                builder: (_) => const Dialog(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Errore nella chiamata API'),
                  ),
                ),
              ),
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(translate(Localizables.anime)),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<AnimeListCubit, AnimeListCubitState>(
                builder: (context, AnimeListCubitState state) => state.maybeWhen(
                  orElse: () => Container(),
                  loading: () => const CircularProgressIndicator(),
                  success: (animes) => Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: animes.length,
                      itemBuilder: (context, index) => ListTile(
                        title: Text(
                          animes[index].title ?? 'No en title',
                        ),
                        onTap: () {
                          context.push(AppRoutes.animeDetail(animes[index].id), extra: animes[index]);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              MaterialButton(
                child: const Text('Get anime list'),
                onPressed: () => context.read<AnimeListCubit>().getAnimes(),
              ),
              MaterialButton(
                child: const Text('Get anime list w/forced error'),
                onPressed: () => context.read<AnimeListCubit>().getAnimesWithErrors(),
              ),
              MaterialButton(
                child: const Text('Change theme on anime list update'),
                onPressed: () => changeThemeOnAnimeListUpdate(BrightnessPreference.dark),
              )
            ],
          ),
        ),
      ),
    );
  }
}
