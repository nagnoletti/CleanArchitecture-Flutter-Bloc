import 'package:bloc_template/ui/pages/home/widgets/switcher.dart';
import 'package:bloc_template/utils/localizables.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';

class LocaleSwitcher extends StatelessWidget {
  const LocaleSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsCubitState>(builder: (context, state) {
      final currentValue = state.when(tbd: () => LocalePreference.fallback, ready: (value) => value.locale);
      final items = LocalePreference.values.map((e) => SwitcherItemData(e, translate(Localizables.languageName(key: e.name)))).toList();
      return Switcher<LocalePreference>(
        items: items,
        currentValue: currentValue,
        onChange: (preference) {
          changeLocale(context, preference.name);
          context.read<SettingsCubit>().changeLocale(preference);
        },
      );
    });
  }
}
