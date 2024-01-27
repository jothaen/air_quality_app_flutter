import 'package:hive/hive.dart';

class FavoritesRepository {
  FavoritesRepository(this._hive);

  static const _boxName = 'favorites';
  static const _keyFavorites = 'keyFavorites';

  final HiveInterface _hive;

  Future<List<int>> getAllFavoritesIds() async {
    final box = await _openBox();
    return box.get(_keyFavorites) ?? [];
  }

  Future<void> addToFavorites(int id) async {
    final allFavorites = await getAllFavoritesIds();
    if (!allFavorites.contains(id)) {
      allFavorites.add(id);
      final box = await _openBox();
      await box.put(_keyFavorites, allFavorites);
    }
  }

  Future<void> removeFromFavorites(int id) async {
    final allFavorites = await getAllFavoritesIds();
    if (allFavorites.contains(id)) {
      allFavorites.remove(id);
      final box = await _openBox();
      await box.put(_keyFavorites, allFavorites);
    }
  }

  Future<Box<List<int>>> _openBox() => _hive.openBox<List<int>>(_boxName);
}
