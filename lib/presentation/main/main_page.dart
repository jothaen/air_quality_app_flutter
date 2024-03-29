import 'package:air_quality_app/common/app_assets.dart';
import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/presentation/common/app_colors.dart';
import 'package:air_quality_app/presentation/favorites/favorites_page.dart';
import 'package:air_quality_app/presentation/search/search_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const _indexSearch = 0;

  int _currentIndex = 0;

  void _onBottomTabChange(int newIndex) {
    setState(() {
      _currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _BottomBar(_currentIndex, _onBottomTabChange),
      backgroundColor: AppColors.lightBlue,
      appBar: AppBar(
        backgroundColor: AppColors.lightBlue,
        surfaceTintColor: Colors.transparent,
        title: Text(context.i10n.airQuality),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              AppAssets.imageCity,
              height: 450,
              fit: BoxFit.fitHeight,
            ),
          ),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            child: _currentIndex == _indexSearch ? const SearchPage() : const FavoritesPage(),
          ),
        ],
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar(this.currentIndex, this.onTabChange);
  final int currentIndex;
  final void Function(int) onTabChange;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabChange,
      items: [
        BottomNavigationBarItem(icon: const Icon(Icons.search), label: context.i10n.search),
        BottomNavigationBarItem(icon: const Icon(Icons.favorite), label: context.i10n.favorites),
      ],
    );
  }
}
