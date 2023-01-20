import 'package:flutter/material.dart';

class SwitcherItemData<T> {
  final T value;
  final String itemText;

  SwitcherItemData(this.value, this.itemText);
}

class Switcher<T> extends StatelessWidget {
  final T currentValue;
  final List<SwitcherItemData<T>> items;
  final void Function(T) onChange;

  const Switcher({required this.currentValue, required this.items, required this.onChange, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        items.length,
        (index) => MaterialButton(
          onPressed: () => items[index].value == currentValue ? null : onChange(items[index].value),
          color: items[index].value == currentValue ? Colors.grey : Colors.blue,
          child: Text(
            items[index].itemText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
