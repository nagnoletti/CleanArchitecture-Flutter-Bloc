import 'package:bloc_template/ui/pages/home/widgets/switcher.dart';
import 'package:bloc_template/utils/localizables.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_translate/flutter_translate.dart';

class BrightnessSwitcher extends StatelessWidget {
  const BrightnessSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsCubitState>(builder: (context, state) {
      final currentValue = state.when(tbd: () => null, ready: (value) => value.brightness);
      final items = BrightnessPreference.values.map((e) => SwitcherItemData<BrightnessPreference?>(e, translate(Localizables.brightnessName(e.name)))).toList()
        ..insert(0, SwitcherItemData<BrightnessPreference?>(null, translate(Localizables.system)));
      return Switcher<BrightnessPreference?>(
        items: items,
        currentValue: currentValue,
        onChange: (preference) => context.read<SettingsCubit>().changeBrightness(preference),
      );
    });
  }
}
