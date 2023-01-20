import 'package:bloc_template/ui/pages/home/widgets/brightness_switcher.dart';
import 'package:bloc_template/ui/pages/home/widgets/list_header.dart';
import 'package:bloc_template/ui/pages/home/widgets/locale_switcher.dart';
import 'package:bloc_template/utils/buildcontext_extensions.dart';
import 'package:bloc_template/utils/localizables.dart';
import 'package:bloc_template/utils/routing.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Template'),
        centerTitle: true,
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().increment();
            },
            tooltip: 'Increment',
            heroTag: 'increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().decrement();
            },
            tooltip: 'Decrement',
            heroTag: 'decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, counterState) {
              return Center(
                child: RichText(
                  text: TextSpan(
                    text: translate(Localizables.counterValue),
                    children: [
                      TextSpan(
                        text: ' ${counterState.counter}',
                        style: TextStyle(
                          fontSize: 24,
                          color: counterState.counter == 0
                              ? Colors.orange
                              : counterState.counter < 0
                                  ? Colors.red
                                  : Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                    style: context.theme.textTheme.headline3,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
          const SizedBox(height: 24),

          /// Locale
          ListHeader(translate(Localizables.language)),
          const LocaleSwitcher(),

          /// Brightness
          Builder(builder: (context) => ListHeader(translate(Localizables.theme))),
          const BrightnessSwitcher(),

          /// Navigate
          ListHeader(translate(Localizables.navigate)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MaterialButton(
              onPressed: () => GoRouter.of(context).push(AppRoutes.anime),
              color: Colors.blue,
              child: Text(
                translate(Localizables.anime),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
