import 'package:bloc_template/config/dependencies/dependencies.dart';
import 'package:bloc_template/ui/pages/anime/anime_page.dart';
import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimePageConnector extends StatelessWidget {
  final AnimePage _page;

  const AnimePageConnector(this._page, {super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<AnimeListCubit>(
        create: (_) => AnimeListCubit(readDR()),
        child: _page,
      );
}
