import 'package:domain/domain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageConnector extends StatelessWidget {
  final Widget _page;

  const HomePageConnector(this._page, {super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<CounterBloc>(
        create: (_) => CounterBloc(),
        child: _page,
      );
}
