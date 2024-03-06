import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_providers.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {

    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOption;


    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectedMenuOption = i,
      currentIndex: currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

              icon: Icon(Icons.map),
          label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.streetview),
          label: 'Directions'),
        ]);
  }
}
