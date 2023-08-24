import '/src/feature/wardrobe/model/cloth.dart';
import 'wardrobe_data_source.dart';

/// Wardrobe repository which handles data operations.
abstract class WardrobeRepository {
  /// Retrieves all clothes.
  Future<List<Cloth>> getAllClothes();
}

/// Wardrobe repository implementation.
class WardrobeRepositoryImpl implements WardrobeRepository {
  WardrobeRepositoryImpl(this._dataSource);

  /// Wardrobe data source which provides access to clothes data.
  final WardrobeDataSource _dataSource;

  @override
  Future<List<Cloth>> getAllClothes() async {
    final history = await _dataSource.getAllClothes();
    return history
        .map(
          (dto) => Cloth(
            id: dto.id,
            type: ClothType.fromString(dto.clothType),
            name: dto.name,
            description: dto.description,
            color: dto.color,
            price: dto.price,
          ),
        )
        .toList();
  }
}
